<section class="product-tabs pt-40 pb-30 wow fadeIn animated" id="product-collections">
    <product-collections-component title="{!! clean($title) !!}" :product_collections="{{ json_encode($productCollections) }}" url="{{ route('public.ajax.products') }}"></product-collections-component>
</section>
