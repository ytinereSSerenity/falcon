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
                {hook h='displayNav2' mod="brak"}
                <a id="contact-link" href="{$urls.pages.contact}"><svg width="22" height="21" viewBox="0 0 22 21"
                        fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M18.202 8.61539H17.9328V7.26923C17.9328 3.26092 14.6719 0 10.6636 0C6.65527 0 3.39434 3.26092 3.39434 7.26923V8.61539H3.12511C1.49142 8.61539 0.163574 9.94323 0.163574 11.5769V14.8077C0.163574 16.4414 1.49142 17.7692 3.12511 17.7692H5.27896C6.31819 17.7692 7.16357 16.9238 7.16357 15.8846V10.5C7.16357 9.46077 6.31819 8.61539 5.27896 8.61539H5.00973V7.26923C5.00973 4.15154 7.54588 1.61538 10.6636 1.61538C13.7813 1.61538 16.3174 4.15154 16.3174 7.26923V8.61539H16.0482C15.009 8.61539 14.1636 9.46077 14.1636 10.5V15.8846C14.1636 16.9238 15.009 17.7692 16.0482 17.7692H16.3174V18.0385C16.3174 18.7805 15.7133 19.3846 14.9713 19.3846H10.6636C10.2177 19.3846 9.85588 19.7465 9.85588 20.1923C9.85588 20.6382 10.2177 21 10.6636 21H14.9713C16.605 21 17.9328 19.6722 17.9328 18.0385V17.7692H18.202C19.8357 17.7692 21.1636 16.4414 21.1636 14.8077V11.5769C21.1636 9.94323 19.8357 8.61539 18.202 8.61539ZM5.27896 10.2308C5.42757 10.2308 5.54819 10.3514 5.54819 10.5V15.8846C5.54819 16.0332 5.42757 16.1538 5.27896 16.1538H3.12511C2.38311 16.1538 1.77896 15.5497 1.77896 14.8077V11.5769C1.77896 10.8349 2.38311 10.2308 3.12511 10.2308H5.27896ZM19.5482 14.8077C19.5482 15.5497 18.944 16.1538 18.202 16.1538H16.0482C15.8996 16.1538 15.779 16.0332 15.779 15.8846V10.5C15.779 10.3514 15.8996 10.2308 16.0482 10.2308H18.202C18.944 10.2308 19.5482 10.8349 19.5482 11.5769V14.8077Z"
                            fill="#58585A" />
                    </svg>
                    {l s='kontakt' d='Shop.Theme.Global'}</a>
            </div>
        </div>
    </nav>
{/block}

<div class='lg:hidden'>
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

                        <div class="col flex-grow-0 header-top__block header-top__block--menu-toggle ">
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

                        <div class="col-md-4 col header-top__block header-top__block--logo hidden lg:block mr-auto">
                            {include file='components/logo.tpl'}
                        </div>
                        <div class='header-top__block col flex-grow-0'>
                            <a role="button" class="search-toggler header-top__link  " data-toggle="modal"
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
                        </div>

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