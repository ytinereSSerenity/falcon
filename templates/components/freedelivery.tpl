{assign var="freeAmount" value=floatval(Configuration::get('PS_SHIPPING_FREE_PRICE')) -
                                    floatval($cart.totals.total_including_tax.value) }
{if $freeAmount > 0}
    <div class="free_delivery_message border mt-4 p-2">
        {l s='Do darmowej dostawy brakuje:' d='Shop.Istheme'} <strong>{Tools::displayPrice($freeAmount)}</strong>
    </div>
{/if}