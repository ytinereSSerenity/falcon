{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
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
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{extends file=$layout}

{block name='header'}
  {include file='checkout/_partials/header.tpl'}
{/block}

{block name='breadcrumb'}
  {block name='continue_shopping'}
    <div class="my-3">
      <a class="btn__arrow" href="{$urls.pages.cart}">
        <svg class="fill-current" width="5" height="5" viewBox="0 0 5 5" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path
            d="M3.70807 4.88123L3.9488 4.64058C4.02793 4.55719 4.06751 4.45979 4.06751 4.34861C4.06751 4.23514 4.02793 4.1389 3.9488 4.05973L2.38903 2.50001L3.94875 0.940306C4.02788 0.86115 4.06746 0.764886 4.06746 0.651457C4.06746 0.540221 4.02788 0.442844 3.94875 0.359439L3.70802 0.121949C3.62676 0.0406346 3.52939 0 3.41598 0C3.30816 0 3.21711 0.0354364 3.14284 0.106227L1.03795 2.21115C0.956684 2.28821 0.916016 2.38444 0.916016 2.5C0.916016 2.61339 0.956673 2.71076 1.03795 2.792L3.12718 4.88122C3.20636 4.96039 3.30262 5 3.41598 5C3.52727 5 3.6246 4.9604 3.70807 4.88123Z"
            fill="" />
        </svg>
        {l s='Wróć do koszyka' d='Shop.Theme.Actions'}
      </a>
    </div>
  {/block}
{/block}

{block name='content'}
  <section id="content">
    <div class="row">
      <div class="cart-grid-body col-12 col-lg-8 mb-4">
        <div class="card">
          {block name='checkout_process'}
            {render file='checkout/checkout-process.tpl' ui=$checkout_process}
          {/block}
        </div>
      </div>

      <div class="cart-grid-right col-12 col-lg-4">

        {block name='cart_summary'}
          {include file='checkout/_partials/cart-summary.tpl' cart=$cart}
        {/block}

        {hook h='displayReassurance'}
      </div>
    </div>
  </section>
{/block}

{block name='footer'}
  {include file='checkout/_partials/footer.tpl'}
{/block}

