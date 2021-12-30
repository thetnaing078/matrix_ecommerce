{!! Theme::partial('header') !!}

<main class="main">
    @if (Theme::get('hasBreadcrumb', true))
        {!! Theme::partial('breadcrumb') !!}
    @endif

    {!! Theme::content() !!}
</main>

{!! Theme::partial('footer') !!}
