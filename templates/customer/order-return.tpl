{extends file='customer/page.tpl'}

{block name='page_title'}
  <h1 class="h1">{l s='Return details' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  {block name='order_return_infos'}
    <div id="order-return-infos" class="mb-4">
      <div class="mb-4">
        <p class="mb-1">
          <strong>{l
            s='%number% on %date%'
            d='Shop.Theme.Customeraccount'
            sprintf=['%number%' => $return.return_number, '%date%' => $return.return_date]}
          </strong>
        </p>
        <p class="mb-1">{l s='We have logged your return request.' d='Shop.Theme.Customeraccount'}</p>
        <p class="mb-1">{l
          s='Your package must be returned to us within %number% days of receiving your order.'
          d='Shop.Theme.Customeraccount'
          sprintf=['%number%' => $configuration.number_of_days_for_return]}</p>
        <p class="mb-1">
          {* [1][/1] is for a HTML tag. *}
          {l
            s='The current status of your merchandise return is: [1] %status% [/1]'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<strong>',
              '[/1]' => '</strong>',
              '%status%' => $return.state_name
            ]
          }
        </p>
      </div>

      <p class="h5 mb-2">
        {l s='List of items to be returned:' d='Shop.Theme.Customeraccount'}
      </p>

      <table class="table table-striped table-bordered">
        <thead class="thead-default">
          <tr>
            <th>{l s='Product' d='Shop.Theme.Catalog'}</th>
            <th>{l s='Quantity' d='Shop.Theme.Checkout'}</th>
          </tr>
        </thead>
        <tbody>
        {foreach from=$products item=product}
          <tr>
            <td>
              <strong>{$product.product_name}</strong>
              {if $product.product_reference}
                <br />
                {l s='Reference' d='Shop.Theme.Catalog'}: {$product.product_reference}
              {/if}
              {if $product.customizations}
                {foreach from=$product.customizations item="customization"}
                  <div class="customization">
                    <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
                  </div>
                  <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                             <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.93318 0.273321L5.997 4.3136L9.98068 0.330178C10.4391 -0.0987428 11.1583 -0.0748993 11.5873 0.38348C11.9751 0.79799 11.9977 1.4351 11.6402 1.87604L7.6044 5.9116L11.6402 9.9235C12.0984 10.3525 12.1221 11.0718 11.6931 11.5301C11.676 11.5483 11.6584 11.566 11.6402 11.583C11.4025 11.7897 11.0897 11.8885 10.7763 11.8558C10.4782 11.8546 10.1924 11.7362 9.98068 11.5262L5.9852 7.5308L1.93318 11.583C1.7126 11.7724 1.4279 11.87 1.13754 11.8558C0.843338 11.8729 0.553997 11.7751 0.330534 11.583C-0.110178 11.1397 -0.110178 10.4237 0.330534 9.98036L4.3826 5.9282L0.330496 1.876C-0.0778002 1.39921 -0.0222901 0.681655 0.454505 0.273321C0.880057 -0.0911069 1.50766 -0.0911069 1.93318 0.273321Z" fill="#58585A"/>
</svg>
                          </button>
                          <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                        </div>
                        <div class="modal-body">
                          {foreach from=$customization.fields item="field"}
                            <div class="product-customization-line row">
                              <div class="col-sm-3 col-4 label">
                                {$field.label}
                              </div>
                              <div class="col-sm-9 col-8 value">
                                {if $field.type == 'text'}
                                  {if (int)$field.id_module}
                                    {$field.text nofilter}
                                  {else}
                                    {$field.text}
                                  {/if}
                                {elseif $field.type == 'image'}
                                  <img src="{$field.image.small.url}" loading="lazy">
                                {/if}
                              </div>
                            </div>
                          {/foreach}
                        </div>
                      </div>
                    </div>
                  </div>
                {/foreach}
              {/if}
            </td>
            <td>
              {$product.product_quantity}
            </td>
          </tr>
        {/foreach}
        </tbody>
      </table>

    </div>
  {/block}

  {if $return.state == 2}
    <section class="card">
      <div class="card-title">
        <h3 class="card-title h5 mb-0">{l s='Reminder' d='Shop.Theme.Customeraccount'}</h3>
      </div>
      <div class="card-body">
        <p class="card-text">
          {l
            s='All merchandise must be returned in its original packaging and in its original state.'
            d='Shop.Theme.Customeraccount'
          }<br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Please print out the [1]returns form[/1] and include it with your package.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
          <br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Please check the [1]returns form[/1] for the correct address.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
        </p>
        <p class="card-text">
          {l
            s='When we receive your package, we will notify you by email. We will then begin processing order reimbursement.'
            d='Shop.Theme.Customeraccount'
          }<br>
          <a href="{$urls.pages.contact}">
            {l
              s='Please let us know if you have any questions.'
              d='Shop.Theme.Customeraccount'
            }
          </a><br>
          {l
            s='If the conditions of return listed above are not respected, we reserve the right to refuse your package and/or reimbursement.'
            d='Shop.Theme.Customeraccount'
          }
        </p>
      </div>
    </section>
  {/if}
{/block}
