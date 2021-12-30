<section class="mt-60 mb-60">
    <div class="container">
        <div class="row">
            <div class="col-12">
                @if (auth('customer')->check())
                    @if (count($wishlist) > 0 && $wishlist->count() > 0)
                        <div class="table-responsive">
                            <table class="table shopping-summery text-center">
                                <thead>
                                    <tr class="main-heading">
                                        <th scope="col" colspan="2">{{ __('Product') }}</th>
                                        <th scope="col">{{ __('Price') }}</th>
                                        <th scope="col">{{ __('Stock Status') }}</th>
                                        <th scope="col">{{ __('Action') }}</th>
                                        <th scope="col">{{ __('Remove') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($wishlist as $item)
                                        @php $item = $item->product; @endphp
                                        <tr>
                                            <td class="image product-thumbnail">
                                                <img alt="{{ $item->name }}" src="{{ RvMedia::getImageUrl($item->image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                            </td>
                                            <td class="product-des product-name">
                                                <p class="product-name"><a href="{{ $item->url }}">{{ $item->name }}</a></p>
                                            </td>

                                            <td class="price" data-title="{{ __('Price') }}">
                                                <span>{{ format_price($item->front_sale_price_with_taxes) }}</span>
                                                @if ($item->front_sale_price != $item->price)
                                                    <small><del>{{ format_price($item->price_with_taxes) }}</del></small>
                                                @endif
                                            </td>

                                            <td class="text-center" data-title="{{ __('Stock Status') }}">
                                                <span class="color3 font-weight-bold">
                                                    {!! clean($item->stock_status_html) !!}
                                                </span>
                                            </td>

                                            <td class="text-right" data-title="{{ __('Action') }}">
                                                <a href="#" class="btn btn-rounded btn-sm add-to-cart-button" data-id="{{ $item->id }}" data-url="{{ route('public.cart.add-to-cart') }}"><i class="far fa-shopping-bag mr-5"></i>{{ __('Add to cart') }}</a>
                                            </td>

                                            <td class="action" data-title="{{ __('Remove') }}">
                                                <a href="#" data-url="{{ route('public.wishlist.remove', $item->id) }}"><i class="fa fa-trash-alt"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    @else
                        <p>{{ __('No item in wishlist!') }}</p>
                    @endif
                @else
                    @if (Cart::instance('wishlist')->count())
                        <div class="table-responsive">
                            <table class="table shopping-summery text-center">
                                <thead>
                                    <tr class="main-heading">
                                        <th scope="col" colspan="2">{{ __('Product') }}</th>
                                        <th scope="col">{{ __('Price') }}</th>
                                        <th scope="col">{{ __('Stock Status') }}</th>
                                        <th scope="col">{{ __('Action') }}</th>
                                        <th scope="col">{{ __('Remove') }}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach(Cart::instance('wishlist')->content() as $cartItem)
                                        @php
                                            $item = app(\Botble\Ecommerce\Repositories\Interfaces\ProductInterface::class)->findById($cartItem->id);
                                        @endphp
                                        <tr>
                                            <td class="image product-thumbnail">
                                                <img alt="{{ $item->name }}" src="{{ RvMedia::getImageUrl($item->image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                            </td>
                                            <td class="product-des product-name">
                                                <p class="product-name"><a href="{{ $item->url }}">{{ $item->name }}</a></p>
                                            </td>

                                            <td class="price" data-title="{{ __('Price') }}">
                                                <span>{{ format_price($item->front_sale_price_with_taxes) }}</span>
                                                @if ($item->front_sale_price != $item->price)
                                                    <small><del>{{ format_price($item->price_with_taxes) }}</del></small>
                                                @endif
                                            </td>

                                            <td class="text-center" data-title="{{ __('Stock Status') }}">
                                                <span class="color3 font-weight-bold">
                                                    {!! clean($item->stock_status_html) !!}
                                                </span>
                                            </td>

                                            <td class="text-right" data-title="{{ __('Action') }}">
                                                <a href="#" class="btn btn-rounded btn-sm add-to-cart-button" data-id="{{ $item->id }}" data-url="{{ route('public.cart.add-to-cart') }}"><i class="far fa-shopping-bag mr-5"></i>{{ __('Add to cart') }}</a>
                                            </td>

                                            <td class="action" data-title="{{ __('Remove') }}">
                                                <a href="#" class="js-remove-from-wishlist-button" data-url="{{ route('public.wishlist.remove', $item->id) }}"><i class="fa fa-trash-alt"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    @else
                        <p>{{ __('No item in wishlist!') }}</p>
                    @endif
                @endif
            </div>
        </div>
    </div>
</section>
