{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="product-line-grid">
  <div class="product-line-grid__row">
    <div class="product-line-grid__block product-line-grid__block--image">
      {images_block webpEnabled=$webpEnabled}
      <img {generateImagesSources image=$product.default_image size='cart_default' lazyload=false}
        alt="{$product.name|escape:'quotes'}" class="img-fluid rounded"
        width="{$product.default_image.bySize.cart_default.width}"
        height="{$product.default_image.bySize.cart_default.height}">
      {/images_block}
    </div>
    <div class="product-line-grid__block product-line-grid__block--prod">
      <p class="h6 product-line-grid__title mb-2">
        <a class="text-reset" href="{$product.url}" data-id_customization="{$product.id_customization|intval}">
          {$product.name}
        </a>
      </p>

      {if $product.attributes}
        <ul class="mb-2">
          {foreach from=$product.attributes key="attribute" item="value"}
            <li class="text-muted small">
              <span>{$attribute}:</span>
              <span class="font-weight-bold">{$value}</span>
            </li>
          {/foreach}
        </ul>
      {/if}

      <div class="product-line-info product-price{if $product.has_discount} has-discount{/if}">
        <div class="current-price">
          {if $product.has_discount}
            <span class="price price--regular mr-1">{$product.regular_price}</span>
          {/if}
          <span
            class="current-price-display price{if $product.has_discount} current-price-discount{/if}">{$product.price}</span>
          {if $product.unit_price_full}
            <div class="unit-price-cart">{$product.unit_price_full}</div>
          {/if}
        </div>

        {hook h='displayProductPriceBlock' product=$product type="unit_price"}
      </div>
      {* end product-price *}
      {if is_array($product.customizations) && $product.customizations|count}
        {block name='cart_detailed_product_line_customization'}
          <div class="mt-3">
            {foreach from=$product.customizations item="customization"}
              <a href="#" data-toggle="modal"
                data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
              <div class="modal fade customization-modal js-customization-modal"
                id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                      <button type="button" class="close" data-dismiss="modal"
                        aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path
                            d="M1.93318 0.273321L5.997 4.3136L9.98068 0.330178C10.4391 -0.0987428 11.1583 -0.0748993 11.5873 0.38348C11.9751 0.79799 11.9977 1.4351 11.6402 1.87604L7.6044 5.9116L11.6402 9.9235C12.0984 10.3525 12.1221 11.0718 11.6931 11.5301C11.676 11.5483 11.6584 11.566 11.6402 11.583C11.4025 11.7897 11.0897 11.8885 10.7763 11.8558C10.4782 11.8546 10.1924 11.7362 9.98068 11.5262L5.9852 7.5308L1.93318 11.583C1.7126 11.7724 1.4279 11.87 1.13754 11.8558C0.843338 11.8729 0.553997 11.7751 0.330534 11.583C-0.110178 11.1397 -0.110178 10.4237 0.330534 9.98036L4.3826 5.9282L0.330496 1.876C-0.0778002 1.39921 -0.0222901 0.681655 0.454505 0.273321C0.880057 -0.0911069 1.50766 -0.0911069 1.93318 0.273321Z"
                            fill="#58585A" />
                        </svg>
                      </button>
                    </div>
                    <div class="modal-body">
                      {foreach from=$customization.fields item="field"}
                        <div class="product-customization-line row">
                          <div class="col-sm-3 col-4 label">
                            {$field.label}
                          </div>
                          <div class="col-sm-9 col-8 value">
                            {if $field.type == 'text'}
                              {if (int)$field.id_module}
                                {$field.text nofilter}
                              {else}
                                {$field.text}
                              {/if}
                            {elseif $field.type == 'image'}
                              <img src="{$field.image.small.url}">
                            {/if}
                          </div>
                        </div>
                      {/foreach}
                    </div>
                  </div>
                </div>
              </div>
            {/foreach}
          </div>
        {/block}
      {/if}
    </div>

    <div class="product-line-grid__block product-line-grid__block--qty">
      {if !empty($product.is_gift)}
        <span class="gift-quantity">{$product.quantity}</span>
      {else}
        <div>
          <input class="js-cart-line-product-quantity input-touchspin" data-down-url="{$product.down_quantity_url}"
            data-up-url="{$product.up_quantity_url}" data-update-url="{$product.update_quantity_url}"
            data-product-id="{$product.id_product}" type="number" inputmode="numeric" pattern="[0-9]*"
            value="{$product.quantity}" name="product-quantity-spin" min="{$product.minimal_quantity}"
            aria-label="{l s='%productName% product quantity field' sprintf=['%productName%' => $product.name] d='Shop.Theme.Checkout'}" />
        </div>
      {/if}
    </div>

    <div class="product-line-grid__block product-line-grid__block--total">
      <span class="product-price">
        {if !empty($product.is_gift)}
          <span class="gift">{l s='Gift' d='Shop.Theme.Checkout'}</span>
        {else}
          <span class="price">
            {$product.total}
          </span>
        {/if}
      </span>
    </div>

    <div class="product-line-grid__block product-line-grid__block--delete">
      {if empty($product.is_gift)}
        <a class="remove-from-cart text-danger" rel="nofollow" href="{$product.remove_from_cart_url}"
          data-link-action="delete-from-cart" data-id-product="{$product.id_product|escape:'javascript'}"
          data-id-product-attribute="{$product.id_product_attribute|escape:'javascript'}"
          data-id-customization="{$product.id_customization|default|escape:'javascript'}">
          <svg class="fill-current" width="16" height="18" viewBox="0 0 16 18" fill="none"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd"
              d="M11.4085 3.4H11.2008C11.2008 2.07452 10.1263 1 8.80078 1H7.20078C5.87529 1 4.80078 2.07452 4.80078 3.4H4.27541H4.00078H3.99984H1.60078C1.15896 3.4 0.800781 3.75818 0.800781 4.2C0.800781 4.64183 1.15896 5 1.60078 5H2.40078V14.6C2.40078 15.9255 3.4753 17 4.80078 17H11.2008C12.5263 17 13.6008 15.9255 13.6008 14.6V5H14.4008C14.8426 5 15.2008 4.64182 15.2008 4.2C15.2008 3.75817 14.8426 3.4 14.4008 3.4H12.0022H12.0008H11.4085ZM12.0008 5H10.4008H9.60078H6.40078H5.60078H4.00078V6.6V14.6C4.00078 15.0418 4.35896 15.4 4.80078 15.4H11.2008C11.6426 15.4 12.0008 15.0418 12.0008 14.6V6.6V5ZM7.20078 3.4H6.40078C6.40078 2.95818 6.75894 2.6 7.20078 2.6H8.80078C9.24262 2.6 9.60078 2.95818 9.60078 3.4H8.80078H8.00078H7.20078ZM6.40078 6.6C6.84262 6.6 7.20078 6.95818 7.20078 7.4V13C7.20078 13.4418 6.84262 13.8 6.40078 13.8C5.95896 13.8 5.60078 13.4418 5.60078 13V7.4C5.60078 6.95818 5.95896 6.6 6.40078 6.6ZM9.60078 6.6C10.0426 6.6 10.4008 6.95818 10.4008 7.4V13C10.4008 13.4418 10.0426 13.8 9.60078 13.8C9.15894 13.8 8.80078 13.4418 8.80078 13V7.4C8.80078 6.95818 9.15894 6.6 9.60078 6.6Z"
              fill="" />
            <path
              d="M11.2008 3.4H11.0008V3.6H11.2008V3.4ZM4.80078 3.4V3.6H5.00078V3.4H4.80078ZM2.40078 5H2.60078V4.8H2.40078V5ZM13.6008 5V4.8H13.4008V5H13.6008ZM12.0008 5H12.2008V4.8H12.0008V5ZM4.00078 5V4.8H3.80078V5H4.00078ZM6.40078 3.4H6.20078V3.6H6.40078V3.4ZM9.60078 3.4V3.6H9.80078V3.4H9.60078ZM11.2008 3.6H11.4085V3.2H11.2008V3.6ZM8.80078 1.2C10.0158 1.2 11.0008 2.18497 11.0008 3.4H11.4008C11.4008 1.96407 10.2368 0.8 8.80078 0.8V1.2ZM7.20078 1.2H8.80078V0.8H7.20078V1.2ZM5.00078 3.4C5.00078 2.18498 5.98575 1.2 7.20078 1.2V0.8C5.76484 0.8 4.60078 1.96406 4.60078 3.4H5.00078ZM4.27541 3.6H4.80078V3.2H4.27541V3.6ZM4.00078 3.6H4.27541V3.2H4.00078V3.6ZM3.99984 3.6H4.00078V3.2H3.99984V3.6ZM1.60078 3.6H3.99984V3.2H1.60078V3.6ZM1.00078 4.2C1.00078 3.86863 1.26941 3.6 1.60078 3.6V3.2C1.0485 3.2 0.600781 3.64772 0.600781 4.2H1.00078ZM1.60078 4.8C1.26941 4.8 1.00078 4.53137 1.00078 4.2H0.600781C0.600781 4.75229 1.0485 5.2 1.60078 5.2V4.8ZM2.40078 4.8H1.60078V5.2H2.40078V4.8ZM2.60078 14.6V5H2.20078V14.6H2.60078ZM4.80078 16.8C3.58576 16.8 2.60078 15.8151 2.60078 14.6H2.20078C2.20078 16.036 3.36485 17.2 4.80078 17.2V16.8ZM11.2008 16.8H4.80078V17.2H11.2008V16.8ZM13.4008 14.6C13.4008 15.8151 12.4158 16.8 11.2008 16.8V17.2C12.6368 17.2 13.8008 16.036 13.8008 14.6H13.4008ZM13.4008 5V14.6H13.8008V5H13.4008ZM14.4008 4.8H13.6008V5.2H14.4008V4.8ZM15.0008 4.2C15.0008 4.53137 14.7322 4.8 14.4008 4.8V5.2C14.9531 5.2 15.4008 4.75228 15.4008 4.2H15.0008ZM14.4008 3.6C14.7322 3.6 15.0008 3.86862 15.0008 4.2H15.4008C15.4008 3.64771 14.9531 3.2 14.4008 3.2V3.6ZM12.0022 3.6H14.4008V3.2H12.0022V3.6ZM12.0008 3.6H12.0022V3.2H12.0008V3.6ZM11.4085 3.6H12.0008V3.2H11.4085V3.6ZM10.4008 5.2H12.0008V4.8H10.4008V5.2ZM9.60078 5.2H10.4008V4.8H9.60078V5.2ZM6.40078 5.2H9.60078V4.8H6.40078V5.2ZM5.60078 5.2H6.40078V4.8H5.60078V5.2ZM4.00078 5.2H5.60078V4.8H4.00078V5.2ZM4.20078 6.6V5H3.80078V6.6H4.20078ZM4.20078 14.6V6.6H3.80078V14.6H4.20078ZM4.80078 15.2C4.46941 15.2 4.20078 14.9314 4.20078 14.6H3.80078C3.80078 15.1523 4.2485 15.6 4.80078 15.6V15.2ZM11.2008 15.2H4.80078V15.6H11.2008V15.2ZM11.8008 14.6C11.8008 14.9314 11.5322 15.2 11.2008 15.2V15.6C11.7531 15.6 12.2008 15.1523 12.2008 14.6H11.8008ZM11.8008 6.6V14.6H12.2008V6.6H11.8008ZM11.8008 5V6.6H12.2008V5H11.8008ZM6.40078 3.6H7.20078V3.2H6.40078V3.6ZM7.20078 2.4C6.64848 2.4 6.20078 2.84772 6.20078 3.4H6.60078C6.60078 3.06863 6.8694 2.8 7.20078 2.8V2.4ZM8.80078 2.4H7.20078V2.8H8.80078V2.4ZM9.80078 3.4C9.80078 2.84772 9.35308 2.4 8.80078 2.4V2.8C9.13216 2.8 9.40078 3.06863 9.40078 3.4H9.80078ZM8.80078 3.6H9.60078V3.2H8.80078V3.6ZM8.00078 3.6H8.80078V3.2H8.00078V3.6ZM7.20078 3.6H8.00078V3.2H7.20078V3.6ZM7.40078 7.4C7.40078 6.84772 6.95308 6.4 6.40078 6.4V6.8C6.73216 6.8 7.00078 7.06863 7.00078 7.4H7.40078ZM7.40078 13V7.4H7.00078V13H7.40078ZM6.40078 14C6.95308 14 7.40078 13.5523 7.40078 13H7.00078C7.00078 13.3314 6.73216 13.6 6.40078 13.6V14ZM5.40078 13C5.40078 13.5523 5.8485 14 6.40078 14V13.6C6.06941 13.6 5.80078 13.3314 5.80078 13H5.40078ZM5.40078 7.4V13H5.80078V7.4H5.40078ZM6.40078 6.4C5.8485 6.4 5.40078 6.84772 5.40078 7.4H5.80078C5.80078 7.06863 6.06941 6.8 6.40078 6.8V6.4ZM10.6008 7.4C10.6008 6.84772 10.1531 6.4 9.60078 6.4V6.8C9.93216 6.8 10.2008 7.06863 10.2008 7.4H10.6008ZM10.6008 13V7.4H10.2008V13H10.6008ZM9.60078 14C10.1531 14 10.6008 13.5523 10.6008 13H10.2008C10.2008 13.3314 9.93216 13.6 9.60078 13.6V14ZM8.60078 13C8.60078 13.5523 9.04848 14 9.60078 14V13.6C9.2694 13.6 9.00078 13.3314 9.00078 13H8.60078ZM8.60078 7.4V13H9.00078V7.4H8.60078ZM9.60078 6.4C9.04848 6.4 8.60078 6.84772 8.60078 7.4H9.00078C9.00078 7.06863 9.2694 6.8 9.60078 6.8V6.4Z"
              fill="white" />
          </svg>
        </a>
      {/if}

      {block name='hook_cart_extra_product_actions'}
        {hook h='displayCartExtraProductActions' product=$product}
      {/block}
    </div>
  </div>

</div>