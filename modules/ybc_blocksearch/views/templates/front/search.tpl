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

{extends file="page.tpl"}
{block name='breadcrumb'}
    {$smarty.block.parent}
{/block}
{block name="content_wrapper"}
    <div id="content-wrapper" class="ybc_search_page_content">
        {block name='product_list_header'}
            {if isset($keyWord) && $keyWord}
                <h1 id="js-product-list-header" class="h2">
                    {if isset($title_page) && $title_page}{$title_page|escape:'html':'UTF-8'}{else}{l s='Search results for' mod='ybc_blocksearch'}{/if}
                    <span class="key_search">"{$keyWord|escape:'html':'UTF-8'}"</span>
                </h1>
            {/if}
        {/block}
        <div class="wrap_search">
            {if isset($no_type) && $no_type}
                <div class="status">
                    <div class="alert alert-warning" role="alert">
                        {$status|escape:'html':'UTF-8'}
                    </div>
                </div>
            {/if}
            {if isset($data) && !$data}
              <div class="wrap_search_nodata">
                {$noResultMsg nofilter}
              </div>
                {if $suggestProductBlock}
                    <div class="wrap_search_nodata_suggest">
                        <h4 class="suggest_product_title">{l s="Product You Might Also Like" mod="ybc_blocksearch"}</h4>
                        {$suggestProductBlock nofilter}
                    </div>
                {/if}

            {/if}
            {if isset($data) && $data}
                <input type="hidden" name="key_word" value="{$keyWord|escape:'html':'UTF-8'}" />
                <div class="wrap_header_tap">
                    <ul>
                        {foreach from=$data item='item'}
                            <li {if isset($id_list) && $id_list && $id_list == $item.id }class="active"{/if}>
                                <a class="ajax_tab ajax_tab_{$item.id|escape:'html':'UTF-8'} {if isset($id_list) && $id_list && $id_list == $item.id }active{/if}" href="#" data-tab-id="{$item.id|escape:'html':'UTF-8'}" >
                                    {$item.heading|escape:'html':'UTF-8'}
                                    {if isset($item.total)&& $item.total}<span>({$item.total|intval})</span>{/if}
                                </a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
                <div class="content_tab">
                    {if isset($html) && $html}
                        {$html nofilter}
                    {else}
                        {if isset($data) && $data}
                            {assign var='ik' value=0}
                            {foreach from=$data item='item'}
                                {assign var='ik' value=$ik+1}
                                {if $ik==1}
                                    {hook h='displayDataContent' id_list=$item.id keyWord=$keyWord}
                                {/if}
                            {/foreach}
                        {/if}
                    {/if}
                </div>
            {/if}
        </div>
    </div>
{/block}
