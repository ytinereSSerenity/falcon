<table id="order-products" class="table product-table product-table--return return">
  <thead class="thead-default product-table__head">
    <tr>
      <th class="head-checkbox">
        <div class="custom-control custom-checkbox custom-checkbox-block">
          <input
            class="custom-control-input"
            type="checkbox"
            id="return_bulk">
          <label class="custom-control-label" for="return_bulk"></label>
        </div>
      </th>
      <th>
      </th>
      <th>
        {l s='Product' d='Shop.Theme.Catalog'}
      </th>
      <th>
        {l s='Price' d='Shop.Theme.Catalog'}
      </th>
      <th>
        {l s='Quantity' d='Shop.Theme.Catalog'}
      </th>
    </tr>
  </thead>
  {foreach from=$order.products item=product name=products}
    <tr class="product-table__row product-line product-line--return">
      <td class="product-line__cell product-line__cell--checkbox">
        {if !$product.product.is_virtual}
          <label class="custom-control custom-checkbox product-line__checkbox-block mb-0 custom-checkbox-block">
            <input
              class="custom-control-input"
              type="checkbox"
              id="cb_{$product.id_order_detail}"
              name="ids_order_detail[{$product.id_order_detail}]"
              value="{$product.id_order_detail}">
            <span class="custom-control-label" for="cb_{$product.id_order_detail}"></span>
          </label>
        {else}
          {foreach $product.customizations as $customization}
            <label class="custom-control custom-checkbox product-line__checkbox-block mb-0 custom-checkbox-block">
              <input
                class="custom-control-input"
                type="checkbox"
                id="cb_{$product.id_order_detail}_{$customization.id_customization}"
                name="customization_ids[{$product.id_order_detail}][]"
                value="{$customization.id_customization}">
              <span class="custom-control-label"></span>
            </label>
          {/foreach}
        {/if}
      </td>

      <td class="product-line__cell product-line__cell--img">
        {images_block webpEnabled=$webpEnabled}
          {if $product.default_image}
            <img
              {generateImagesSources image=$product.cover size='cart_default' lazyload=false}
              alt="{$product.name|escape:'quotes'}"
              class="product-line__img rounded img-fluid"
              width="{$product.cover.bySize.cart_default.width}"
              height="{$product.cover.bySize.cart_default.height}">
          {else}
            <img
              src="{$urls.no_picture_image.bySize.cart_default.url}"
              width="{$urls.no_picture_image.bySize.cart_default.width}"
              height="{$urls.no_picture_image.bySize.cart_default.height}"
              class="product-line__img rounded img-fluid">
          {/if}
        {/images_block}
      </td>

      <td class="product-line__cell product-line__cell--prod">
        {assign var="productAttrs" value=[]}

        {foreach from=$product.attributes key="attribute" item="value"}
          {$productAttrs[]= "- `$attribute` : `$value`"}
        {/foreach}

        {$productAttrs = ""|implode:$productAttrs}

        <p class="product-line__title h6 mb-2">
          {if $product.attributes|count > 0}
            {$product.name|replace:$productAttrs : ''}
          {else}
            {$product.name}
          {/if}
        </p>

        {if $product.attributes}
          <ul class="product-line__attributes mb-0">
            {foreach from=$product.attributes key="attribute" item="value"}
              <li class="product-line__attribute text-muted small">
                <span>{$attribute}</span>: <span class="font-weight-bold">{$value}</span>
              </li>
            {/foreach}
          </ul>
        {/if}

        {if $product.is_virtual}
          {l s='Virtual products can\'t be returned.' d='Shop.Theme.Customeraccount'}<br/>
        {/if}
        {if isset($product.download_link)}
          <a href="{$product.download_link}">{l s='Download' d='Shop.Theme.Actions'}</a><br/>
        {/if}

        {if $product.customizations}
          {foreach from=$product.customizations item="customization"}
            <div class="customization">
              <a href="#" data-toggle="modal" data-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
            </div>
            <div id="_desktop_product_customization_modal_wrapper_{$customization.id_customization}">
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
            </div>
          {/foreach}
        {/if}
      </td>

      <td class="product-line__cell product-line__cell--price" data-title="{l s='Price' d='Shop.Theme.Catalog'}">
        <div class="price product-line__price">
          {$product.price}
        </div>
      </td>

      <td class="product-line__cell product-line__cell--qty qty" {if $product.quantity > $product.qty_returned} data-title="{l s='Quantity' d='Shop.Theme.Catalog'}"{/if}>
        {if !$product.customizations}
          {if $product.quantity > $product.qty_returned}
              <div class="select" id="_desktop_return_qty_{$product.id_order_detail}">
                <select name="order_qte_input[{$product.id_order_detail}]" class="custom-select">
                  {section name=quantity start=1 loop=$product.quantity+1-$product.qty_returned}
                    <option value="{$smarty.section.quantity.index}">{$smarty.section.quantity.index}</option>
                  {/section}
                </select>
              </div>
          {/if}
        {else}
          {foreach $product.customizations as $customization}
            <div class="select" id="_desktop_return_qty_{$product.id_order_detail}_{$customization.id_customization}">
              <select
                name="customization_qty_input[{$customization.id_customization}]"
                class="custom-select"
              >
                {section name=quantity start=1 loop=$customization.quantity+1}
                  <option value="{$smarty.section.quantity.index}">{$smarty.section.quantity.index}</option>
                {/section}
              </select>
            </div>
          {/foreach}
        {/if}
      </td>
    </tr>
  {/foreach}
</table>
