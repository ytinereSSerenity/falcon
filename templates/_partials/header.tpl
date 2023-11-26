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
{block name='header_banner'}
    <div class="header-banner">
        {hook h='displayBanner'}
    </div>
{/block}

{block name='header_nav'}
    <nav class="header-nav border-bottom bg-light py-1 d-none d-md-block">
        <div class="container">
            <div class="row align-items-center">
                {hook h='displayNav1'}
                {hook h='displayNav2'}
            </div>
        </div>
    </nav>
{/block}

<div class='md:hidden'>
    <div class='w-full flex justify-center py-10'>
        {include file='components/logo.tpl'}
    </div>
</div>

{block name='header_top'}
    <div class="js-header-top-wrapper fixed__mobile">

        <div class="header-top js-header-top">
            <div class="header-top__content pt-md-3 pb-md-0 py-2">

                <div class="container">

                    <div class="row header-top__row py-4 lg:py-0">

                        <div class="col flex-grow-0 header-top__block header-top__block--menu-toggle d-block d-md-none">
                            <a class="header-top__link" rel="nofollow" href="#" data-toggle="modal"
                                data-target="#mobile_top_menu_wrapper">
                                <div class="header-top__icon-container">
                                    <svg width="22" height="17" viewBox="0 0 22 17" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M20.7054 7.62158C21.1964 7.62158 21.5946 8.01974 21.5946 8.51077C21.5946 9.0018 21.1964 9.39996 20.7054 9.39996H0.889189C0.398157 9.39996 0 9.0018 0 8.51077C0 8.01974 0.398157 7.62158 0.889189 7.62158H20.7054ZM20.7054 15C21.1964 15 21.5946 15.3982 21.5946 15.8892C21.5946 16.3802 21.1964 16.7784 20.7054 16.7784H0.889189C0.398157 16.7784 0 16.3802 0 15.8892C0 15.3982 0.398157 15 0.889189 15H20.7054ZM20.7054 0C21.1964 0 21.5946 0.398157 21.5946 0.889189C21.5946 1.38022 21.1964 1.77838 20.7054 1.77838H0.889189C0.398157 1.77838 0 1.38022 0 0.889189C0 0.398157 0.398157 0 0.889189 0H20.7054Z"
                                            fill="" />
                                    </svg>

                                </div>
                            </a>
                        </div>

                        <div class="col-md-4 col header-top__block header-top__block--logo hidden md:block mr-auto">
                            {include file='components/logo.tpl'}
                        </div>
                        <a role="button" class="search-toggler header-top__link col flex-grow-0 " data-toggle="modal"
                            data-target="#saerchModalets">
                            <div class="header-top__icon-container">
                                <svg width="22" height="22" viewBox="0 0 22 22" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                        d="M16.1112 15.2138L21.7913 20.8031C22.0691 21.0768 22.0691 21.5211 21.7906 21.7947C21.5128 22.0684 21.0617 22.0684 20.7839 21.7947L15.0818 16.1834C13.4905 17.4535 11.4647 18.2175 9.25593 18.2175C4.14384 18.2175 0 14.1397 0 9.10876C0 4.07781 4.14384 0 9.25593 0C14.368 0 18.5119 4.07781 18.5126 9.10876C18.5126 11.4606 17.5986 13.5978 16.1112 15.2138ZM1.42415 9.10876C1.42415 13.3654 4.93055 16.8161 9.25593 16.8161C13.5813 16.8161 17.0877 13.3654 17.0877 9.10876C17.0877 4.85211 13.5813 1.40144 9.25593 1.40144C4.93055 1.40144 1.42415 4.85211 1.42415 9.10876Z"
                                        fill="" />
                                </svg>

                            </div>
                        </a>
                        {hook h='displayTop' mod='ps_customersignin'}
                        {hook h='displayTop' mod='is_favoriteproducts'}
                        {hook h='displayTop' mod='is_shoppingcart'}
                    </div>

                </div>
            </div>
        </div>
    </div>
    {hook h='displayNavFullWidth'}
{/block}

