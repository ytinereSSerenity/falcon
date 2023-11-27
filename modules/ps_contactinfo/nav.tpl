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
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<div id="_desktop_contact_link" class="col">
  <div id="contact-link">
    {if $contact_infos.phone}
      {* [1][/1] is for a HTML tag. *}
      <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M18.8465 14.9416L18.861 14.9048C19.2215 14.0004 18.8605 12.9685 18.0148 12.4861L15.0195 10.7569C14.0799 10.2159 12.8798 10.5374 12.3366 11.4757C12.1807 11.7457 11.9072 12.0856 11.4897 12.171C11.1307 12.2533 10.7537 12.1686 10.4644 11.9406C9.33725 11.0948 7.9053 9.6627 7.05925 8.53544C6.83122 8.24617 6.7465 7.86917 6.82885 7.51015C6.91423 7.09262 7.2541 6.8191 7.52413 6.66324C8.46245 6.12008 8.78402 4.91989 8.24298 3.98036L6.51376 0.985059C6.03132 0.139495 4.99965 -0.221416 4.09531 0.139003L4.05872 0.153364C2.63007 0.714173 1.58575 1.14436 1.15604 1.57411C0.0343491 2.69572 -0.278803 4.33262 0.250427 6.30775C0.872761 8.63025 2.65256 11.385 5.13362 13.8662C7.61468 16.3474 10.3697 18.1272 12.6922 18.7496C13.2675 18.9097 13.8613 18.9939 14.4585 19C15.6508 19 16.6589 18.611 17.4259 17.844C17.8558 17.4143 18.2858 16.37 18.8465 14.9416ZM14.2778 12.0423L17.2731 13.7716C17.4815 13.8878 17.5701 14.1414 17.4795 14.3621L17.4651 14.3989L17.4645 14.4004C17.1921 15.0942 16.6263 16.5351 16.3765 16.7942C15.6409 17.5298 14.5305 17.7052 13.0765 17.3156C8.71025 16.1457 2.85443 10.2899 1.68446 5.92351C1.29483 4.46937 1.47028 3.35914 2.20549 2.62385C2.46514 2.37348 3.90792 1.80703 4.60128 1.53485L4.63794 1.52045C4.69556 1.49757 4.75696 1.48573 4.81895 1.48553C4.98915 1.48603 5.14581 1.57841 5.22862 1.7271L6.95821 4.7227C7.09036 4.95215 7.01184 5.24528 6.78269 5.37795C6.02807 5.81359 5.52826 6.4652 5.37531 7.21292C5.20726 7.98801 5.38916 8.79776 5.87255 9.42651C6.80689 10.6716 8.32901 12.1937 9.57401 13.128C10.2028 13.6113 11.0125 13.7932 11.7876 13.6252C12.5353 13.4724 13.1868 12.9726 13.6225 12.2179C13.7559 11.9896 14.0482 11.9113 14.2778 12.0423Z"
          fill="#58585A" />
      </svg>
      {l
              s='[1]%phone%[/1]'
              sprintf=[
                '[1]' => "<a href='tel:{$contact_infos['phone']|replace:' ':''}'>",
      '[/1]' => '</a>',
      '%phone%' => $contact_infos.phone
      ]
      d='Shop.Theme.Global'
      }
    {else}
      <a href="{$urls.pages.contact}">{l s='Contact us' d='Shop.Theme.Global'}</a>
    {/if}

  </div>
  <div id="contact-link">
    {if $contact_infos.email}
      {* [1][/1] is for a HTML tag. *}
      <svg width="21" height="14" viewBox="0 0 21 14" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
          d="M18.2599 0H1.88982C0.847781 0 0 0.875999 0 1.95275V12.0473C0 13.124 0.847703 14 1.88974 14H18.2599C19.3019 14 20.1496 13.124 20.1496 12.0473V1.95275C20.1497 0.875999 19.3019 0 18.2599 0ZM1.25935 12.0473V2.03799L7.28209 7.37407L1.26026 12.0657L1.25981 12.0572C1.25958 12.0539 1.25935 12.0506 1.25935 12.0473ZM2.27959 1.25936L10.0748 8.16589L17.8701 1.25936H2.27959ZM8.2409 8.2235L9.65732 9.47845C9.89565 9.68959 10.2541 9.68959 10.4924 9.47845L11.9088 8.2235L17.7066 12.7406H2.44303L8.2409 8.2235ZM18.8903 2.03803L12.8676 7.37407L18.8895 12.0656C18.8895 12.0628 18.8897 12.0601 18.8899 12.0573C18.8901 12.054 18.8903 12.0506 18.8903 12.0473V2.03803Z"
          fill="#58585A" />
      </svg>
      {l
            s='[1]%phone%[/1]'
            sprintf=[
              '[1]' => "<a href='mailto:{$contact_infos['email']|replace:' ':''}'>",
      '[/1]' => '</a>',
      '%phone%' => $contact_infos.email
      ]
      d='Shop.Theme.Global'
      }
    {/if}
  </div>
</div>