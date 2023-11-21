{**
 * 2007-2020 PrestaShop and Contributors
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div class="header-top__block header-top__block--cart col flex-grow-0">
  <div class="js-blockcart blockcart cart-preview dropdown" data-refresh-url="{$refresh_url}">
    <a href="#" role="button" id="cartDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
      class="header-top__link d-lg-block d-none">
      <div class="header-top__icon-container">
        <svg width="21" height="24" viewBox="0 0 21 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd"
            d="M20.8304 21.3994L19.7728 9.21607C19.6854 8.14549 18.7882 7.32283 17.7141 7.32841H15.9328V6.15824C15.9328 3.1131 13.4642 0.644531 10.4191 0.644531C7.37393 0.644531 4.90536 3.1131 4.90536 6.15824V7.32841H3.12403C2.04989 7.32286 1.15271 8.14553 1.06535 9.21612L0.00775228 21.3994C-0.0423413 21.9763 0.151966 22.5478 0.54335 22.9747C0.934733 23.4015 1.48727 23.6445 2.06639 23.6445H18.7718C19.3509 23.6445 19.9034 23.4015 20.2948 22.9747C20.6862 22.5478 20.8805 21.9763 20.8304 21.3994ZM6.34286 6.15824C6.34286 3.90701 8.16784 2.08203 10.4191 2.08203C12.6703 2.08203 14.4953 3.90701 14.4953 6.15824V7.32841H6.34286V6.15824ZM18.7718 22.207C18.9493 22.2132 19.12 22.1381 19.2354 22.0032H19.2353C19.3597 21.8765 19.4197 21.7 19.3983 21.5238L18.3407 9.34042C18.3141 9.0146 18.041 8.76424 17.7141 8.76591H15.9328V12.1984C15.9328 12.5954 15.611 12.9172 15.214 12.9172C14.8171 12.9172 14.4953 12.5954 14.4953 12.1984V8.76591H6.34286V12.1984C6.34286 12.5954 6.02106 12.9172 5.62411 12.9172C5.22715 12.9172 4.90536 12.5954 4.90536 12.1984V8.76591H3.12403C2.79711 8.76424 2.52406 9.01462 2.49746 9.34046L1.43986 21.5237C1.42462 21.6993 1.48375 21.8732 1.60286 22.0032C1.72198 22.1331 1.89014 22.207 2.06639 22.207H18.7718Z"
            fill="#58585A" />
        </svg>

        <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
          {$cart.products_count}
        </span>
      </div>
    </a>
    <a href="{$cart_url}" class="d-flex d-lg-none header-top__link">
      <div class="header-top__icon-container">
        <svg width="21" height="24" viewBox="0 0 21 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd"
            d="M20.8304 21.3994L19.7728 9.21607C19.6854 8.14549 18.7882 7.32283 17.7141 7.32841H15.9328V6.15824C15.9328 3.1131 13.4642 0.644531 10.4191 0.644531C7.37393 0.644531 4.90536 3.1131 4.90536 6.15824V7.32841H3.12403C2.04989 7.32286 1.15271 8.14553 1.06535 9.21612L0.00775228 21.3994C-0.0423413 21.9763 0.151966 22.5478 0.54335 22.9747C0.934733 23.4015 1.48727 23.6445 2.06639 23.6445H18.7718C19.3509 23.6445 19.9034 23.4015 20.2948 22.9747C20.6862 22.5478 20.8805 21.9763 20.8304 21.3994ZM6.34286 6.15824C6.34286 3.90701 8.16784 2.08203 10.4191 2.08203C12.6703 2.08203 14.4953 3.90701 14.4953 6.15824V7.32841H6.34286V6.15824ZM18.7718 22.207C18.9493 22.2132 19.12 22.1381 19.2354 22.0032H19.2353C19.3597 21.8765 19.4197 21.7 19.3983 21.5238L18.3407 9.34042C18.3141 9.0146 18.041 8.76424 17.7141 8.76591H15.9328V12.1984C15.9328 12.5954 15.611 12.9172 15.214 12.9172C14.8171 12.9172 14.4953 12.5954 14.4953 12.1984V8.76591H6.34286V12.1984C6.34286 12.5954 6.02106 12.9172 5.62411 12.9172C5.22715 12.9172 4.90536 12.5954 4.90536 12.1984V8.76591H3.12403C2.79711 8.76424 2.52406 9.01462 2.49746 9.34046L1.43986 21.5237C1.42462 21.6993 1.48375 21.8732 1.60286 22.0032C1.72198 22.1331 1.89014 22.207 2.06639 22.207H18.7718Z"
            fill="#58585A" />
        </svg>

        <span class="header-top__badge {if $cart.products_count > 9}header-top__badge--smaller{/if}">
          {$cart.products_count}
        </span>
      </div>
    </a>
    <div class="dropdown-menu blockcart__dropdown cart-dropdown dropdown-menu-right" aria-labelledby="cartDropdown">
      <div class="cart-dropdown__content keep-open js-cart__card-body cart__card-body">
        <div class="cart-loader">
          <div class="spinner-border text-primary" role="status"><span
              class="sr-only">{l s='Loading...' d='Shop.Theme.Global'}</span></div>
        </div>
        <div class="cart-dropdown__title d-flex align-items-center mb-3">
          <p class="h5 mb-0 mr-2">
            {l s='Your cart' d='Modules.Isshoppingcart.Isshoppingcart'}
          </p>
          <a data-toggle="dropdown" href="#"
            class="cart-dropdown__close dropdown-close ml-auto cursor-pointer text-decoration-none">
            <i class="material-icons d-block">close</i>
          </a>
        </div>
        {if $cart.products_count > 0}
          <div class="cart-dropdown__products pt-3 mb-3">
            {foreach from=$cart.products item=product}
              {include 'module:is_shoppingcart/views/templates/front/is_shoppingcart-product-line.tpl' product=$product}
            {/foreach}
          </div>

          <div class="cart-summary-line cart-total">
            <span class="label">{$cart.totals.total.label}</span>
            <span class="value">{$cart.totals.total.value}</span>
          </div>

          <div class="mt-3">
            <a href="{$cart_url}" class="btn btn-sm btn-primary btn-block dropdown-close">
              {l s='Proceed to checkout' d='Shop.Theme.Actions'}
            </a>
          </div>

        {else}
          <div class="alert alert-warning">
            {l s='Unfortunately your basket is empty' d='Modules.Isshoppingcart.Isshoppingcart'}
          </div>
        {/if}
      </div>
    </div>
  </div>
</div>