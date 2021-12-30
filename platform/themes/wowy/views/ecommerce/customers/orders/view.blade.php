@extends(Theme::getThemeNamespace() . '::views.ecommerce.customers.master')
@section('content')
<div class="card">
    <div class="card-header">
        <h5 class="mb-0">{{ __('Order detail :order', ['order' => get_order_code($order->id)]) }}</h5>
    </div>
    <div class="card-body">
        <div class="customer-order-detail">
            <div class="row">
                <div class="col-auto me-auto">
                    <div class="order-slogan">
                        <img width="100" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}"
                            alt="{{ theme_option('site_title') }}">
                        <br/>
                        {{ setting('contact_address') }}
                    </div>
                </div>
                <div class="col-auto">
                    <div class="order-meta">
                        <span class="d-inline-block">{{ __('Time') }}:</span>
                        <strong class="order-detail-value">{{ $order->created_at->format('h:m d/m/Y') }}</strong>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 border-top pt-2">
                    <h4>{{ __('Order information') }}</h4>
                    <div>
                        <div>
                            <span class="d-inline-block">{{ __('Order status') }}:</span>
                            <strong class="order-detail-value">{{ $order->status->label() }}</strong>
                        </div>
                        <div>
                            <span class="d-inline-block">{{ __('Payment method') }}:</span>
                            <strong class="order-detail-value"> {{ $order->payment->payment_channel->label() }} </strong>
                        </div>
                        <div>
                            <span class="d-inline-block">{{ __('Payment status') }}:</span>
                            <strong class="order-detail-value">{{ $order->payment->status->label() }}</strong>
                        </div>
                        <div>
                            <span class="d-inline-block">{{ __('Amount') }}:</span>
                            <strong class="order-detail-value"> {{ $order->amount_format }} </strong>
                        </div>
                        @if (EcommerceHelper::isTaxEnabled())
                            <div>
                                <span class="d-inline-block">{{ __('Tax') }}:</span>
                                <strong class="order-detail-value"> {{ format_price($order->tax_amount) }} </strong>
                            </div>
                        @endif

                        <div>
                            <span class="d-inline-block">{{ __('Discount') }}:</span>
                            <strong class="order-detail-value"> {{ $order->discount_amount_format }}
                                @if ($order->discount_amount)
                                    @if ($order->coupon_code)
                                        ({!! __('Coupon code: ":code"', ['code' => Html::tag('strong', $order->coupon_code, ['class' => 'badge'])->toHtml()]) !!})
                                    @elseif ($order->discount_description)
                                        ({{ $order->discount_description }})
                                    @endif
                                @endif
                            </strong>
                        </div>
                        <div>
                            <span class="d-inline-block">{{ __('Shipping fee') }}:</span>
                            <strong class="order-detail-value">{{ format_price($order->shipping_amount) }} </strong>
                        </div>
                        @if ($order->description)
                            <div>
                                <span class="d-inline-block">{{ __('Note') }}:</span>
                                <p class="order-detail-value text-warning">{{ $order->description }} </p>
                            </div>
                        @endif
                    </div>

                    <h4 class="mt-3 mb-1">{{ __('Customer') }}</h4>
                    <div>
                        <div>
                            <span class="d-inline-block">{{ __('Full Name') }}:</span>
                            <strong class="order-detail-value">{{ $order->address->name }} </strong>
                        </div>
                        <div>
                            <span class="d-inline-block">{{ __('Phone') }}:</span>
                            <strong class="order-detail-value">{{ $order->address->phone }} </strong>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <span class="d-inline-block">{{ __('Address') }}:</span>
                                <span class="order-detail-value"> {{ $order->full_address }} </span>&nbsp;
                            </div>
                        </div>
                    </div>

                    <h4 class="mt-3 mb-1">{{ __('Products') }}</h4>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>{{ __('Image') }}</th>
                                    <th>{{ __('Product') }}</th>
                                    <th>{{ __('Amount') }}</th>
                                    <th style="width: 100px">{{ __('Quantity') }}</th>
                                    <th class="price text-right">{{ __('Total') }}</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($order->products as $orderProduct)
                                @php
                                    $product = get_products([
                                        'condition' => [
                                            'ec_products.status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED,
                                            'ec_products.id'     => $orderProduct->product_id,
                                        ],
                                        'take'   => 1,
                                        'select' => [
                                            'ec_products.id',
                                            'ec_products.images',
                                            'ec_products.name',
                                            'ec_products.price',
                                            'ec_products.sale_price',
                                            'ec_products.sale_type',
                                            'ec_products.start_date',
                                            'ec_products.end_date',
                                            'ec_products.sku',
                                            'ec_products.is_variation',
                                        ],
                                    ]);

                                @endphp
                                <tr>
                                    <td class="align-middle">{{ $loop->index + 1 }}</td>
                                    <td class="align-middle">
                                        <img src="{{ RvMedia::getImageUrl($product ? $product->image : null, 'thumb', false, RvMedia::getDefaultImage()) }}" width="50" alt="{{ $orderProduct->product_name }}">
                                    </td>
                                    <td class="align-middle">
                                        {{ $orderProduct->product_name }} @if ($product && $product->sku) ({{ $product->sku }}) @endif
                                        @if ($product && $product->is_variation)
                                            <p>
                                                <small>
                                                    @php $attributes = get_product_attributes($product->id) @endphp
                                                    @if (!empty($attributes))
                                                        @foreach ($attributes as $attribute)
                                                            {{ $attribute->attribute_set_title }}: {{ $attribute->title }}@if (!$loop->last), @endif
                                                        @endforeach
                                                    @endif
                                                </small>
                                            </p>
                                        @endif

                                        @if (!empty($orderProduct->options) && is_array($orderProduct->options))
                                            @foreach($orderProduct->options as $option)
                                                @if (!empty($option['key']) && !empty($option['value']))
                                                    <p class="mb-0"><small>{{ $option['key'] }}: <strong> {{ $option['value'] }}</strong></small></p>
                                                @endif
                                            @endforeach
                                        @endif
                                    </td>
                                    <td class="align-middle">{{ $orderProduct->amount_format }}</td>
                                    <td class="align-middle">{{ $orderProduct->qty }}</td>
                                    <td class="money text-right align-middle">
                                        <strong>
                                            {{ $orderProduct->total_format }}
                                        </strong>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="mt-2 row">
                        <div class="col-auto me-auto">
                            <a href="{{ route('customer.print-order', $order->id) }}" class="">{{ __('Print order') }}</a>
                        </div>
                        @if ($order->canBeCanceled())
                            <div class="col-auto">
                                <a href="{{ route('customer.orders.cancel', $order->id) }}"
                                    onclick="return confirm('{{ __('Are you sure?') }}')"
                                    class="text-warning ml-2">{{ __('Cancel order') }}</a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
