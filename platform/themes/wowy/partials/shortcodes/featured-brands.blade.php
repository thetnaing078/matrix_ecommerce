<section class="section-padding-60" id="featured-brands">
    <div class="container">
        <h3 class="section-title style-1 mb-30 wow fadeIn animated">{!! clean($title) !!}</h3>
        <featured-brands-component url="{{ route('public.ajax.featured-brands') }}"></featured-brands-component>
    </div>
</section>
