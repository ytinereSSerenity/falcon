
document.addEventListener('click',function(e){
    if(e.target && e.target.id== 'checkout_products_btn'){
        event.preventDefault();
        e.target.closest('.checkout-block').classList.toggle('open');
    }
});
