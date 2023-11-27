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
<div class="wrap_content_product wrap_content featured-products">
  <div class="content_tab_product products">
      {if $is17}
          {foreach from=$data item="product"}
              {capture assign="productClasses"}{if !empty($productClass)}{$productClass|escape:'html':'UTF-8'}{else}col-xs-6 col-lg-4 col-xl-3{/if}{/capture}
              {include file="catalog/_partials/miniatures/product.tpl" product=$product page=$page productClasses=$productClasses}
          {/foreach}
      {else}
        {include file="$tpl_dir./product-list.tpl" class="product_list grid row" products=$data}
      {/if}
  </div>
</div>