{extends file='components/modal.tpl'}

{block name='modal_extra_attribues'}id="blockcart-modal"{/block}
{block name='modal_title'}{l s='Product added to cart' d='Modules.Isshoppingcart.Modalsuccess'}{/block}


{block name='modal_body'}

  <div class="cart-products p-0 mb-4">
    <div class="cart-products__thumb">
      {images_block webpEnabled=$webpEnabled}
      <img class="img-fluid rounded"
        {generateImagesSources image=$product.default_image size='cart_default' lazyload=false}
        alt="{$product.cover.legend}" title="{$product.cover.legend}">
      {/images_block}
    </div>
    <div class="cart-products__desc">
      <p class="h6 mb-2 font-sm">
        {$product.name}
      </p>
      <div class='flex items-center gap-x-4'>
        <div class="price price--sm ">{$product.price}</div>
        {hook h='displayProductPriceBlock' product=$product type="unit_price"}
        {if $cart.products_count > 0}
          <span class="modal-quantity">{$product.quantity} {l s='szt.' d='Shop.Theme.Catalog'}</span>
        {/if}
      </div>
    </div>
  </div>

  <hr>

  {if !empty($cart.subtotals.products.value)}
    <div class="cart-summary-line mb-2">
      <span class="label">{l s='Ilość produktów w koszyku' d='Shop.Istheme'}</span>
      <span class="value">{$cart.products_count}</span>
    </div>
  {/if}
  {if !empty($cart.subtotals.products.value)}
    <div class="cart-summary-line mb-2">
      <span class="label">{l s='Subtotal:' d='Modules.Isshoppingcart.Modalsuccess'}</span>
      <span class="value">{$cart.subtotals.products.value}</span>
    </div>
  {/if}

  {if !empty($cart.subtotals.shipping.value)}
    <div class="cart-summary-line mb-2">
      <span class="label">{l s='Shipping:' d='Modules.Isshoppingcart.Modalsuccess'}</span>
      <span class="value">{l s='od' d='Shop.Istheme'} {$cart.subtotals.shipping.value}
        {hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}</span>
    </div>
  {/if}

  {block name='free_delivery'}
    {include file='components/freedelivery.tpl' cart=$cart}
  {/block}

  {if !$configuration.display_prices_tax_incl && $configuration.taxes_enabled}
    <div class="cart-summary-line cart-total mb-2">
      <span class="label">{$cart.totals.total.label}&nbsp;{$cart.labels.tax_short}</span>
      <span class="value">{$cart.totals.total.value}</span>
    </div>
    <div class="cart-summary-line cart-total mb-0">
      <span class="label">{$cart.totals.total_including_tax.label}</span>
      <span class="value">{$cart.totals.total_including_tax.value}</span>
    </div>
  {else}
    <div class="cart-summary-line cart-total mb-0">
      <span class="label">{$cart.totals.total.label}&nbsp;
        {* {if $configuration.taxes_enabled}{$cart.labels.tax_short}{/if} *}
      </span>
      <span class="value">{$cart.totals.total.value}</span>
    </div>
  {/if}
{/block}

{block name='modal_footer'}
<div class='flex items-center gap-2 md:gap-5 w-full flex-col md:flex-row'>
<button type="button" class="btn btn-text btn-block btn-outline-primary"
data-dismiss="modal">{l s='Continue shopping' d='Shop.Theme.Actions'}</button>
<a href="{$cart_url}" class="btn btn-primary btn-block mt-0">{l s='Proceed to checkout' d='Shop.Theme.Actions'}</a>
</div>
{/block}