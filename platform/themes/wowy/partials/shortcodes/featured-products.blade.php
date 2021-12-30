<section class="section-padding-60" id="featured-products">
    <div class="container wow fadeIn animated">
        @if (clean($title))
            <h3 class="section-title style-1 mb-30">{!! clean($title) !!}</h3>
        @endif
        <featured-products-component url="{{ route('public.ajax.featured-products', ['limit' => $limit]) }}"></featured-products-component>
    </div>
</section>
