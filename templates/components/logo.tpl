<a href="{$urls.pages.index}">
{images_block webpEnabled=$webpEnabled}
<img {if !empty($shop.logo_details)} src="{$shop.logo_details.src}"
    width="{$shop.logo_details.width}" height="{$shop.logo_details.height}" {else}
    src="{$shop.logo}" {/if} class="logo img-fluid"
    alt="{$shop.name} {l s='logo' d='Shop.Theme.Global'}">
{/images_block}
</a>