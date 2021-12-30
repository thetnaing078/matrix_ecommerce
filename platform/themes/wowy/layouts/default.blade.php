{!! Theme::partial('header') !!}

<main class="main">
    @if (Theme::get('hasBreadcrumb', true))
        {!! Theme::partial('breadcrumb') !!}
    @endif

    <div class="container">
        {!! Theme::content() !!}
    </div>
</main>

{!! Theme::partial('footer') !!}
