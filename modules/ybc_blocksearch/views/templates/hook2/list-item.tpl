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
    {if $wrapper}<div class="wrap_content_{$id_list|escape:'html':'UTF-8'} wrap_content"><div class="content_tab_{$id_list|escape:'html':'UTF-8'}">{/if}
    <div class="content_element" data-page="{$currentPage|intval}">
      jijjiji  {if isset($paggination) && $paggination}
            <div class="view_number_show">
                {include file="./showing_title.tpl"}
            </div>
        {/if}
        {foreach from=$datas item="data"}
            <div class="item" data-id="{$data.id_item|escape:'html':'UTF-8'}">
                <div class="item-content">
                    {if isset($data.url_img) && $data.url_img}
                        <div class="left_item">
                            <a href="{$data.link|escape:'html':'UTF-8'}">
                                {if isset($data.url_img) && $data.url_img}
                                    <img src="{$data.url_img|escape:'html':'UTF-8'}">
                                {/if}
                            </a>
                        </div>
                    {/if}
                    <div class="right_item">
                        {if $data.title}
                            <a href="{$data.link|escape:'html':'UTF-8'}">
                                <span class="title">{$data.title|escape:'html':'UTF-8'}</span>
                            </a>
                        {/if}
                        {if isset($data.shor_description) && $data.shor_description}
                            <p class="item_short_des">{$data.shor_description nofilter}</p>
                        {/if}
                        {if isset($data.count_product)}
                            <p class="item_count_product">{$data.count_product|intval} {if $data.count_product <= 1}{l s='product' mod='ybc_blocksearch'}{else}{l s='products' mod='ybc_blocksearch'}{/if}</p>
                        {/if}
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
    {if $wrapper}
        </div>
        {if isset($paggination) && $paggination}
            {$paggination nofilter}
        {/if}
        </div>
    {/if}
{/if}