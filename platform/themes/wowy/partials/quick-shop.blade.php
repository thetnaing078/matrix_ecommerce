<div class="wrap_qs_pr buy_qs_false wowy-quick-shop">
    <div class="qs_imgs_i row al_center mb__30">
        <div class="col-auto cl_pr_img">
            <div class="pr oh qs_imgs_wrap">
                <div class="row equal_nt qs_imgs nt_slider nt_carousel_qs p-thumb_qs" data-flickity='{"fade":false,"cellSelector":".qs_img_i","cellAlign":"center","wrapAround":true,"autoPlay":false,"prevNextButtons":false,"adaptiveHeight":true,"imagesLoaded":false,"lazyload":0,"dragThreshold":0,"pageDots":false,"rightToLeft":false}'>
                    @foreach ($productImages as $img)
                        <div class="col-12 js-sl-item qs_img_i nt_img_ratio lazyload nt_bg_lz" data-bgset="{{ RvMedia::getImageUrl($img) }}"></div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col cl_pr_title tc">
            <h3 class="product-title pr fs__16 mg__0 fwm"><a class="cd chp" href="{{ $product->url }}">{{ $product->name }}</a>
            </h3>
            <div id="price_qs">
                            <span class="price">
                                @if ($product->front_sale_price !== $product->price)
                                    <del>{{ format_price($product->price_with_taxes) }}</del>
                                @endif
                                <ins>{{ format_price($product->front_sale_price_with_taxes) }}</ins>
                            </span>
                @if ($product->front_sale_price !== $product->price)
                    <span class="qs_label onsale cw"><span>{{ get_sale_percentage($product->price, $product->front_sale_price) }}</span></span>
                @endif
            </div>
            @if (EcommerceHelper::isReviewEnabled())
                @php $countRating = get_count_reviewed_of_product($product->id); $avgRating = get_average_star_of_product($product->id); @endphp
                @if ($countRating > 0)
                    <a href="{{ $product->url }}" class="rating_sp_kl dib">
                        <div class="wowy-rating-result">
                            <div class="rating_wrap">
                                <div class="rating">
                                    <div class="product_rate" style="width: {{ get_average_star_of_product($product->id) * 20 }}%"></div>
                                </div>
                            </div>
                            <span class="wowy-rating-result__number">({{ $countRating }} {{ __('reviews') }})</span>
                        </div>
                    </a>
                @endif
            @endif
        </div>
    </div>
    <div class="qs_info_i tc">
        <div class="qs_swatch">
            <div id="callBackVariant_qv" class="nt_pink nt1_ nt2_">
                <div id="cart-form_qv" class="nt_cart_form variations_form variations_form_qv">
                    <div class="variations mb__40 style__circle size_medium style_color des_color_1">

                        @if ($product->variations()->count() > 0)
                            <div class="pr_switch_wrap">
                                {!! render_product_swatches($product, [
                                    'selected' => $selectedAttrs,
                                    'view'     => Theme::getThemeNamespace() . '::views.ecommerce.attributes.swatches-renderer'
                                ]) !!}
                            </div>
                            <div class="number-items-available" style="display: none; margin-bottom: 10px;"></div>
                        @endif

                    </div>
                    <div class="variations_button in_flex column w__100 buy_qv_false">
                        <div class="flex wrap">
                            <form class="add-to-cart-form" method="POST" action="{{ route('public.cart.add-to-cart') }}">
                                @csrf
                                <input type="hidden" name="id" class="hidden-product-id" value="{{ ($product->is_variation || !$product->defaultVariation->product_id) ? $product->id : $product->defaultVariation->product_id }}"/>
                                @if (EcommerceHelper::isCartEnabled())
                                    <div class="quantity pr mr__10 order-1 qty__true" id="sp_qty_qv">
                                        <input type="number" class="input-text qty text tc qty_pr_js qty_cart_js" value="1" name="qty" inputmode="numeric">
                                        <div class="qty tc fs__14">
                                            <button type="button" class="plus db cb pa pd__0 pr__15 tr r__0">
                                                <i class="facl facl-plus"></i>
                                            </button>
                                            <button type="button" class="minus db cb pa pd__0 pl__15 tl l__0">
                                                <i class="facl facl-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                @endif
                                <div class="nt_add_w ts__03 pa order-3">
                                    <a href="#" class="cb chp ttip_nt tooltip_top_left js-add-to-wishlist-button" data-url="{{ route('public.wishlist.add', $product->id) }}"><span class="tt_txt">{{ __('Add to Wishlist') }}</span><i class="facl facl-heart-o"></i></a>
                                </div>
                                @if (EcommerceHelper::isCartEnabled())
                                    <button type="submit" data-time='6000' data-ani='shake' class="single_add_to_cart_button button truncate js_frm_cart w__100 mt__20 order-4">
                                        <span class="txt_add ">{{ __('Add to cart') }}</span>
                                    </button>
                                @endif
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="{{ $product->url }}" class="btn fwsb detail_link dib mt__15">{{ __('View full details') }}<i class="facl facl-right"></i></a>
    </div>
</div>
