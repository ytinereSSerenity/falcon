{**
* NOTICE OF LICENSE
*
* This source file is subject to the Software License Agreement
* that is bundled with this package in the file LICENSE.txt.
*
*  @author    Peter Sliacky (Zelarg)
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}

<div class="block-header account-header">
  {if isset($customer) && $customer.is_logged}
    {l s='Twoje dane' mod='thecheckout'}
  {else}
    {l s='Twoje dane' mod='thecheckout'}
  {/if}

  {assign var="passwordShallBeVisible" value=(isset($opc_form_checkboxes['create-account']) && 'true' == $opc_form_checkboxes['create-account'])}
  {if !$logged}
    <div id="create_account" class="form-group checkbox">
    <label>
      <span class="custom-checkbox custom-control">
        <input type="checkbox" name="create-account" id="create-account" class="orig-field custom-control-input"
          data-link-action="x-create-account" {if $passwordShallBeVisible} checked="checked" 
          {else}
            {$field.visible=false}{*hide password field, when $show_create_account_checkbox=YES && checkboxes['create-account']=NO*}
          {/if}>
        <label class="custom-control-label" for="create-account">
          <span><i class="material-icons rtl-no-flip checkbox-checked check-icon">&#xE5CA;</i></span>
          <span class="label">
            {l s='Chcę utworzyć konto' d='Shop.Theme.Checkout'}
          </span>
        </label>
      </span>
    </label>
  </div>
        

  <a class="log-in btn btn-primary" href="#" data-link-action="x-offer-login">
    <span class="login">{l s='Zaloguj się' d='Shop.Theme.Customeraccount'}</span>
    <span class="nologin">{l s='Anuluj' d='Shop.Theme.Customeraccount'}</span>
  </a>
{/if}
</div>
<form class="account-fields">
  <div id="hook_displayPersonalInformationTop">{$hook_displayPersonalInformationTop nofilter}</div>
  {block name="account_form_fields"}
    <section class="form-fields">
      {block name='form_fields'}
        {include file='module:thecheckout/views/templates/front/_partials/static-customer-info.tpl' s_customer=$customer}
        {assign parentTplName 'account'}
        {foreach from=$formFieldsAccount item="field"}
          {block name='form_field'}
            {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' checkoutSection='account'}
          {/block}
        {/foreach}
      {/block}
      {$hook_create_account_form nofilter}
    </section>
  {/block}
</form>
{if $z_tc_config->show_button_save_personal_info}
  <button id="tc_save_account" class="btn btn-primary">{l s='Save Personal Information' mod='thecheckout'}</button>
{/if}