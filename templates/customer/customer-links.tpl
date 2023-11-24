{$pageIdentity = ['identity']}
{$pageAddresses = ['addresses', 'address']}
{$pageHistory = ['history', 'order-detail']}
{$pageDiscount = ['discount']}
{$pageCartHistory = ['cart-history']}
{$pageOrderSlip = ['order-slip']}
{$pageOrderFollow = ['order-follow', 'order-return']}

<div class="customer-links">
  {block name='page_title' hide}
    <header class=" {block name='page_header_container_class'}{/block}">
      <h1>{$smarty.block.child}</h1>
    </header>
  {/block}

  <div class="customer-links__list js-customer-links mt-12">
    <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageIdentity)}active{/if}"
      id="identity-link" href="{$urls.pages.identity}">
      <span class="link-item">
      <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M17.717 16.4834C17.6372 14.5537 16.907 12.7078 15.6451 11.2457C14.6984 10.1444 13.4913 9.29733 12.1338 8.78145C13.3122 7.84878 13.9994 6.4284 13.9993 4.92555C13.9993 2.21064 11.7906 0.00195312 9.07556 0.00195312C6.36055 0.00195312 4.15192 2.21064 4.15192 4.92555C4.15184 6.42836 4.83899 7.8487 6.01735 8.78138C4.6598 9.29728 3.45276 10.1444 2.50601 11.2456C1.24406 12.7077 0.513856 14.5537 0.434151 16.4834C0.422239 16.7523 0.602438 16.9919 0.864042 17.0551C3.46497 17.6834 6.2279 18.002 9.07556 18.002C11.9232 18.002 14.6861 17.6834 17.2871 17.0551C17.5487 16.9919 17.7289 16.7523 17.717 16.4834ZM5.27539 4.92542C5.2754 3.38901 6.20093 2.00389 7.6204 1.41595C9.03986 0.828015 10.6737 1.15304 11.7601 2.23946C12.8465 3.32589 13.1715 4.95976 12.5835 6.37921C11.9955 7.79865 10.6103 8.72413 9.07392 8.72409C6.977 8.72166 5.27773 7.02234 5.27539 4.92542ZM1.5919 16.07C3.97032 16.6056 6.48495 16.8769 9.07466 16.8769C11.6644 16.8769 14.179 16.6056 16.5574 16.07C16.2201 12.8865 13.9025 10.2664 10.784 9.54294C9.68105 9.9512 8.46838 9.9512 7.3654 9.54294C4.24682 10.2663 1.92919 12.8864 1.5919 16.07Z" fill="#221F1F"/>
      </svg>      
        {l s='Information' d='Shop.Theme.Customeraccount'}
      </span>
    </a>

    {if $customer.addresses|count}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageAddresses)}active{/if}"
        id="addresses-link" href="{$urls.pages.addresses}">
        <span class="link-item">
        <svg width="17" height="19" viewBox="0 0 17 19" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd" d="M9.86806 18.502C12.113 16.6632 16.3049 12.5912 16.3049 7.82044C16.3049 3.50241 12.8045 0.00195312 8.48645 0.00195312C4.16843 0.00195312 0.667969 3.50241 0.667969 7.82044C0.667969 12.5912 4.85987 16.6632 7.10484 18.502C7.91883 19.1686 9.05407 19.1686 9.86806 18.502ZM12.5191 13.2452C13.736 11.556 14.568 9.69957 14.568 7.82044C14.568 4.46197 11.8454 1.73939 8.48697 1.73939C5.1285 1.73939 2.40592 4.46197 2.40592 7.82044C2.40592 9.69957 3.23789 11.556 4.45477 13.2452C5.66248 14.9215 7.14749 16.2907 8.20628 17.1579C8.37994 17.3001 8.59399 17.3001 8.76765 17.1579C9.82645 16.2907 11.3114 14.9215 12.5191 13.2452ZM5.01183 7.82044C5.01183 5.90131 6.56758 4.34555 8.48671 4.34555C10.4058 4.34555 11.9616 5.90131 11.9616 7.82044C11.9616 9.73952 10.4058 11.2953 8.48671 11.2953C6.56758 11.2953 5.01183 9.73952 5.01183 7.82044ZM8.48733 6.08309C7.52774 6.08309 6.74989 6.86097 6.74989 7.82053C6.74989 8.78012 7.52774 9.55797 8.48733 9.55797C9.44692 9.55797 10.2248 8.78012 10.2248 7.82053C10.2248 6.86097 9.44692 6.08309 8.48733 6.08309Z" fill="#58585A"/>
        <path d="M9.86806 18.502L9.99479 18.6567L9.99479 18.6567L9.86806 18.502ZM7.10484 18.502L6.97811 18.6567L6.97812 18.6567L7.10484 18.502ZM12.5191 13.2452L12.3569 13.1283V13.1283L12.5191 13.2452ZM4.45477 13.2452L4.29249 13.3621L4.29249 13.3621L4.45477 13.2452ZM8.20628 17.1579L8.07956 17.3126L8.07957 17.3126L8.20628 17.1579ZM8.76765 17.1579L8.89437 17.3126L8.89437 17.3126L8.76765 17.1579ZM16.1049 7.82044C16.1049 10.1475 15.0818 12.3175 13.7661 14.1438C12.4514 15.9687 10.8565 17.4339 9.74134 18.3472L9.99479 18.6567C11.1246 17.7313 12.7481 16.2411 14.0906 14.3776C15.4321 12.5156 16.5049 10.2641 16.5049 7.82044H16.1049ZM8.48645 0.201953C12.6941 0.201953 16.1049 3.61287 16.1049 7.82044H16.5049C16.5049 3.39195 12.915 -0.198047 8.48645 -0.198047V0.201953ZM0.867969 7.82044C0.867969 3.61287 4.27888 0.201953 8.48645 0.201953V-0.198047C4.05797 -0.198047 0.467969 3.39195 0.467969 7.82044H0.867969ZM7.23157 18.3472C6.11642 17.4339 4.52149 15.9687 3.20681 14.1438C1.89108 12.3175 0.867969 10.1475 0.867969 7.82044H0.467969C0.467969 10.2641 1.54081 12.5156 2.88226 14.3776C4.22478 16.2411 5.84829 17.7313 6.97811 18.6567L7.23157 18.3472ZM9.74134 18.3472C9.00105 18.9535 7.97185 18.9535 7.23156 18.3472L6.97812 18.6567C7.86581 19.3837 9.1071 19.3837 9.99479 18.6567L9.74134 18.3472ZM14.368 7.82044C14.368 9.64133 13.5609 11.457 12.3569 13.1283L12.6814 13.3621C13.9112 11.655 14.768 9.75781 14.768 7.82044H14.368ZM8.48697 1.93939C11.735 1.93939 14.368 4.57243 14.368 7.82044H14.768C14.768 4.35152 11.9559 1.53939 8.48697 1.53939V1.93939ZM2.60592 7.82044C2.60592 4.57243 5.23896 1.93939 8.48697 1.93939V1.53939C5.01805 1.53939 2.20592 4.35152 2.20592 7.82044H2.60592ZM4.61704 13.1283C3.41306 11.457 2.60592 9.64133 2.60592 7.82044H2.20592C2.20592 9.75781 3.06272 11.655 4.29249 13.3621L4.61704 13.1283ZM8.33301 17.0031C7.28155 16.142 5.81083 14.7853 4.61704 13.1283L4.29249 13.3621C5.51412 15.0578 7.01343 16.4394 8.07956 17.3126L8.33301 17.0031ZM8.64094 17.0031C8.54098 17.085 8.43296 17.085 8.333 17.0031L8.07957 17.3126C8.32692 17.5152 8.64701 17.5152 8.89437 17.3126L8.64094 17.0031ZM12.3569 13.1283C11.1631 14.7853 9.69239 16.142 8.64093 17.0031L8.89437 17.3126C9.96051 16.4394 11.4598 15.0578 12.6814 13.3621L12.3569 13.1283ZM8.48671 4.14555C6.45713 4.14555 4.81183 5.79085 4.81183 7.82044H5.21183C5.21183 6.01177 6.67804 4.54555 8.48671 4.54555V4.14555ZM12.1616 7.82044C12.1616 5.79085 10.5163 4.14555 8.48671 4.14555V4.54555C10.2953 4.54555 11.7616 6.01177 11.7616 7.82044H12.1616ZM8.48671 11.4953C10.5163 11.4953 12.1616 9.84998 12.1616 7.82044H11.7616C11.7616 9.62907 10.2953 11.0953 8.48671 11.0953V11.4953ZM4.81183 7.82044C4.81183 9.84998 6.45713 11.4953 8.48671 11.4953V11.0953C6.67804 11.0953 5.21183 9.62907 5.21183 7.82044H4.81183ZM6.94989 7.82053C6.94989 6.97142 7.6382 6.28309 8.48733 6.28309V5.88309C7.41728 5.88309 6.54989 6.75051 6.54989 7.82053H6.94989ZM8.48733 9.35797C7.6382 9.35797 6.94989 8.66966 6.94989 7.82053H6.54989C6.54989 8.89058 7.41729 9.75797 8.48733 9.75797V9.35797ZM10.0248 7.82053C10.0248 8.66966 9.33646 9.35797 8.48733 9.35797V9.75797C9.55738 9.75797 10.4248 8.89058 10.4248 7.82053H10.0248ZM8.48733 6.28309C9.33646 6.28309 10.0248 6.97142 10.0248 7.82053H10.4248C10.4248 6.75051 9.55738 5.88309 8.48733 5.88309V6.28309Z" fill="white"/>
        </svg>
        
          {l s='Addresses' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {else}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageAddresses)}active{/if}"
        id="address-link" href="{$urls.pages.address}">
        <span class="link-item">
          <i class="material-icons">&#xE567;</i>
          {l s='Add first address' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageHistory)}active{/if}"
        id="history-link" href="{$urls.pages.history}">
        <span class="link-item">
        <svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd" d="M9.5 19.8743C14.7377 19.8743 19 15.6119 19 10.3743C19 5.13661 14.7377 0.874268 9.5 0.874268C4.26229 0.874268 0 5.13661 0 10.3743C0 15.6119 4.26234 19.8743 9.5 19.8743ZM9.50064 2.14086C14.0416 2.14086 17.734 5.83318 17.734 10.3742C17.734 14.9152 14.0417 18.6076 9.50064 18.6076C4.95961 18.6076 1.26729 14.9152 1.26729 10.3742C1.26729 5.83318 4.95966 2.14086 9.50064 2.14086ZM12.6673 13.5409C12.5279 13.5409 12.3886 13.4966 12.2714 13.4016L9.10478 10.8683C8.95597 10.7479 8.86728 10.5675 8.86728 10.3743V5.30759C8.86728 4.95925 9.15227 4.67427 9.50061 4.67427C9.84895 4.67427 10.1339 4.95925 10.1339 5.30759V10.0703L13.0631 12.4136C13.3354 12.6321 13.3798 13.0311 13.1613 13.3034C13.0378 13.4586 12.8541 13.5409 12.6673 13.5409Z" fill="#58585A"/>
        </svg>
        
          {l s='Order history and details' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {/if}

    {if !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageOrderSlip)}active{/if}"
        id="order-slips-link" href="{$urls.pages.order_slip}">
        <span class="link-item">
        <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M15.6719 9.14547V8.36719C15.6719 7.2687 14.7782 6.375 13.6797 6.375H1.99219C1.62602 6.375 1.32812 6.0771 1.32812 5.71094C1.32812 5.34477 1.62602 5.04688 1.99219 5.04688C2.35895 5.04688 2.65625 4.74957 2.65625 4.38281C2.65625 4.01605 2.35895 3.71875 1.99219 3.71875C0.893695 3.71875 0 4.61245 0 5.71094V15.0078C0 16.1063 0.893695 17 1.99219 17H13.6797C14.7782 17 15.6719 16.1063 15.6719 15.0078V14.2295C16.4448 13.9554 17 13.2173 17 12.3516V11.0234C17 10.1577 16.4448 9.41959 15.6719 9.14547ZM13.6797 15.6719H1.99219C1.62602 15.6719 1.32812 15.374 1.32812 15.0078V7.58891C1.53598 7.66262 1.7594 7.70312 1.99219 7.70312H13.6797C14.0459 7.70312 14.3438 8.00102 14.3438 8.36719V9.03125H13.0156C11.551 9.03125 10.3594 10.2228 10.3594 11.6875C10.3594 13.1522 11.551 14.3438 13.0156 14.3438H14.3438V15.0078C14.3438 15.374 14.0459 15.6719 13.6797 15.6719ZM15.6719 12.3516C15.6719 12.7177 15.374 13.0156 15.0078 13.0156H13.0156C12.2833 13.0156 11.6875 12.4198 11.6875 11.6875C11.6875 10.9552 12.2833 10.3594 13.0156 10.3594H15.0078C15.374 10.3594 15.6719 10.6573 15.6719 11.0234V12.3516Z" fill="#58585A"/>
        <path d="M4.51562 5.04688C4.88239 5.04688 5.17969 4.74957 5.17969 4.38281V1.99219C5.17969 1.62602 5.47759 1.32812 5.84375 1.32812H6.50781V4.38281C6.50781 4.74957 6.80511 5.04688 7.17188 5.04688C7.53864 5.04688 7.83594 4.74957 7.83594 4.38281V1.32812H11.1562C11.5224 1.32812 11.8203 1.62602 11.8203 1.99219V4.38281C11.8203 4.74957 12.1176 5.04688 12.4844 5.04688C12.8511 5.04688 13.1484 4.74957 13.1484 4.38281V1.99219C13.1484 0.893695 12.2547 0 11.1562 0H5.84375C4.74526 0 3.85156 0.893695 3.85156 1.99219V4.38281C3.85156 4.74957 4.14886 5.04688 4.51562 5.04688Z" fill="#58585A"/>
        <path d="M9.16406 3.32031V4.38281C9.16406 4.74957 9.46136 5.04688 9.82812 5.04688C10.1949 5.04688 10.4922 4.74957 10.4922 4.38281V3.32031C10.4922 2.95355 10.1949 2.65625 9.82812 2.65625C9.46136 2.65625 9.16406 2.95355 9.16406 3.32031Z" fill="#58585A"/>
        </svg>
        
          {l s='Credit slips' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {/if}

    {if $configuration.voucher_enabled && !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageDiscount)}active{/if}"
        id="discounts-link" href="{$urls.pages.discount}">
        <span class="link-item">
        <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15.6719 9.14547V8.36719C15.6719 7.2687 14.7782 6.375 13.6797 6.375H1.99219C1.62602 6.375 1.32812 6.0771 1.32812 5.71094C1.32812 5.34477 1.62602 5.04688 1.99219 5.04688C2.35895 5.04688 2.65625 4.74957 2.65625 4.38281C2.65625 4.01605 2.35895 3.71875 1.99219 3.71875C0.893695 3.71875 0 4.61245 0 5.71094V15.0078C0 16.1063 0.893695 17 1.99219 17H13.6797C14.7782 17 15.6719 16.1063 15.6719 15.0078V14.2295C16.4448 13.9554 17 13.2173 17 12.3516V11.0234C17 10.1577 16.4448 9.41959 15.6719 9.14547ZM13.6797 15.6719H1.99219C1.62602 15.6719 1.32812 15.374 1.32812 15.0078V7.58891C1.53598 7.66262 1.7594 7.70312 1.99219 7.70312H13.6797C14.0459 7.70312 14.3438 8.00102 14.3438 8.36719V9.03125H13.0156C11.551 9.03125 10.3594 10.2228 10.3594 11.6875C10.3594 13.1522 11.551 14.3438 13.0156 14.3438H14.3438V15.0078C14.3438 15.374 14.0459 15.6719 13.6797 15.6719ZM15.6719 12.3516C15.6719 12.7177 15.374 13.0156 15.0078 13.0156H13.0156C12.2833 13.0156 11.6875 12.4198 11.6875 11.6875C11.6875 10.9552 12.2833 10.3594 13.0156 10.3594H15.0078C15.374 10.3594 15.6719 10.6573 15.6719 11.0234V12.3516Z" fill="#58585A"/>
