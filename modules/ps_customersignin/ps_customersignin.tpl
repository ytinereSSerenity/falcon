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
<div class="col flex-grow-0 header-top__block header-top__block--user">
  <a class="header-top__link" rel="nofollow" href="{$urls.pages.authentication}?back={$urls.current_url|urlencode}"
    {if $logged} title="
      {l s='View my customer account' d='Shop.Theme.Customeraccount'}" 
    {else}
    title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}" {/if}>
    <div class="header-top__icon-container">
      <svg width="22" height="23" viewBox="0 0 22 23" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M21.1241 20.7886C21.0267 18.4301 20.1342 16.1739 18.5918 14.3869C17.4347 13.0409 15.9594 12.0056 14.3002 11.375C15.7405 10.2351 16.5804 8.49908 16.5803 6.66226C16.5803 3.34404 13.8807 0.644531 10.5624 0.644531C7.24405 0.644531 4.54463 3.34404 4.54463 6.66226C4.54452 8.49903 5.38437 10.235 6.82459 11.3749C5.16537 12.0055 3.6901 13.0408 2.53296 14.3868C0.99057 16.1738 0.0980984 18.43 0.000681137 20.7886C-0.0138778 21.1172 0.206366 21.4101 0.526103 21.4873C3.70502 22.2551 7.08193 22.6445 10.5624 22.6445C14.0429 22.6445 17.4198 22.2551 20.5987 21.4873C20.9184 21.4101 21.1387 21.1172 21.1241 20.7886ZM5.91976 6.66226C5.91977 4.78443 7.05097 3.09151 8.78588 2.37292C10.5208 1.65432 12.5177 2.05157 13.8455 3.37943C15.1733 4.70728 15.5705 6.70424 14.8519 8.43912C14.1332 10.174 12.4402 11.3051 10.5624 11.3051C7.9995 11.3021 5.92262 9.22516 5.91976 6.66226ZM1.4168 20.2833C4.32377 20.9379 7.39719 21.2695 10.5624 21.2695C13.7276 21.2695 16.801 20.9379 19.708 20.2833C19.2957 16.3923 16.4631 13.19 12.6516 12.3058C11.3035 12.8048 9.82139 12.8048 8.4733 12.3058C4.6617 13.1899 1.82905 16.3923 1.4168 20.2833Z"
          fill="" />
      </svg>

    </div>
  </a>
</div>