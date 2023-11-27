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
<p style="margin-top: 15px;">
    <strong>*{l s='You can set a cron job that will rebuild your index using the following URL:' mod='ybc_blocksearch'}</strong><br/>
    <span class="ybc_blocksearch_php_command">* * * * * {$php_path|escape:'html':'UTF-8'} {$dir_cronjob|escape:'html':'UTF-8'}
        secure={$YBC_BLOCKSEARCH_CRONJOB_TOKEN|escape:'html':'UTF-8'}</span>
</p>
<p style="margin-top: 5px;">
    <strong>*{l s='Manually rebuild your index by running the following URL on your web browser' mod='ybc_blocksearch'}</strong><br />
    <a class="btn btn-default btn-run-cronjob" target="_blank" href="{$link_cronjob|escape:'html':'UTF-8'}">{l s='Execute cronjob manually' mod='ybc_blocksearch'}</a>
</p>