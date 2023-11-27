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

<script type="text/javascript">
    {if isset($current_tab_active)&&$current_tab_active}
    var current_tab_active ='{$current_tab_active|escape:'quotes':'UTF-8'}';
    {else}
    var current_tab_active ='general';
    {/if}

    var url_ajax_admin = '{$url_ajax_admin|escape:'quotes':'UTF-8'}';
    var delete_item_text = '{l s='Delete selected item?' mod='ybc_blocksearch' js=1}';
</script>
<script type="text/javascript" src="{$admin_js_search_url|escape:'html':'UTF-8'}"></script>
<link rel="stylesheet" type="text/css" href="{$admin_css_search_url|escape:'html':'UTF-8'}">
