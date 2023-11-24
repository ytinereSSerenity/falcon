{**
* NOTICE OF LICENSE
*
* This source file is subject to the Software License Agreement
* that is bundled with this package in the file LICENSE.txt.
*
*  @author    Peter Sliacky (Zelarg)
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}

{if $z_tc_config->show_i_am_business}
    <style>
        {if $hideBusinessFields}
            {literal}
                .form-group.business-field:not(.need-dni) {
                    display: none;
                }

            {/literal}
        {else}
            {literal}
                .form-group.business-disabled-field {
                    display: none;
                }

                .business-fields-separator {
                    display: block;
                }

            {/literal}
        {/if}
    </style>
{/if}
{if $z_tc_config->show_i_am_private}
    <style>
        {if $hidePrivateFields}
            {literal}
                .form-group.private-field:not(.need-dni):not(.business-field) {
                    display: none;
                }

            {/literal}
        {else}
            {literal}
                .private-fields-separator {
                    display: block;
                }

            {/literal}
        {/if}
    </style>
{/if}
<div class="block-header address-name-header ">{l s='Billing address' mod='thecheckout'}</div>

{if $z_tc_config->show_i_am_business}
    <div class="business-customer form-group ">
        <span class="custom-checkbox custom-control">
            <input class="custom-control-input" id="i_am_business" type="checkbox" data-link-action="x-i-am-business"
                {if !$hideBusinessFields}checked="checked" {/if} disabled="disabled">
            <label class="custom-control-label" for="i_am_business">
                <span><i class="material-icons rtl-no-flip checkbox-checked check-icon">&#xE5CA;</i></span>

              {l s='I am a business customer' mod='thecheckout'}
            </label>
        </span>
    </div>
{/if}
{if $z_tc_config->show_i_am_private}
    <div class="private-customer hidden">
        <span class="custom-checkbox">
            <input id="i_am_private" type="checkbox" data-link-action="x-i-am-private"
                {if !$hidePrivateFields}checked="checked" {/if} disabled="disabled">
            <span><i class="material-icons rtl-no-flip checkbox-checked check-icon">&#xE5CA;</i></span>
            <label for="i_am_private">{l s='I am a private customer' mod='thecheckout'}</label>
        </span>
    </div>
{/if}

<form class="address-fields" data-address-type="invoice">
    {include file='module:thecheckout/views/templates/front/_partials/customer-addresses-dropdown.tpl' addressType='invoice'}
    {block name="address_invoice_form_fields"}
        <section class="form-fields">
            {block name='form_fields'}
                {if $z_tc_config->show_i_am_business}
                    <div class="business-fields-container">
                        <div class="business-fields-separator"></div>
                    </div>
                {/if}
                {if $z_tc_config->show_i_am_private}
                    <div class="private-fields-container">
                        <div class="private-fields-separator"></div>
                    </div>
                {/if}
                {foreach from=$formFieldsInvoice item="field"}
                    {block name='form_field'}
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' checkoutSection='invoice'}
                    {/block}
                {/foreach}
            {/block}
        </section>
    {/block}
</form>
{if $isInvoiceAddressPrimary}
    <div class="second-address form-group"> 
        <span class="custom-checkbox custom-control">
            <input class="custom-control-input" type="checkbox" data-link-action="x-ship-to-different-address" id="ship-to-different-address"
                {if $showShipToDifferentAddress} checked{/if}>
                    <label class="custom-control-label" for="ship-to-different-address">
            <span><i class="material-icons rtl-no-flip checkbox-checked check-icon">&#xE5CA;</i></span>
          {l s='Ship to a different address' mod='thecheckout'}</label>
        </span>
    </div>
{/if}