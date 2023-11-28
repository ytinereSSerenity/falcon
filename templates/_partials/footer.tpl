{**
* Copyright since 2007 PrestaShop SA and Contributors
* PrestaShop is an International Registered Trademark & Property of PrestaShop SA
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License 3.0 (AFL-3.0)
* that is bundled with this package in the file LICENSE.md.
* It is also available through the world-wide-web at this URL:
* https://opensource.org/licenses/AFL-3.0
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to https://devdocs.prestashop.com/ for more information.
*
* @author PrestaShop SA and Contributors <contact@prestashop.com>
  * @copyright Since 2007 PrestaShop SA and Contributors
  * @license https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
  *}
  <div class="container">
    <div class="row">
      {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
      {/block}
    </div>
  </div>
  <div class="footer-container">
    <div class="container">
      <div class="row">
        {block name='hook_footer'}
        {hook h='displayFooter'}
        {/block}
      </div>
      <div class="row">
        {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
        {/block}
      </div>
    </div>
  </div>
  <div class=''>
    <div class='container relative mx-auto'>
      <div class='flex justify-between items-center'>
        <div class=''>
          {assign var="currentYear" value=$smarty.now|date_format:"%Y"}
          {assign var="shopName" value=Configuration::get('PS_SHOP_NAME')}
          {$currentYear} © Copyright by {$shopName}
        </div>
        <div class=''>
          Projekt i realizacja:
          <a href="https://4pixel.pl/">4Pixel</a>
        </div>
      </div>
    </div>
  </div>

  </div>
  </div>
  </div>
  </div>