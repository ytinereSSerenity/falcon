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
{extends file='customer/page.tpl'}

{block name='page_title'}
    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
            d="M17.717 16.4834C17.6372 14.5537 16.907 12.7078 15.6451 11.2457C14.6984 10.1444 13.4913 9.29733 12.1338 8.78145C13.3122 7.84878 13.9994 6.4284 13.9993 4.92555C13.9993 2.21064 11.7906 0.00195312 9.07556 0.00195312C6.36055 0.00195312 4.15192 2.21064 4.15192 4.92555C4.15184 6.42836 4.83899 7.8487 6.01735 8.78138C4.6598 9.29728 3.45276 10.1444 2.50601 11.2456C1.24406 12.7077 0.513856 14.5537 0.434151 16.4834C0.422239 16.7523 0.602438 16.9919 0.864042 17.0551C3.46497 17.6834 6.2279 18.002 9.07556 18.002C11.9232 18.002 14.6861 17.6834 17.2871 17.0551C17.5487 16.9919 17.7289 16.7523 17.717 16.4834ZM5.27539 4.92542C5.2754 3.38901 6.20093 2.00389 7.6204 1.41595C9.03986 0.828015 10.6737 1.15304 11.7601 2.23946C12.8465 3.32589 13.1715 4.95976 12.5835 6.37921C11.9955 7.79865 10.6103 8.72413 9.07392 8.72409C6.977 8.72166 5.27773 7.02234 5.27539 4.92542ZM1.5919 16.07C3.97032 16.6056 6.48495 16.8769 9.07466 16.8769C11.6644 16.8769 14.179 16.6056 16.5574 16.07C16.2201 12.8865 13.9025 10.2664 10.784 9.54294C9.68105 9.9512 8.46838 9.9512 7.3654 9.54294C4.24682 10.2663 1.92919 12.8864 1.5919 16.07Z"
            fill="#221F1F" />
    </svg>
    {l s='GDPR - Personal data' mod='psgdpr'}
{/block}

{block name='page_content'}
    <section class="page_content">
        <div class="card mb-4">
            <div class="card-header">
                <p class="mb-0 card-title h5">
                    {l s='Access to my data' mod='psgdpr'}
                </p>
            </div>
            <div class="card-body">
                <p>{l s='At any time, you have the right to retrieve the data you have provided to our site. Click on "Get my data" to automatically download a copy of your personal data on a pdf or csv file.' mod='psgdpr'}
                </p>
                <a id="exportDataToCsv" class="btn btn-primary btn-sm psgdprgetdatabtn17" target="_blank"
                    href="{$psgdpr_csv_controller|escape:'htmlall':'UTF-8'}">{l s='GET MY DATA TO CSV' mod='psgdpr'}</a>
                <a id="exportDataToPdf" class="btn btn-primary btn-sm psgdprgetdatabtn17" target="_blank"
                    href="{$psgdpr_pdf_controller|escape:'htmlall':'UTF-8'}">{l s='GET MY DATA TO PDF' mod='psgdpr'}</a>
            </div>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                <p class="mb-0 card-title h5">
                    {l s='Rectification & Erasure requests' mod='psgdpr'}
                </p>
            </div>

            <div class="card-body">
                <p class="mb-0">
                    {l s='You have the right to modify all the personal information found in the "My Account" page. For any other request you might have regarding the rectification and/or erasure of your personal data, please contact us through our' mod='psgdpr'}
                    <a href="{$psgdpr_contactUrl|escape:'htmlall':'UTF-8'}">{l s='contact page' mod='psgdpr'}</a>.
                    {l s='We will review your request and reply as soon as possible.' mod='psgdpr'}</p>
            </div>
        </div>
    </section>
    {literal}
        <script type="text/javascript">
            var psgdpr_front_controller = "{/literal}{$psgdpr_front_controller|escape:'htmlall':'UTF-8'}{literal}";
            var psgdpr_id_customer = "{/literal}{$psgdpr_front_controller|escape:'htmlall':'UTF-8'}{literal}";
            var psgdpr_ps_version = "{/literal}{$psgdpr_ps_version|escape:'htmlall':'UTF-8'}{literal}";
        </script>
    {/literal}
{/block}