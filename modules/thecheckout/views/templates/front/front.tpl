{**
* NOTICE OF LICENSE
*
* This source file is subject to the Software License Agreement
* that is bundled with this package in the file LICENSE.txt.
*
*  @author    Peter Sliacky (Zelarg)
*  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}
{extends file='page.tpl'}

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

{block name="page_content"}

  {* necessary here, core's checkout.js script looks for #checkout element and binds handlers only then - setUpCheckout() *}
  {*<div id="checkout" class="fool-js-confirmation-controllers"></div>*}
  <script>
    var debug_js_controller = '{$debugJsController|escape:'javascript':'UTF-8'}';
    var static_token = '{$static_token|escape:'javascript':'UTF-8'}';
    var config_default_payment_method = '{$z_tc_config->default_payment_method|escape:'javascript':'UTF-8'}';
    var config_show_i_am_business = '{$z_tc_config->show_i_am_business|escape:'javascript':'UTF-8'}';
    var config_show_i_am_private = '{$z_tc_config->show_i_am_private|escape:'javascript':'UTF-8'}';
    var config_show_i_am_business_delivery = '{$z_tc_config->show_i_am_business_delivery|escape:'javascript':'UTF-8'}';
    var config_show_i_am_private_delivery = '{$z_tc_config->show_i_am_private_delivery|escape:'javascript':'UTF-8'}';
    var config_force_customer_to_choose_country = '{$z_tc_config->force_customer_to_choose_country|escape:'javascript':'UTF-8'}';
    var config_blocks_update_loader = '{$z_tc_config->blocks_update_loader|escape:'javascript':'UTF-8'}';
    var config_refresh_minicart = (true == '{$z_tc_config->refresh_minicart|escape:'javascript':'UTF-8'}');
    var config_postcode_remove_spaces = (true == '{$z_tc_config->postcode_remove_spaces|escape:'javascript':'UTF-8'}');
    var config_separate_payment = (true == '{$z_tc_config->separate_payment|escape:'javascript':'UTF-8'}');
    var separate_payment_key = '{$separatePaymentKeyName|escape:'javascript':'UTF-8'}';
    var isEmptyCart = '{$isEmptyCart|escape:'javascript':'UTF-8'}';
    var tcModuleBaseUrl = '{$urls.base_url|escape:'javascript':'UTF-8'}/modules/thecheckout';
    var forceRefreshShipping = '{$forceRefreshShipping|escape:'javascript':'UTF-8'}';
    var sendcloud_script = '{$sendcloud_script|escape:'javascript':'UTF-8'}';
    var i18_requiredField = "{l s='Required field' d='Shop.Forms.Errors'}";
    var i18_fixErrorBelow = "{l s='Please fix the error below.' d='Shop.Notifications.Error'}";
    var i18_sdiLength = "{l s='Inserire il codice SDI di sette cifre. Inserire sette volte zero (0000000) se non si possiede un codice SDI' mod='thecheckout'}";
    var i18_popupPaymentNotice = "{l s='Payment popup will appear once the form is confirmed' mod='thecheckout'}";
    var i18_validationError = "{l s='Validation error' mod='thecheckout'}";
    var installedModules = [];
    {foreach $installedModules as $moduleName=>$moduleState}
      installedModules['{$moduleName|escape:'javascript':'UTF-8'}'] = '{$moduleState|escape:'javascript':'UTF-8'}';
    {/foreach}
    var tcAmazonPaySessionId = '{$tc_amazonPaySessionId|default:""|escape:'javascript':'UTF-8'}';

  </script>
  <style>
    {if !$showShipToDifferentAddress && $isInvoiceAddressPrimary}
    {literal}
    #thecheckout-address-delivery {
      display: none;
    }

    {/literal}
    {/if}
    {if !$showBillToDifferentAddress && !$isInvoiceAddressPrimary}
    {literal}
    #thecheckout-address-invoice {
      display: none;
    }

    {/literal}
    {/if}
    {if !$z_tc_config->offer_second_address}{literal}
    .second-address {
      display: none;
    }

    {/literal}{/if}
    {if !$z_tc_config->show_block_reassurance}{literal}
    #block-reassurance {
      display: none;
    }

    {/literal}{/if}

    {if !$z_tc_config->show_order_message}{literal}
    #thecheckout-order-message {
      display: none;
    }

    {/literal}{/if}
    {if !$z_tc_config->using_material_icons}{literal}
    span.custom-radio input[type=radio] {
      opacity: 1;
    }

    span.custom-radio {
      border: none;
    }

    span.custom-radio input[type=radio]:checked + span {
      display: none;
    }

    i.material-icons.checkbox-checked {
      display: none;
    }

    .custom-checkbox input[type=checkbox] {
      opacity: 1;
    }

    .custom-checkbox input[type=checkbox] + span {
      opacity: 0;
      pointer-events: none;
    }

    {/literal}{/if}

    {*
    {if $z_tc_config->show_i_am_business}{literal}
    #thecheckout-address-invoice .form-group.business-field {
      order: -1; /* Put business field in front if we have this checkbox */
    }

    {/literal}{/if}
    *}

    /* BEGIN Custom CSS styles from config page */
    {$z_tc_config->custom_css nofilter}
    /* END Custom CSS styles from config page */
  </style>
  <script>
    /* BEGIN Custom JS code from config page */
    {$z_tc_config->custom_js nofilter}
    /* END Custom JS code from config page */
  </script>
  {*<div id="checkout">*}
  <!-- this div tag is required due to core.js events registrations -->
  {*</div>*}

  {*{debug}*}
  <div id="empty-cart-notice">
    <h1>{l s='Cart is empty' d='Shop.Notifications.Error'}</h1>
    <a class="label" href="{$urls.pages.index|escape:'javascript':'UTF-8'}">
      <span class="laquo">«</span>{l s='Continue shopping' d='Shop.Theme.Actions'}
    </a>
  </div>
  <div id="is-test-mode-notice">
    <div class="notice">{l s='Test mode is enabled, only you can see The Checkout module active.' mod='thecheckout'}</div>
    <a class="close-notice" href="javascript:$('#is-test-mode-notice').fadeOut();">{l s='OK, close' mod='thecheckout'}</a>
  </div>
  {assign 'k' 1}

  {function blockContainer}
    {foreach $data as $key=>$sub_block}
      {if "blocks" === $key}
        <div class="blocks checkout-area-{$k++}{if $data.size<=35} width-below-35pct{/if}{if $data.size<=50} width-below-50pct{/if}{if $data.size<=70} width-below-70pct{/if}" style="flex-basis: {$data.size}%; min-width: {$data.size}%;">{foreach $sub_block as $checkout_block}
            {foreach $checkout_block as $blockName=>$classes}
              {if !in_array($blockName, $excludeBlocks)}
                <div class="tc-block-placeholder thecheckout-{$blockName|escape:'javascript':'UTF-8'}"></div>
                <div class="checkout-block{if $blockName|in_array:['login-form','account','address-invoice','address-delivery','shipping','payment']} main-block{/if} {$classes|escape:'javascript':'UTF-8'}" id="thecheckout-{$blockName|escape:'javascript':'UTF-8'}">
                  <div class="inner-area">
                  
                    {if "cart-summary" == $blockName}
                      {*cart-summary block loaded via Ajax, display dummy container only*}
                      <section id="main">
                        <div class="cart-grid row">
                          <div class="card cart-container">
                            <div
                              class="block-header shopping-cart-header">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</div>
                          </div>
                        </div>
                      </section>
                      {include file='module:thecheckout/views/templates/front/_partials/blocks-loader.tpl'}
                      <div class="card cart-summary">
                      </div>
                    {/if}
                    {if "login-form" == $blockName}
                      {*won't be set in front.php for logged-in customers*}
                      {include file='module:thecheckout/views/templates/front/blocks/login-form.tpl'}
                    {/if}
                    {if "account" == $blockName}
                      {include file='module:thecheckout/views/templates/front/blocks/account.tpl'}
                    {/if}
                    {if "address-invoice" == $blockName}
                      {include file='module:thecheckout/views/templates/front/blocks/address-invoice.tpl'}
                    {/if}
                    {if "address-delivery" == $blockName}
                      {include file='module:thecheckout/views/templates/front/blocks/address-delivery.tpl'}
                    {/if}
                    {if "shipping" == $blockName}
                      {*shipping block loaded via Ajax, display dummy container only*}
                      <div
                        class="block-header shipping-method-header">{l s='Shipping Method' d='Shop.Theme.Checkout'}</div>
                      {include file='module:thecheckout/views/templates/front/_partials/blocks-loader.tpl'}
                    {/if}
                    {if "payment" == $blockName}
                      <section id="checkout-payment-step" class="js-current-step">
                        <div class="dynamic-content">
                          {*payment block loaded via Ajax, display dummy container only*}
                          <div
                            class="block-header shipping-method-header">{l s='Payment method' d='Shop.Theme.Checkout'}</div>
                          {include file='module:thecheckout/views/templates/front/_partials/blocks-loader.tpl'}
                        </div>
                      </section>
                      <div class="static-content"></div>
                      <div class="popup-payment-content">
                        <div class="popup-header">
                          <div class="popup-close-icon"></div>
                          <div class="popup-shop-info">
                            <div class="popup-shop-logo"><img src="{$shop.logo|escape:'javascript':'UTF-8'}"></div>
                            <div class="popup-shop-name">{$shop.name|escape:'htmlall':'UTF-8'}</div>
                          </div>
                        </div>
                        <div class="popup-body">
                          <iframe class="popup-embed"></iframe>
                          <div class="popup-payment-form"></div>
                          <div class="popup-payment-button">
                            {include file='module:thecheckout/views/templates/front/_partials/payment-confirmation-button.tpl'}
                          </div>
                        </div>
                      </div>
                    {/if}
                    {if "order-message" == $blockName}
                      {include file='module:thecheckout/views/templates/front/blocks/order-message.tpl'}
                    {/if}
                    {if "confirm" == $blockName}
                      {include file='module:thecheckout/views/templates/front/blocks/confirm.tpl'}
                    {/if}
                    {if "html-box-1" == $blockName}
                      {$z_tc_config->html_box_1 nofilter}
                    {/if}
                    {if "html-box-2" == $blockName}
                      {$z_tc_config->html_box_2 nofilter}
                    {/if}
                    {if "html-box-3" == $blockName}
                      {$z_tc_config->html_box_3 nofilter}
                    {/if}
                    {if "html-box-4" == $blockName}
                      {$z_tc_config->html_box_4 nofilter}
                    {/if}
                    {if "required-checkbox-1" == $blockName && isset($separateModuleFields['thecheckout_required-checkbox-1'])}
                      <form class="account-fields module-account-fields {$blockName|escape:'javascript':'UTF-8'}">
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' field=$separateModuleFields['thecheckout_required-checkbox-1']}
                      </form>
                    {/if}
                    {if "required-checkbox-2" == $blockName && isset($separateModuleFields['thecheckout_required-checkbox-2'])}
                      <form class="account-fields module-account-fields {$blockName|escape:'javascript':'UTF-8'}">
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' field=$separateModuleFields['thecheckout_required-checkbox-2']}
                      </form>
                    {/if}
                    {if "newsletter" == $blockName && isset($separateModuleFields['ps_emailsubscription_newsletter'])}
                      <form class="account-fields module-account-fields {$blockName|escape:'javascript':'UTF-8'}">
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' field=$separateModuleFields['ps_emailsubscription_newsletter']}
                      </form>
                    {/if}
                    {if "psgdpr" == $blockName && isset($separateModuleFields['psgdpr_psgdpr'])}
                      <form class="account-fields module-account-fields {$blockName|escape:'javascript':'UTF-8'}">
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' field=$separateModuleFields['psgdpr_psgdpr']}
                      </form>
                    {/if}
                    {if "data-privacy" == $blockName && isset($separateModuleFields['ps_dataprivacy_customer_privacy'])}
                      <form class="account-fields module-account-fields {$blockName|escape:'javascript':'UTF-8'}">
                        {include file='module:thecheckout/views/templates/front/_partials/checkout-form-fields.tpl' field=$separateModuleFields['ps_dataprivacy_customer_privacy']}
                      </form>
                    {/if}
                  </div>
                </div>
              {/if}
            {/foreach}
          {/foreach}</div>
      {elseif "size" === $key} {*intentionally empty*}
      {else}
        {if 0 === strpos($key,'flex-split')}
          <div class="{$key|escape:'javascript':'UTF-8'} checkout-area-{$k++}" style="flex-basis: {$data.size}%">
        {/if}
        {blockContainer data=$sub_block}
        {if 0 === strpos($key,'flex-split')}
          </div>
        {/if}

      {/if}

    {/foreach}
  {/function}
    {function step}
        {if $z_tc_config->step_label_{$stepId|escape:'javascript':'UTF-8'}|trim}
{*          {assign number_of_steps $stepId scope='root'}*}
          <div class="checkout-step-btn" data-step-id="{$stepId|escape:'javascript':'UTF-8'}">{$z_tc_config->step_label_{$stepId|escape:'javascript':'UTF-8'}|escape:'javascript':'UTF-8'}</div>
            {assign var=blocksArr value=","|explode:$z_tc_config->step_blocks_{$stepId|escape:'javascript':'UTF-8'}}
{*          Blocks: {$z_tc_config->step_blocks_{$stepId}}*}
{*          Blocks array: {$blocksArr|print_r}*}
          <script type="text/javascript">
              tc_steps.push(
                      {literal} {
                          {/literal}
                      step: {$stepId|escape:'javascript':'UTF-8'},
                      blocks: '{$z_tc_config->step_blocks_{$stepId|escape:'javascript':'UTF-8'}|escape:'javascript':'UTF-8'}',
                      validation: () => ({if isset($z_tc_config->step_validation_{$stepId}) && $z_tc_config->step_validation_{$stepId}|trim}{$z_tc_config->step_validation_{$stepId|escape:'javascript':'UTF-8'} nofilter}{else}true{/if}),
                      errorMsg: '{$z_tc_config->step_validation_error_{$stepId|escape:'javascript':'UTF-8'}|escape:'javascript':'UTF-8'}',
                          {literal} }
                      {/literal}
              );
          </script>
          <style>
            {assign var=blocksSelector value=''}
            {foreach ","|explode:$z_tc_config->step_blocks_{$stepId} as $blockName}
              {assign var=blocksSelector value="{$blocksSelector|escape:'javascript':'UTF-8'}:not(#thecheckout-{$blockName|trim|escape:'javascript':'UTF-8'})"}
            {/foreach}
            .checkout-step-{$stepId|escape:'javascript':'UTF-8'} .checkout-block{$blocksSelector|escape:'javascript':'UTF-8'} {literal} {
            {/literal}
                visibility: hidden;
                position: absolute;
                z-index: -1;
            {literal}
            }

            {/literal}
          </style>
        {/if}
    {/function}
    {function steps}
        {if $z_tc_config->checkout_steps}
            <script type="text/javascript">
                var tc_steps = [];
            </script>
            <div id="checkout-step-btn-container">
              {step stepId=1}
              {step stepId=2}
              {step stepId=3}
              {step stepId=4}
            </div>
        {/if}
    {/function}
    {function steps_prev_next}
        {if $z_tc_config->checkout_steps}
          <div class="prev-next-container">
            <button class="btn step-back back" type="button">
                {l s='Back' mod='thecheckout'}
            </button>
            <button class="btn step-back continue-shopping" type="button">
                {l s='Continue shopping' mod='thecheckout'}
            </button>
            <button class="btn btn-primary step-continue" type="button" class="form-control-submit">
                {l s='Next step' mod='thecheckout'}
            </button>
          </div>
        {/if}
    {/function}
  <div id="tc-container">

    {steps}
    {blockContainer data=$blocksLayout}

    {* This element will be added by JS script as overlay on binary payment methods *}
    <div class="save-account-overlay hidden">
      <button type="button" class="btn btn-primary center-block" data-link-action="x-save-account-overlay">
        <div class="tc-loader">
          <div class="lds-ellipsis-m">
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
            <div>
              <div></div>
            </div>
          </div>
        </div>
        {l s='Confirm & Show payment' mod='thecheckout'}
      </button>
    </div>
    {* This element is artificaly created, as "parent" element for calling prepareConfirmation *}
    <div id="prepare_confirmation" class="hidden"></div>
    <div class="modal fade" id="modal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
            <span aria-hidden="true">&times;</span>
          </button>
          <div class="js-modal-content"></div>
        </div>
      </div>
    </div>
    <div id="payment_forms_persistence"></div>
  </div>
  <div id="tc-container-mobile"></div>
    {steps_prev_next}
{/block}
