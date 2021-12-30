<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id'         => 'logo_light',
            'section_id' => 'opt-text-subsection-logo',
            'type'       => 'mediaImage',
            'label'      => __('Light Logo'),
            'attributes' => [
                'name'  => 'logo_light',
                'value' => null,
            ],
        ])
        ->setField([
            'id'         => 'preloader_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'select',
            'label'      => __('Enable Preloader?'),
            'attributes' => [
                'name'    => 'preloader_enabled',
                'list'    => [
                    'yes' => trans('core/base::base.yes'),
                    'no'  => trans('core/base::base.no'),
                ],
                'value'   => 'yes',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => 'Copyright © 2021 Wowy all rights reserved. Powered by Botble.',
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])
        ->setField([
            'id'         => 'hotline',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Hotline'),
            'attributes' => [
                'name'    => 'hotline',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Hotline'),
                    'data-counter' => 30,
                ],
            ],
        ])
        ->setField([
            'id'         => 'phone',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Phone'),
            'attributes' => [
                'name'    => 'phone',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Phone'),
                    'data-counter' => 30,
                ],
            ],
        ])
        ->setField([
            'id'         => 'address',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Address'),
            'attributes' => [
                'name'    => 'address',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Address'),
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'working_hours',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Working Hours'),
            'attributes' => [
                'name'    => 'working_hours',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Working Hours'),
                    'data-counter' => 120,
                ],
            ],
        ])
        ->setField([
            'id'         => 'payment_methods',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'mediaImage',
            'label'      => __('Accepted Payment methods'),
            'attributes' => [
                'name'   => 'payment_methods',
                'values' => theme_option('payment_methods'),
            ],
        ])
        ->setSection([
            'title'      => __('Social links'),
            'desc'       => __('Social links'),
            'id'         => 'opt-text-subsection-social-links',
            'subsection' => true,
            'icon'       => 'fa fa-share-alt',
        ])
        ->setField([
            'id'         => 'social_links',
            'section_id' => 'opt-text-subsection-social-links',
            'type'       => 'repeater',
            'label'      => __('Social links'),
            'attributes' => [
                'name'   => 'social_links',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'social-name',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'themeIcon',
                        'label'      => __('Icon'),
                        'attributes' => [
                            'name'    => 'social-icon',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('URL'),
                        'attributes' => [
                            'name'    => 'social-url',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'customColor',
                        'label'      => __('Color'),
                        'attributes' => [
                            'name'    => 'social-color',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setSection([
            'title'      => __('Header messages'),
            'desc'       => __('Header messages'),
            'id'         => 'opt-text-subsection-header-messages',
            'subsection' => true,
            'icon'       => 'fa fa-bell',
        ])
        ->setField([
            'id'         => 'header_messages',
            'section_id' => 'opt-text-subsection-header-messages',
            'type'       => 'repeater',
            'label'      => __('Header messages'),
            'clean_tags' => false,
            'attributes' => [
                'name'   => 'header_messages',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'themeIcon',
                        'label'      => __('Icon'),
                        'attributes' => [
                            'name'    => 'icon',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Message'),
                        'attributes' => [
                            'name'    => 'message',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Link'),
                        'attributes' => [
                            'name'    => 'link',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Link Text'),
                        'attributes' => [
                            'name'    => 'link_text',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setSection([
            'title'      => __('Contact info boxes'),
            'desc'       => __('Contact info boxes'),
            'id'         => 'opt-contact',
            'subsection' => false,
            'icon'       => 'fa fa-info-circle',
            'fields'     => [],
        ])
        ->setField([
            'id'         => 'contact_info_boxes',
            'section_id' => 'opt-contact',
            'type'       => 'repeater',
            'label'      => __('Contact info boxes'),
            'attributes' => [
                'name'   => 'contact_info_boxes',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'name',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Address'),
                        'attributes' => [
                            'name'    => 'address',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Phone'),
                        'attributes' => [
                            'name'    => 'phone',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'email',
                        'label'      => __('Email'),
                        'attributes' => [
                            'name'    => 'email',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id'         => 'blog_single_layout',
            'section_id' => 'opt-text-subsection-blog',
            'type'       => 'select',
            'label'      => __('Default Blog Single Layout'),
            'attributes' => [
                'name'    => 'blog_single_layout',
                'list'    => get_blog_single_layouts(),
                'value'   => 'blog-right-sidebar',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'product_single_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'select',
            'label'      => __('Default Product Single Layout'),
            'attributes' => [
                'name'    => 'product_single_layout',
                'list'    => get_product_single_layouts(),
                'value'   => 'product-right-sidebar',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'product_list_layout',
            'section_id' => 'opt-text-subsection-ecommerce',
            'type'       => 'select',
            'label'      => __('Default Product List Layout'),
            'attributes' => [
                'name'    => 'product_list_layout',
                'list'    => get_product_single_layouts(),
                'value'   => 'product-full-width',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setSection([
            'title'      => __('Style'),
            'desc'       => __('Style of page'),
            'id'         => 'opt-text-subsection-style',
            'subsection' => true,
            'icon'       => 'fa fa-bars',
        ])
        ->setField([
            'id'         => 'font_text',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'googleFonts',
            'label'      => __('Font text'),
            'attributes' => [
                'name'  => 'font_text',
                'value' => 'Poppins',
            ],
        ])
        ->setField([
            'id'         => 'header_style',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'select',
            'label'      => __('Header style'),
            'attributes' => [
                'name'    => 'header_style',
                'list'    => get_layout_header_styles(),
                'value'   => '',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'color_brand',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Color brand'),
            'attributes' => [
                'name'  => 'color_brand',
                'value' => '#5897fb',
            ],
        ])
        ->setField([
            'id'         => 'color_brand_2',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Color brand 2'),
            'attributes' => [
                'name'  => 'color_brand_2',
                'value' => '#3256e0',
            ],
        ])
        ->setField([
            'id'         => 'color_primary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'color_primary',
                'value' => '#3f81eb',
            ],
        ])
        ->setField([
            'id'         => 'color_secondary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Secondary color'),
            'attributes' => [
                'name'  => 'color_secondary',
                'value' => '#41506b',
            ],
        ])
        ->setField([
            'id'         => 'color_warning',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Warning color'),
            'attributes' => [
                'name'  => 'color_warning',
                'value' => '#ffb300',
            ],
        ])
        ->setField([
            'id'         => 'color_danger',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Danger color'),
            'attributes' => [
                'name'  => 'color_danger',
                'value' => '#ff3551',
            ],
        ])
        ->setField([
            'id'         => 'color_success',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Success color'),
            'attributes' => [
                'name'  => 'color_success',
                'value' => '#3ed092',
            ],
        ])
        ->setField([
            'id'         => 'color_info',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Info color'),
            'attributes' => [
                'name'  => 'color_info',
                'value' => '#18a1b7',
            ],
        ])
        ->setField([
            'id'         => 'color_text',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Text color'),
            'attributes' => [
                'name'  => 'color_text',
                'value' => '#4f5d77',
            ],
        ])
        ->setField([
            'id'         => 'color_heading',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Heading color'),
            'attributes' => [
                'name'  => 'color_heading',
                'value' => '#222222',
            ],
        ])
        ->setField([
            'id'         => 'color_grey_1',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Grey 1'),
            'attributes' => [
                'name'  => 'color_grey_1',
                'value' => '#111111',
            ],
        ])
        ->setField([
            'id'         => 'color_grey_2',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Grey 2'),
            'attributes' => [
                'name'  => 'color_grey_2',
                'value' => '#242424',
            ],
        ])
        ->setField([
            'id'         => 'color_grey_4',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Grey 4'),
            'attributes' => [
                'name'  => 'color_grey_4',
                'value' => '#90908e',
            ],
        ])
        ->setField([
            'id'         => 'color_grey_9',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Grey 9'),
            'attributes' => [
                'name'  => 'color_grey_9',
                'value' => '#f4f5f9',
            ],
        ])
        ->setField([
            'id'         => 'color_muted',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Muted color'),
            'attributes' => [
                'name'  => 'color_muted',
                'value' => '#8e8e90',
            ],
        ])
        ->setField([
            'id'         => 'color_body',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Body color'),
            'attributes' => [
                'name'  => 'color_body',
                'value' => '#4f5d77',
            ],
        ]);

    // Facebook integration
    theme_option()
        ->setSection([
            'title'      => __('Facebook Integration'),
            'desc'       => __('Facebook Integration'),
            'id'         => 'opt-text-subsection-facebook-integration',
            'subsection' => true,
            'icon'       => 'fab fa-facebook',
        ])
        ->setField([
            'id'         => 'facebook_chat_enabled',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'select',
            'label'      => __('Enable Facebook chat?'),
            'attributes' => [
                'name'    => 'facebook_chat_enabled',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper'     => __('To show chat box on that website, please go to :link and add :domain to whitelist domains!',
                [
                    'domain' => Html::link(url('')),
                    'link'   => Html::link('https://www.facebook.com/' . theme_option('facebook_page_id') . '/settings/?tab=messenger_platform'),
                ]),
        ])
        ->setField([
            'id'         => 'facebook_page_id',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'text',
            'label'      => __('Facebook page ID'),
            'attributes' => [
                'name'    => 'facebook_page_id',
                'value'   => null,
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper'     => __('You can get fan page ID using this site :link',
                ['link' => Html::link('https://findmyfbid.com')]),
        ])
        ->setField([
            'id'         => 'facebook_comment_enabled_in_post',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'select',
            'label'      => __('Enable Facebook comment in post detail page?'),
            'attributes' => [
                'name'    => 'facebook_comment_enabled_in_post',
                'list'    => [
                    'yes' => trans('core/base::base.yes'),
                    'no'  => trans('core/base::base.no'),
                ],
                'value'   => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'facebook_comment_enabled_in_product',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'select',
            'label'      => __('Enable Facebook comment in product detail page?'),
            'attributes' => [
                'name'    => 'facebook_comment_enabled_in_product',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
        ])
        ->setField([
            'id'         => 'facebook_app_id',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'text',
            'label'      => __('Facebook App ID'),
            'attributes' => [
                'name'        => 'facebook_app_id',
                'value'       => null,
                'options'     => [
                    'class' => 'form-control',
                ],
                'placeholder' => 'Ex: 2061237023872679',
            ],
            'helper'     => __('You can create your app in :link',
                ['link' => Html::link('https://developers.facebook.com/apps')]),
        ])
        ->setField([
            'id'         => 'facebook_admins',
            'section_id' => 'opt-text-subsection-facebook-integration',
            'type'       => 'repeater',
            'label'      => __('Facebook Admins'),
            'attributes' => [
                'name'   => 'facebook_admins',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Facebook Admin ID'),
                        'attributes' => [
                            'name'    => 'text',
                            'value'   => null,
                            'options' => [
                                'class'        => 'form-control',
                                'data-counter' => 40,
                            ],
                        ],
                    ],
                ],
            ],
            'helper'     => __('Facebook admins to manage comments :link',
                ['link' => Html::link('https://developers.facebook.com/docs/plugins/comments')]),
        ]);

    add_filter(THEME_FRONT_HEADER, function ($html) {
        if (theme_option('facebook_app_id')) {
            $html .= Html::meta(null, theme_option('facebook_app_id'), ['property' => 'fb:app_id'])->toHtml();
        }

        if (theme_option('facebook_admins')) {
            foreach (json_decode(theme_option('facebook_admins'), true) as $facebookAdminId) {
                if (Arr::get($facebookAdminId, '0.value')) {
                    $html .= Html::meta(null, Arr::get($facebookAdminId, '0.value'), ['property' => 'fb:admins'])
                        ->toHtml();
                }
            }
        }

        return $html;
    }, 1180);

    add_filter(THEME_FRONT_FOOTER, function ($html) {
        return $html . Theme::partial('facebook-integration');
    }, 1180);
});
