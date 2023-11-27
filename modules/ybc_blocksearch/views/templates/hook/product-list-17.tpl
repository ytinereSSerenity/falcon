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

{if isset($datas) && $datas}
    <!-- Products list -->
    {if $wrapper}<div class="wrap_content_product wrap_content featured-products">
        {if isset($sort_lists) && $sort_lists}
            <div class='flex items-center justify-between'>
            {if isset($paggination) && $paggination}
                <div class="view_number_show">
                    {include file="./showing_title.tpl"}
                </div>
            {/if}
            <form action="{$search_ajax_link|escape:'html':'UTF-8'}" method="post" class="ybc_search_sort_by_form">
                <label for="homecat_sort_by_{$id_list|escape:'html':'UTF-8'}">{l s='Sort by' mod='ybc_blocksearch'}</label>
                <select name="ybc_search_sort_by" id="ybc_search_sort_byOLD_{$id_list|escape:'html':'UTF-8'}" class="ybc_search_sort_by custom-select" data-id-list="{$id_list|escape:'html':'UTF-8'}">
                    {foreach from=$sort_lists item='option'}
                        <option {if $sort_by==$option.id_option}selected="selected"{/if} value="{$option.id_option|escape:'html':'UTF-8'}">{$option.name|escape:'html':'UTF-8'}</option>
                    {/foreach}
                </select>
            </form> 
            </div>
        {/if}
        <div class="content_tab_product products">{/if}
        
        {if isset($show_description) && !$show_description}
            {capture assign="productClasses"}{if !empty($productClass)}{$productClass|escape:'html':'UTF-8'}{else}col-xs-6 col-lg-4 col-xl-3{/if}{/capture}
        {/if}
        <div class='' id="js-product-list">
        <div class='products-list row '>
        {foreach from=$datas item="product"}
            {if isset($show_description) && $show_description}
       
                    {include file="catalog/_partials/miniatures/product.tpl" product=$product page=$page}
              
            {else}
                {include file="catalog/_partials/miniatures/product.tpl" product=$product page=$page productClasses=$productClasses}
            {/if}
        {/foreach} 
        </div>
        </div>
       
       
    {if $wrapper}
        </div>
        {if isset($paggination) && $paggination}
            {$paggination nofilter}
        {/if}
        </div>
    {/if}

{elseif $wrapper}
    <div class="search_product_list_wrapper {if isset($class) && $class}search-wrapper-{$class|escape:'html':'UTF-8'}{/if}">
        <div class="col-sm-12 col-xs-12">
            <div class="clearfix"></div>
            <span class="alert alert-warning">{l s='No products available' mod='ybc_blocksearch'}</span>
        </div>
    </div>
{/if}
