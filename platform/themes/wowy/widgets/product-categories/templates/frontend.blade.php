<div class="sidebar-widget widget_categories mb-30 p-30 bg-grey border-radius-10">
    <div class="widget-header position-relative mb-20 pb-10">
        <h5 class="widget-title mb-10">{{ $config['name'] }}</h5>
        <div class="bt-1 border-color-1"></div>
    </div>
    <div>
        <ul class="categor-list">
            @foreach(get_featured_product_categories(['limit' => $config['number_display'], 'withCount' => ['products']]) as $category)
                <li class="cat-item text-muted"><a href="{{ $category->url }}">{{ $category->name }}</a>({{ $category->products_count }})</li>
            @endforeach
        </ul>
    </div>
</div>
