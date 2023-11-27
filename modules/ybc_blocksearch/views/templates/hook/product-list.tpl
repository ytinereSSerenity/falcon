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
    {assign var="products" value=$datas}
    {assign var="page_name" value="search"}
    {if $wrapper}
        <div class="wrap_content_product wrap_content featured-products {if isset($show_description) && $show_description}show_description{/if}">
        {if isset($sort_lists) && $sort_lists}
            <form action="{$search_ajax_link|escape:'html':'UTF-8'}" method="post" class="ybc_search_sort_by_form">
                <label for="homecat_sort_by_{$id_list|escape:'html':'UTF-8'}">{l s='Sort by' mod='ybc_blocksearch'}</label>
                <select name="ybc_search_sort_by" id="ybc_search_sort_by_{$id_list|escape:'html':'UTF-8'}" class="ybc_search_sort_by" data-id-list="{$id_list|escape:'html':'UTF-8'}">
                    {foreach from=$sort_lists item='option'}
                        <option {if $sort_by==$option.id_option}selected="selected"{/if} value="{$option.id_option|escape:'html':'UTF-8'}">{$option.name|escape:'html':'UTF-8'}</option>
                    {/foreach}
                </select>
            </form>
        {/if}

        <div class="content_tab_product">{/if}
            {if isset($paggination) && $paggination}
                <div class="view_number_show">
                    {include file="./showing_title.tpl"}
                </div>
            {/if}
		{include file="$tpl_dir./product-list.tpl" class="product_list grid row" id="{if isset($id) && $id} {$id|escape:'html':'UTF-8'}{/if}"}
	   </div>
       {if $wrapper}
        {if isset($paggination) && $paggination}
            {$paggination nofilter}
        {/if}
        </div>
    {/if}
{elseif $wrapper}
	<div class="search_product_list_wrapper {if isset($class) && $class}search-wrapper-{$class|escape:'html':'UTF-8'}{/if}">
		<div class="col-sm-12 col-xs-12"><div class="clearfix"></div><span class="alert alert-warning">{l s='No products available' mod='ybc_blocksearch'}</span></div>
	</div>
{/if}
