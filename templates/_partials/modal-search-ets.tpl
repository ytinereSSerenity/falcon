{extends file='components/modal.tpl'}

{block name='modal_extra_attribues'}id="saerchModalets" data-modal-hide-mobile{/block}
{block name='modal_extra_class'} search-modal{/block}
{block name='modal_dialog_extra_class'} modal-xl modal-dialog {/block}

{block name='modal_header'}{/block}
{block name='modal_body'}
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
  <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path
      d="M1.93318 0.273321L5.997 4.3136L9.98068 0.330178C10.4391 -0.0987428 11.1583 -0.0748993 11.5873 0.38348C11.9751 0.79799 11.9977 1.4351 11.6402 1.87604L7.6044 5.9116L11.6402 9.9235C12.0984 10.3525 12.1221 11.0718 11.6931 11.5301C11.676 11.5483 11.6584 11.566 11.6402 11.583C11.4025 11.7897 11.0897 11.8885 10.7763 11.8558C10.4782 11.8546 10.1924 11.7362 9.98068 11.5262L5.9852 7.5308L1.93318 11.583C1.7126 11.7724 1.4279 11.87 1.13754 11.8558C0.843338 11.8729 0.553997 11.7751 0.330534 11.583C-0.110178 11.1397 -0.110178 10.4237 0.330534 9.98036L4.3826 5.9282L0.330496 1.876C-0.0778002 1.39921 -0.0222901 0.681655 0.454505 0.273321C0.880057 -0.0911069 1.50766 -0.0911069 1.93318 0.273321Z"
      fill="#58585A" />
  </svg>
</button>
<div class=''>
  <h2 class="text-center">{l s='Szukaj' d='Shop.Istheme'}</h2>
  {hook h='displayTop' mod='ybc_blocksearch'}
  <div class='saved_search'>

    <h4 class="">{l s='Popularne wyszukiwania' d='Shop.Istheme'}</h4>
    <div class='saved_search__list '>
      {assign var='suggestion' value=Ybc_search_suggestion::getSuggestion([])}
      {foreach from=$suggestion item=singleSuggestion}
      <a class="saved_search__name"
        href="/search-result?search_query={$singleSuggestion.keyword}">{$singleSuggestion.keyword}</a>
      {/foreach}
    </div>
  </div>
</div>

<div id="_mobile_search_from">
</div>
{/block}