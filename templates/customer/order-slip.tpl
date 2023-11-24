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
  <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path
      d="M15.6719 9.14547V8.36719C15.6719 7.2687 14.7782 6.375 13.6797 6.375H1.99219C1.62602 6.375 1.32812 6.0771 1.32812 5.71094C1.32812 5.34477 1.62602 5.04688 1.99219 5.04688C2.35895 5.04688 2.65625 4.74957 2.65625 4.38281C2.65625 4.01605 2.35895 3.71875 1.99219 3.71875C0.893695 3.71875 0 4.61245 0 5.71094V15.0078C0 16.1063 0.893695 17 1.99219 17H13.6797C14.7782 17 15.6719 16.1063 15.6719 15.0078V14.2295C16.4448 13.9554 17 13.2173 17 12.3516V11.0234C17 10.1577 16.4448 9.41959 15.6719 9.14547ZM13.6797 15.6719H1.99219C1.62602 15.6719 1.32812 15.374 1.32812 15.0078V7.58891C1.53598 7.66262 1.7594 7.70312 1.99219 7.70312H13.6797C14.0459 7.70312 14.3438 8.00102 14.3438 8.36719V9.03125H13.0156C11.551 9.03125 10.3594 10.2228 10.3594 11.6875C10.3594 13.1522 11.551 14.3438 13.0156 14.3438H14.3438V15.0078C14.3438 15.374 14.0459 15.6719 13.6797 15.6719ZM15.6719 12.3516C15.6719 12.7177 15.374 13.0156 15.0078 13.0156H13.0156C12.2833 13.0156 11.6875 12.4198 11.6875 11.6875C11.6875 10.9552 12.2833 10.3594 13.0156 10.3594H15.0078C15.374 10.3594 15.6719 10.6573 15.6719 11.0234V12.3516Z"
      fill="#58585A" />
    <path
      d="M4.51562 5.04688C4.88239 5.04688 5.17969 4.74957 5.17969 4.38281V1.99219C5.17969 1.62602 5.47759 1.32812 5.84375 1.32812H6.50781V4.38281C6.50781 4.74957 6.80511 5.04688 7.17188 5.04688C7.53864 5.04688 7.83594 4.74957 7.83594 4.38281V1.32812H11.1562C11.5224 1.32812 11.8203 1.62602 11.8203 1.99219V4.38281C11.8203 4.74957 12.1176 5.04688 12.4844 5.04688C12.8511 5.04688 13.1484 4.74957 13.1484 4.38281V1.99219C13.1484 0.893695 12.2547 0 11.1562 0H5.84375C4.74526 0 3.85156 0.893695 3.85156 1.99219V4.38281C3.85156 4.74957 4.14886 5.04688 4.51562 5.04688Z"
      fill="#58585A" />
    <path
      d="M9.16406 3.32031V4.38281C9.16406 4.74957 9.46136 5.04688 9.82812 5.04688C10.1949 5.04688 10.4922 4.74957 10.4922 4.38281V3.32031C10.4922 2.95355 10.1949 2.65625 9.82812 2.65625C9.46136 2.65625 9.16406 2.95355 9.16406 3.32031Z"
      fill="#58585A" />
  </svg>
  {l s='Credit slips' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <h6>{l s='Credit slips you have received after canceled orders.' d='Shop.Theme.Customeraccount'}</h6>

  {if $credit_slips}
    <table class="table table-striped table-bordered hidden-sm-down">
      <thead class="thead-default">
        <tr>
          <th>{l s='Order' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Credit slip' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Date issued' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='View credit slip' d='Shop.Theme.Customeraccount'}</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$credit_slips item=slip}
          <tr>
            <td class="align-middle"><a href="{$slip.order_url_details}"
                data-link-action="view-order-details">{$slip.order_reference}</a></td>
            <td class="align-middle" scope="row">{$slip.credit_slip_number}</td>
            <td class="align-middle">{$slip.credit_slip_date}</td>
            <td class="align-middle text-sm-center">
              <a href="{$slip.url}" class="btn btn-primary btn-sm">
                <span class="material-icons btn-icon ml-1">file_download</span>
                {l s='Download' d='Shop.Theme.Catalog'}
              </a>
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
    <div class="credit-slips hidden-md-up">
      {foreach from=$credit_slips item=slip}
        <div class="card mb-5">
          <div class="card-header">
            <p class="card-title h5 mb-0">
              {l s='Credit slip' d='Shop.Theme.Customeraccount'} - {$slip.credit_slip_number}
            </p>
          </div>
          <div class="card-body">
            <ul class="mb-0 row">
              <li class="col-sm-6 mb-2">
                <strong>{l s='Order' d='Shop.Theme.Customeraccount'}:</strong>
                <a href="{$slip.order_url_details}" data-link-action="view-order-details">{$slip.order_reference}</a>
              </li>
              <li class="col-sm-6 mb-2">
                <strong>{l s='Date issued' d='Shop.Theme.Customeraccount'}:</strong>
                {$slip.credit_slip_date}
              </li>
            </ul>
          </div>
          <div class="card-footer">
            <a href="{$slip.url}" class="btn btn-primary btn-sm btn-block">
              <span class="material-icons btn-icon ml-1">file_download</span>
              {l s='View credit slip' d='Shop.Theme.Customeraccount'}
            </a>
          </div>
        </div>
      {/foreach}
    </div>
  {else}
    <div class="alert alert-info" role="alert" data-alert="info">
      {l s='You have not received any credit slips.' d='Shop.Notifications.Warning'}</div>
  {/if}
{/block}