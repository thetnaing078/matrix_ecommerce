<?php

namespace Theme\Wowy\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Ecommerce\Repositories\Interfaces\FlashSaleInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductVariationInterface;
use Botble\Ecommerce\Repositories\Interfaces\ReviewInterface;
use Botble\Theme\Http\Controllers\PublicController;
use Cart;
use DB;
use EcommerceHelper;
use Illuminate\Http\Request;
use Theme;
use Theme\Wowy\Http\Resources\BrandResource;
use Theme\Wowy\Http\Resources\PostResource;
use Theme\Wowy\Http\Resources\ProductCategoryResource;
use Theme\Wowy\Http\Resources\ReviewResource;

class WowyController extends PublicController
{
    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxCart(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        return $response->setData([
            'count' => Cart::instance('cart')->count(),
            'html'  => Theme::partial('cart-panel'),
        ]);
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getFeaturedProducts(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $data = [];

        $withCount = [];
        if (EcommerceHelper::isReviewEnabled()) {
            $withCount = [
                'reviews',
                'reviews as reviews_avg' => function ($query) {
                    $query->select(DB::raw('avg(star)'));
                },
            ];
        }

        $products = get_featured_products([
            'take'      => (int)$request->input('limit', 8),
            'with'      => [
                'slugable',
                'variations',
                'productLabels',
                'variationAttributeSwatchesForProductList',
                'promotions',
                'latestFlashSales',
            ],
            'withCount' => $withCount,
        ]);

        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item-small',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param PostInterface $postRepository
     * @return BaseHttpResponse|\Illuminate\Http\RedirectResponse|\Illuminate\Http\Resources\Json\JsonResource
     */
    public function ajaxGetPosts(Request $request, BaseHttpResponse $response, PostInterface $postRepository)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $posts = $postRepository->getFeatured(4, ['slugable']);

        return $response
            ->setData(PostResource::collection($posts))
            ->toApiResponse();
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getFeaturedProductCategories(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $categories = get_featured_product_categories();

        return $response->setData(ProductCategoryResource::collection($categories));
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetFeaturedBrands(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $brands = get_featured_brands();

        return $response->setData(BrandResource::collection($brands));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param ReviewInterface $reviewRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetProductReviews(
        $id,
        Request $request,
        BaseHttpResponse $response,
        ReviewInterface $reviewRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $reviews = $reviewRepository->advancedGet([
            'condition' => [
                'status'     => BaseStatusEnum::PUBLISHED,
                'product_id' => $id,
            ],
            'order_by'  => ['created_at' => 'desc'],
            'paginate'  => [
                'per_page'      => (int)$request->input('per_page', 10),
                'current_paged' => (int)$request->input('page', 1),
            ],
        ]);

        return $response->setData(ReviewResource::collection($reviews))->toApiResponse();
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param ProductInterface $productRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetRelatedProducts(
        $id,
        Request $request,
        BaseHttpResponse $response,
        ProductInterface $productRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $product = $productRepository->findOrFail($id);

        $products = get_related_products($product, (int)$request->input('limit'));

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param FlashSaleInterface $flashSaleRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetFlashSales(
        Request $request,
        BaseHttpResponse $response,
        FlashSaleInterface $flashSaleRepository
    ) {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        $flashSales = $flashSaleRepository->getModel()
            ->notExpired()
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->with([
                'products' => function ($query) use ($request) {
                    $withCount = [];
                    if (EcommerceHelper::isReviewEnabled()) {
                        $withCount = [
                            'reviews',
                            'reviews as reviews_avg' => function ($query) use ($request) {
                                $query->select(DB::raw('avg(star)'));
                            },
                        ];
                    }

                    return $query
                        ->where('status', BaseStatusEnum::PUBLISHED)
                        ->limit((int) $request->input('limit', 2))
                        ->withCount($withCount);
                },
            ])
            ->get();

        if (!$flashSales->count()) {
            return $response->setData([]);
        }

        $data = [];
        foreach ($flashSales as $flashSale) {
            foreach ($flashSale->products as $product) {
                $data[] = Theme::partial('flash-sale-product', compact('product', 'flashSale'));
            }
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetProducts(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $withCount = [];
        if (EcommerceHelper::isReviewEnabled()) {
            $withCount = [
                'reviews',
                'reviews as reviews_avg' => function ($query) {
                    $query->select(DB::raw('avg(star)'));
                },
            ];
        }

        $products = get_products_by_collections([
            'collections' => [
                'by'       => 'id',
                'value_in' => [$request->input('collection_id')],
            ],
            'take'        => 8,
            'with'        => [
                'slugable',
                'variations',
                'productCollections',
                'variationAttributeSwatchesForProductList',
                'promotions',
                'latestFlashSales',
            ],
            'withCount'   => $withCount,
        ]);

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetProductsByCategoryId(
        Request $request,
        BaseHttpResponse $response,
        ProductInterface $productRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $categoryId = $request->input('category_id');

        if (!$categoryId) {
            return $response;
        }

        $withCount = [];
        if (EcommerceHelper::isReviewEnabled()) {
            $withCount = [
                'reviews',
                'reviews as reviews_avg' => function ($query) {
                    $query->select(DB::raw('avg(star)'));
                },
            ];
        }

        $products = $productRepository->getProductsByCategories([
            'categories' => [
                'by'       => 'id',
                'value_in' => [$categoryId],
            ],
            'take'       => 8,
            'withCount'  => $withCount,
        ]);

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item', compact('product'))
                ->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param int $id
     * @param BaseHttpResponse $response
     * @return mixed
     */
    public function getQuickView(Request $request, $id, BaseHttpResponse $response)
    {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        $withCount = [];
        if (EcommerceHelper::isReviewEnabled()) {
            $withCount = [
                'reviews',
                'reviews as reviews_avg' => function ($query) {
                    $query->select(DB::raw('avg(star)'));
                },
            ];
        }

        $product = get_products([
            'condition' => [
                'ec_products.id'     => $id,
                'ec_products.status' => BaseStatusEnum::PUBLISHED,
            ],
            'take'      => 1,
            'with'      => [
                'defaultProductAttributes',
                'slugable',
                'tags',
                'tags.slugable',
            ],
            'withCount' => $withCount,
        ]);

        if (!$product) {
            return $response->setNextUrl(route('public.index'));
        }

        $productImages = $product->images;
        if ($product->is_variation) {
            $product = $product->original_product;
            $selectedAttrs = app(ProductVariationInterface::class)->getAttributeIdsOfChildrenProduct($product->id);
            if (count($productImages) == 0) {
                $productImages = $product->images;
            }
        } else {
            $selectedAttrs = $product->defaultVariation->productAttributes;
        }

        return $response->setData(Theme::partial('quick-view', compact('product', 'selectedAttrs', 'productImages')));
    }
}
