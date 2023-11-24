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
{extends file='customer/page.tpl'}

{block name='page_title'}
  <svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd"
      d="M9.5 19.8743C14.7377 19.8743 19 15.6119 19 10.3743C19 5.13661 14.7377 0.874268 9.5 0.874268C4.26229 0.874268 0 5.13661 0 10.3743C0 15.6119 4.26234 19.8743 9.5 19.8743ZM9.50064 2.14086C14.0416 2.14086 17.734 5.83318 17.734 10.3742C17.734 14.9152 14.0417 18.6076 9.50064 18.6076C4.95961 18.6076 1.26729 14.9152 1.26729 10.3742C1.26729 5.83318 4.95966 2.14086 9.50064 2.14086ZM12.6673 13.5409C12.5279 13.5409 12.3886 13.4966 12.2714 13.4016L9.10478 10.8683C8.95597 10.7479 8.86728 10.5675 8.86728 10.3743V5.30759C8.86728 4.95925 9.15227 4.67427 9.50061 4.67427C9.84895 4.67427 10.1339 4.95925 10.1339 5.30759V10.0703L13.0631 12.4136C13.3354 12.6321 13.3798 13.0311 13.1613 13.3034C13.0378 13.4586 12.8541 13.5409 12.6673 13.5409Z"
      fill="#58585A" />
  </svg>
  {l s='Order history' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <h6>{l s='Here are the orders you\'ve placed since your account was created.' d='Shop.Theme.Customeraccount'}</h6>

  {if $orders}
    <div class='overflow-auto my-3'>
    <table class="table table-striped table-bordered hidden-sm-down">
      <thead class="thead-default">
        <tr>
          <th>{l s='Order reference' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Date' d='Shop.Theme.Checkout'}</th>
          <th>{l s='Total price' d='Shop.Theme.Checkout'}</th>
          <th class="hidden-md-down">{l s='Payment' d='Shop.Theme.Checkout'}</th>
          <th class="hidden-md-down">{l s='Status' d='Shop.Theme.Checkout'}</th>
          <th>&nbsp;</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$orders item=order}
          <tr>
            <th scope="row" class="align-middle">{$order.details.reference}</th>
            <td class="align-middle">
              <span class="text-nowrap">
                {$order.details.order_date}
              </span>
            </td>
            <td class="text-xs-right align-middle">
              <span class="text-primary font-weight-bold text-lowercase">
                {$order.totals.total.value}
              </span>
            </td>
            <td class="hidden-md-down align-middle">{$order.details.payment}</td>
            <td class="align-middle">
              <span
                class="label label-pill badge {if Tools::getBrightness($order.history.current.color) < 128}text-white{/if}"
                style="background-color:{$order.history.current.color}">
                {$order.history.current.ostate_name}
              </span>
            </td>
            <td class="text-sm-center order-actions align-middle">
              <a class="view-order-details-link btn btn-sm btn-primary" href="{$order.details.details_url}"
                data-link-action="view-order-details">
                {l s='Details' d='Shop.Theme.Customeraccount'}
              </a>
              {if $order.details.reorder_url}
                <div class="mt-2">
                  <a class="reorder-link btn btn-sm btn-primary" href="{$order.details.reorder_url}"
                    data-link-action="view-order-details">
                    {l s='Reorder' d='Shop.Theme.Actions'}
                  </a>
                </div>
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
    </div>

    <div class="orders d-md-none">
      {foreach from=$orders item=order}
        <div class="card mb-5">
          <div class="card-header">
            <h5 class="mb-0">{l s='Order reference' d='Shop.Theme.Checkout'}: {$order.details.reference}</h5>
          </div>
          <div class="card-body">
            <ul class="mb-0 row">
              <li class="col-sm-6 mb-2">
                <strong>{l s='Date' d='Shop.Theme.Checkout'}:</strong> {$order.details.order_date}
              </li>
              <li class="col-sm-6 mb-2">
                <strong>{l s='Total price' d='Shop.Theme.Checkout'}:</strong> {$order.totals.total.value}
              </li>
              <li class="col-sm-6 mb-2">
                <strong>{l s='Status' d='Shop.Theme.Checkout'}:</strong> {$order.history.current.ostate_name}
              </li>
            </ul>
          </div>
          <div class="card-footer">
            <div class="row mt-n2">
              <div class="col-sm-6 mt-2">
                <a class="view-order-details-link btn btn-primary btn-block btn-sm" href="{$order.details.details_url}"
                  data-link-action="view-order-details">
                  {l s='Details' d='Shop.Theme.Customeraccount'}
                </a>
              </div>
              {if $order.details.reorder_url}
                <div class="col-sm-6 mt-2">
                  <a class="reorder-link btn btn-light btn-block btn-sm" href="{$order.details.reorder_url}"
                    data-link-action="view-order-details">
                    {l s='Reorder' d='Shop.Theme.Actions'}
                  </a>
                </div>
              {/if}
            </div>
          </div>
        </div>
      {/foreach}
    </div>
  {else}
    <div class="alert alert-info" role="alert" data-alert="info">
      {l s='You have not placed any orders.' d='Shop.Notifications.Warning'}</div>
  {/if}
{/block}