<path d="M4.51562 5.04688C4.88239 5.04688 5.17969 4.74957 5.17969 4.38281V1.99219C5.17969 1.62602 5.47759 1.32812 5.84375 1.32812H6.50781V4.38281C6.50781 4.74957 6.80511 5.04688 7.17188 5.04688C7.53864 5.04688 7.83594 4.74957 7.83594 4.38281V1.32812H11.1562C11.5224 1.32812 11.8203 1.62602 11.8203 1.99219V4.38281C11.8203 4.74957 12.1176 5.04688 12.4844 5.04688C12.8511 5.04688 13.1484 4.74957 13.1484 4.38281V1.99219C13.1484 0.893695 12.2547 0 11.1562 0H5.84375C4.74526 0 3.85156 0.893695 3.85156 1.99219V4.38281C3.85156 4.74957 4.14886 5.04688 4.51562 5.04688Z" fill="#58585A"/>
<path d="M9.16406 3.32031V4.38281C9.16406 4.74957 9.46136 5.04688 9.82812 5.04688C10.1949 5.04688 10.4922 4.74957 10.4922 4.38281V3.32031C10.4922 2.95355 10.1949 2.65625 9.82812 2.65625C9.46136 2.65625 9.16406 2.95355 9.16406 3.32031Z" fill="#58585A"/>
</svg>

          {l s='Vouchers' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {/if}

    {if $configuration.return_enabled && !$configuration.is_catalog}
      <a class="col-lg-4 col-md-6 col-sm-6 col-12 {if in_array($page.page_name, $pageOrderFollow)}active{/if}"
        id="returns-link" href="{$urls.pages.order_follow}">
        <span class="link-item">
          <i class="material-icons">&#xE860;</i>
          {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
        </span>
      </a>
    {/if}

    {block name='display_customer_account'}
      {hook h='displayCustomerAccount'}
    {/block}
  </div>

  <div class="text-center customer-links__footer">
    <a href="{$link->getPageLink('index', true, null, 'mylogout')}" class="customer-links__logout">
      {l s='Sign out' d='Shop.Theme.Actions'}
    </a>
  </div>
</div>