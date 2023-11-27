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
<!-- Block search module paggnation -->
{if isset($total_pages) && $total_pages}
    <ul class="pagination_search pagination_search_{$list_id|escape:'html':'UTF-8'} pull-right" {if $total_pages == '1'}style="display: none;" {/if}>
        <li {if $currentPage <= 1}class="disabled"{/if}>
            <a href="{if $currentPage <= 1}javascript:void(0);{else}{$search_ajax_link|escape:'html':'UTF-8'}&page=1{/if}" class="pagination-link" data-page="1" data-list-id="{$list_id|escape:'html':'UTF-8'}">
                <i class="icon icon_svg icon duoble_left">
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="angle-double-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-angle-double-left fa-w-10 fa-9x"><path fill="currentColorFill" d="M153.1 247.5l117.8-116c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L192.7 256l102.2 100.4c4.7 4.7 4.7 12.3 0 17l-7.1 7.1c-4.7 4.7-12.3 4.7-17 0L153 264.5c-4.6-4.7-4.6-12.3.1-17zm-128 17l117.8 116c4.7 4.7 12.3 4.7 17 0l7.1-7.1c4.7-4.7 4.7-12.3 0-17L64.7 256l102.2-100.4c4.7-4.7 4.7-12.3 0-17l-7.1-7.1c-4.7-4.7-12.3-4.7-17 0L25 247.5c-4.6 4.7-4.6 12.3.1 17z" class=""></path></svg>
                </i>
            </a>
        </li>
        <li {if $currentPage <= 1}class="disabled"{/if}>
            <a href="{if $currentPage <= 1}javascript:void(0);{else}{$search_ajax_link|escape:'html':'UTF-8'}&page={$currentPage|intval - 1}{/if}" class="pagination-link" data-page="{$currentPage|intval - 1}" data-list-id="{$list_id|escape:'html':'UTF-8'}">
                <i class="icon icon_scg angle_left">
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="angle-left" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512" class="svg-inline--fa fa-angle-left fa-w-6 fa-9x"><path fill="currentColorFill" d="M25.1 247.5l117.8-116c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L64.7 256l102.2 100.4c4.7 4.7 4.7 12.3 0 17l-7.1 7.1c-4.7 4.7-12.3 4.7-17 0L25 264.5c-4.6-4.7-4.6-12.3.1-17z" class=""></path></svg>
                </i>
            </a>
        </li>
        {assign p 0}
        {while $p++ < $total_pages}
            {if $p < $currentPage-2}
                <li class="disabled">
                    <a href="javascript:void(0);">&hellip;</a>
                </li>
                {assign p $currentPage-3}
            {elseif $p > $currentPage+2}
                <li class="disabled">
                    <a href="javascript:void(0);">&hellip;</a>
                </li>
                {assign p $total_pages}
            {else}
                <li {if $p == $currentPage}class="active"{/if}>
                    <a href="{$search_ajax_link|escape:'html':'UTF-8'}&page={$p|intval}" class="pagination-link {if $p == $currentPage}active{/if}" data-page="{$p|intval}" data-list-id="{$list_id|escape:'html':'UTF-8'}">{$p|intval}</a>
                </li>
            {/if}
        {/while}
        <li {if $currentPage >= $total_pages}class="disabled"{/if}>
            <a href="{if $currentPage >= $total_pages}javascript:void(0);{else}{$search_ajax_link|escape:'html':'UTF-8'}{/if}&page={$currentPage|intval + 1}" class="pagination-link" data-page="{$currentPage|intval + 1}" data-list-id="{$list_id|escape:'html':'UTF-8'}">
                <i class="icon icon_svg angle_right">
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 192 512" class="svg-inline--fa fa-angle-right fa-w-6 fa-9x"><path fill="currentColorFill" d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z" class=""></path></svg>
                </i>
            </a>
        </li>
        <li {if $currentPage >= $total_pages}class="disabled"{/if}>
            <a href="{if $currentPage >= $total_pages}javascript:void(0);{else}{$search_ajax_link|escape:'html':'UTF-8'}&page={$total_pages|intval}{/if}" class="pagination-link" data-page="{$total_pages|intval}" data-list-id="{$list_id|escape:'html':'UTF-8'}">
                <i class="icon icon_svg double_right">
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="angle-double-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-angle-double-right fa-w-10 fa-9x"><path fill="currentColorFill" d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17zm128-17l-117.8-116c-4.7-4.7-12.3-4.7-17 0l-7.1 7.1c-4.7 4.7-4.7 12.3 0 17L255.3 256 153.1 356.4c-4.7 4.7-4.7 12.3 0 17l7.1 7.1c4.7 4.7 12.3 4.7 17 0l117.8-116c4.6-4.7 4.6-12.3-.1-17z" class=""></path></svg>
                </i>
            </a>
        </li>
    </ul>
{/if}