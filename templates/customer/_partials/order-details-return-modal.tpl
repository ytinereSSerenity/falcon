{extends file='components/modal.tpl'}

{block name='modal_extra_attribues'}id="order-return-modal"{/block}
{block name='modal_dialog_extra_class'}modal-lg{/block}

{block name='modal_content'}

  <form id="order-return-form" class="modal-content js-order-return-form" action="{$urls.pages.order_follow}" method="post">

    {block name='modal_header'}
      <div class="modal-header {block name='modal_header_extra_class'}{/block}">
        {block name='modal_title'}
          <h5 class="modal-title">{l s='Merchandise return' d='Shop.Theme.Customeraccount'}</h5>
        {/block}
        {block name='modal_close'}
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.93318 0.273321L5.997 4.3136L9.98068 0.330178C10.4391 -0.0987428 11.1583 -0.0748993 11.5873 0.38348C11.9751 0.79799 11.9977 1.4351 11.6402 1.87604L7.6044 5.9116L11.6402 9.9235C12.0984 10.3525 12.1221 11.0718 11.6931 11.5301C11.676 11.5483 11.6584 11.566 11.6402 11.583C11.4025 11.7897 11.0897 11.8885 10.7763 11.8558C10.4782 11.8546 10.1924 11.7362 9.98068 11.5262L5.9852 7.5308L1.93318 11.583C1.7126 11.7724 1.4279 11.87 1.13754 11.8558C0.843338 11.8729 0.553997 11.7751 0.330534 11.583C-0.110178 11.1397 -0.110178 10.4237 0.330534 9.98036L4.3826 5.9282L0.330496 1.876C-0.0778002 1.39921 -0.0222901 0.681655 0.454505 0.273321C0.880057 -0.0911069 1.50766 -0.0911069 1.93318 0.273321Z" fill="#58585A"/>
</svg>
          </button>
        {/block}
      </div>
    {/block}

    {block name='modal_body'}
      <div class="modal-body {block name='modal_body_extra_class'}{/block}">
        <div class="mb-3">
          <p>{l s='If you wish to return one or more products, please mark the corresponding boxes and provide an explanation for the return. When complete, click the button below.' d='Shop.Theme.Customeraccount'}</p>
        </div>

        <div class="card my-4">
          {include file="customer/_partials/order-details-return-table.tpl" products=$order.products}
        </div>

        <section class="form-fields">
          <label for="returnText" class="form-control-label">
            {l s='Reason for the return' d='Shop.Theme.Customeraccount'}
          </label>
          <div class="form-group">
            <textarea cols="67" rows="3" name="returnText" id="returnText" class="form-control"></textarea>
          </div>
        </section>
      </div>
    {/block}

    {block name='modal_footer'}
      <div class="modal-footer {block name='modal_footer_extra_class'}{/block}">
        <input type="hidden" name="id_order" value="{$order.details.id}">
        <button class="form-control-submit btn btn-primary d-none d-md-inline-block" type="submit" name="submitReturnMerchandise">
          {l s='Request a return' d='Shop.Theme.Customeraccount'}
        </button>
        <button class="form-control-submit btn btn-primary btn-block d-block d-md-none" type="submit" name="submitReturnMerchandise">
          {l s='Request a return' d='Shop.Theme.Customeraccount'}
        </button>
      </div>
    {/block}

  </form>
{/block}
