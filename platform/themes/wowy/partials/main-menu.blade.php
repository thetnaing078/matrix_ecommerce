<ul {!! $options !!}>
    @foreach ($menu_nodes as $key => $row)
        <li class="{{ $row->css_class }}">
            <a href="{{ url($row->url) }}" @if ($row->active) class="active" @endif target="{{ $row->target }}">
                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}
                @if ($row->has_child)
                    <i class="fa fa-chevron-down"></i>
                @endif
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'sub-menu'],
                        'menu_nodes' => $row->child,
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
