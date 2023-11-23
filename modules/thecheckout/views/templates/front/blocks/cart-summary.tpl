{**
* NOTICE OF LICENSE
*
* This source file is subject to the Software License Agreement
* that is bundled with this package in the file LICENSE.txt.
*
*  @author    Peter Sliacky (Zelarg)
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}

{if isset($js_custom_vars) && $js_custom_vars|@count}
  <script type="text/javascript">
    {foreach from=$js_custom_vars key=var_name item=var_value}
    if ('object' === typeof {$var_name|escape:'javascript':'UTF-8'}{literal}) {
      {/literal}
        jQuery.extend({$var_name|escape:'javascript':'UTF-8'}, {$var_value|json_encode nofilter});
      {literal}
    } {/literal} else if ('undefined' !== typeof {$var_name|escape:'javascript':'UTF-8'}{literal}) {
      {/literal}
      {$var_name} = {$var_value|json_encode nofilter};
      {literal}
    } else {
      {/literal}
        var {$var_name} = {$var_value|json_encode nofilter};
      {literal}
    }
    {/literal}
    {/foreach}
  </script>
{/if}

<section id="main">
  <a id="checkout_products_btn" href="#checkout_products" class="block-header shopping-cart-header sc_header flex items-center justify-between">{l s='Twoje produkty' d='Shop.Theme.Checkout'}
  <svg width="8" height="9" viewBox="0 0 8 9" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.80997 2.54166L7.42493 2.15649C7.2915 2.02988 7.13566 1.96655 6.95778 1.96655C6.77622 1.96655 6.62223 2.02988 6.49556 2.15649L4.00002 4.65211L1.50449 2.15656C1.37784 2.02995 1.22382 1.96662 1.04233 1.96662C0.864354 1.96662 0.708551 2.02995 0.575103 2.15656L0.195118 2.54173C0.0650154 2.67174 0 2.82754 0 3.00899C0 3.19382 0.0650873 3.34786 0.1951 3.47108L3.53784 6.81384C3.66113 6.94387 3.8151 7.00894 4 7.00894C4.18143 7.00894 4.33722 6.94389 4.46719 6.81384L7.80995 3.47108C7.93662 3.34439 8 3.19037 8 3.00899C8.00002 2.83092 7.93664 2.67521 7.80997 2.54166Z" fill="#58585A"/>
</svg>
</a>
  <div class="cart-inner-wrapper">
    {if $cartQuantityError}
      <div class="error-msg visible">{$cartQuantityError|escape:'htmlall':'UTF-8'}</div>
    {/if}
    {if $otherErrors}
      {foreach $otherErrors as $moduleName => $errorMsg}
        <div class="error-msg visible">{$moduleName|escape:'htmlall':'UTF-8'}: {$errorMsg|escape:'htmlall':'UTF-8'}</div>
      {/foreach}
    {/if}

    <div class="cart-grid row">

      <div id="checkout_products" class="card cart-container ">
        {block name='cart_overview'}
          {include file='module:thecheckout/views/templates/front/_partials/cart-detailed.tpl' cart=$cart}
        {/block}
      </div>

      {block name='cart_summary'}
        <div class="card cart-summary">

          {block name='cart_totals'}
            {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
          {/block}

          {block name='hook_shopping_cart'}
            {hook h='displayShoppingCart'}
          {/block}

        </div>
      {/block}

      {block name='hook_shopping_cart_footer'}
        {hook h='displayShoppingCartFooter'}
      {/block}

      {* Reassurance is now as separate block - HTML Box no.1
      {block name='hook_reassurance'}
        {hook h='displayReassurance'}
      {/block}
      *}

    </div>
  </div>
</section>
