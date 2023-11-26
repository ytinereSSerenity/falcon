{*
 * Copyright ETS Software Technology Co., Ltd
 *
 * NOTICE OF LICENSE
 *
 * This file is not open source! Each license that you purchased is only available for 1 website only.
 * If you want to use this file on more websites (or projects), you need to purchase additional licenses.
 * You are not allowed to redistribute, resell, lease, license, sub-license or offer our resources to any third party.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future.
 *
 * @author ETS Software Technology Co., Ltd
 * @copyright  ETS Software Technology Co., Ltd
 * @license    Valid for 1 website (or project) for each purchase of license
*}
<!-- Block search module TOP -->
<script type="text/javascript">
  var id_lang ={$id_lang|intval};
</script>
<div class="ets_search_block_top col-12">
  <form class="ybc_searchbox mt-8 mb-4 inline-block w-full" method="get" action="{if isset($page_search) && $page_search}{$page_search|escape:'html':'UTF-8'}{/if}">
    <input class="search_query form-control ybc_search_query search_query_top" type="text"  name="search_query" placeholder="{if isset($YBC_BLOCKSEARCH_PLACEHOLDER) && $YBC_BLOCKSEARCH_PLACEHOLDER}{$YBC_BLOCKSEARCH_PLACEHOLDER|escape:'html':'UTF-8'}{else}{l s='Enter product name ...' mod='ybc_blocksearch'}{/if}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
    <button type="submit"  class="btn btn-default button-search" >
      <i class="icon icon_svg icon_search">
        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="search" class="svg-inline--fa fa-search fa-w-16" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColorFill" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path></svg>
      </i>
    </button>
  </form>
  <div class="search_block_results relative" >
  </div>
</div>

<style type="text/css">
  {if isset($button_color) && $button_color}
  .ets_search_block_top .btn.button-search{
      background-color: {$button_color|escape:'html':'UTF-8'};
  }
  .ets_search_block_top .btn.button-search{
      color:{$button_color|escape:'html':'UTF-8'};
  }
  {/if}
  {if isset($button_hover) && $button_hover}
  .ets_search_block_top .btn.button-search:hover{
      background-color: {$button_hover|escape:'html':'UTF-8'};
  }
  {/if}
  {if isset($see_all_color) && $see_all_color}
  .search_block_results .box_button_see{
      background-color:{$see_all_color|escape:'html':'UTF-8'};
  }
  {/if}
  {if isset($see_all_hover) && $see_all_hover}
  .search_block_results .box_button_see:hover{
      background-color: {$see_all_hover|escape:'html':'UTF-8'};
  }
  {/if}
  {if isset($main_color) && $main_color}
  .wrap_header_tap ul li.active a{
      background-color: {$main_color|escape:'html':'UTF-8'};
  }
  {/if}
  {if isset($text_color) && $text_color}
  .ets_search_block_top .btn.button-search::before{
      color:{$text_color|escape:'html':'UTF-8'};
  }
  .title_group span.total{
      /*color:{$text_color|escape:'html':'UTF-8'};*/
  }
  a.ets_link_see{
      color:{$text_color|escape:'html':'UTF-8'} !important;
  }
  .wrap_header_tap ul li.active a{
      color:{$text_color|escape:'html':'UTF-8'} !important;
  }
  .wrap_header_tap ul li.active a span{
      color:{$text_color|escape:'html':'UTF-8'};
  }
  {/if}

</style>
<!-- /Block search module TOP -->
