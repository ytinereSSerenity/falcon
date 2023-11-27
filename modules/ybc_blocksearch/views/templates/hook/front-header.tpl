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
  var main_color='{$main_color|escape:'html':'UTF-8'}';
  var text_color='{$text_color|escape:'html':'UTF-8'}';
</script>
{if isset($search_query) && $search_query}
    <script type="text/javascript">
        var search_query ='{$search_query|escape:'html':'UTF-8'}';
    </script>
{/if}
{if isset($is176) && $is176}
    <script type="text/javascript">
        var is176 ='{$is176|escape:'html':'UTF-8'}';
    </script>
{/if}
{if isset($YBC_BLOCKSEARCH_OVERLAY) && $YBC_BLOCKSEARCH_OVERLAY}
    <script type="text/javascript">
        var YBC_BLOCKSEARCH_OVERLAY ='{$YBC_BLOCKSEARCH_OVERLAY|intval}';
        var YBC_BLOCKSEARCH_SEARCH_SUGGESTION ='{$YBC_BLOCKSEARCH_SEARCH_SUGGESTION|intval}';
    </script>
{/if}