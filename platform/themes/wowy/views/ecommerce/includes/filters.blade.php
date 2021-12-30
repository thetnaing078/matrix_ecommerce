<div class="shop-product-fillter-header">
    <div class="row">
        {!! render_product_swatches_filter([
            'view' => Theme::getThemeNamespace() . '::views.ecommerce.attributes.attributes-filter-renderer'
        ]) !!}

        <div class="col-lg-3 col-md-4 mb-lg-0 mb-md-5 mb-sm-5 widget-filter-item" data-type="price">
            <h5 class="mb-20 widget__title" data-title="{{ __('Price') }}">{{ __('By :name', ['name' => __('Price')]) }}</h5>
            <div class="price-filter range">
                <div class="price-filter-inner">
                    <div class="slider-range"></div>
                    <input type="hidden"
                        class="min_price min-range"
                        name="min_price"
                        value="{{ request()->input('min_price', 0) }}"
                        data-min="0"
                        data-label="{{ __('Min price') }}"/>
                    <input type="hidden"
                        class="min_price max-range"
                        name="max_price"
                        value="{{ request()->input('max_price', theme_option('max_filter_price', 100000)) }}"
                        data-max="{{ theme_option('max_filter_price', 100000) }}"
                        data-label="{{ __('Max price') }}"/>
                    <div class="price_slider_amount">
                        <div class="label-input">
                            <span class="d-inline-block">{{ __('Range:') }} </span>
                            <span class="from d-inline-block"></span>
                            <span class="to d-inline-block"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        @php
            $brands = get_all_brands(['status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED], ['slugable'], ['products']);
        @endphp
        @if (count($brands) > 0)
            <div class="col-lg-3 col-md-4 mb-lg-0 mb-md-5 mb-sm-5 widget-filter-item">
                <h5 class="mb-20 widget__title" data-title="{{ __('Brand') }}">{{ __('By :name', ['name' => __('Brands')]) }}</h5>
                <div class="custome-checkbox">
                    @foreach($brands as $brand)
                        <input class="form-check-input"
                            name="brands[]"
                            type="checkbox"
                            id="brand-filter-{{ $brand->id }}"
                            value="{{ $brand->id }}"
                            @if (in_array($brand->id, request()->input('brands', []))) checked @endif>
                        <label class="form-check-label" for="brand-filter-{{ $brand->id }}"><span class="d-inline-block">{{ $brand->name }}</span> <span class="d-inline-block">({{ $brand->products_count }})</span> </label>
                        <br>
                    @endforeach
                </div>
            </div>
        @endif

        <div class="col-12 widget">
            <a class="clear_filter dib clear_all_filter" href="{{ route('public.products') }}">{{ __('Clear All Filter') }}</a>

            <button type="submit" class="btn btn-sm btn-default"><i class="fa fa-filter mr-5 ml-0"></i> {{ __('Filter') }}</button>
        </div>

    </div>
</div>
