@if ($type == 'collapsed')
    <div id="wowy-section-faqs" class="wowy-section nt_section type_faq js_faq_ad mt__50 mb__50 cb">
        <div class="wowy-tabs sp-tabs">
            @foreach($categories as $category)
                @foreach($category->faqs as $faq)
                <div class="panel entry-content sp-tab des_mb_2 des_style_2 dn" id="tab_faqs-0">
                    <div class="js_ck_view"></div>
                    <div class="heading bgbl dn">
                        <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_faqs-0"><span class="txt_h_tab">{{ $faq->question }}</span><span class="nav_link_icon ml__5"></span></a>
                    </div>
                    <div class="sp-tab-content">
                        <p>{!! clean($faq->answer) !!}</p>
                    </div>
                </div>
                @endforeach
            @endforeach
        </div>
    </div>
@else
    <div class="faqs mt__40 mb__40 cb">
        @foreach($categories as $index => $category)
            <h3 class="mb__20">{{ $index + 1 }}. {{ $category->name }}</h3>
            @foreach($category->faqs as $childIndex => $faq)
                <h4 class="mt-0 mb-2 fs__16">{{ $index + 1 }}.{{ $childIndex + 1 }} {{ $faq->question }}</h4>
                <p>
                    {!! clean($faq->answer) !!}
                </p>
            @endforeach
        @endforeach
    </div>
@endif
