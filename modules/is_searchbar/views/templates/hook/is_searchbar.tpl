<div class="header-top__block header-top__block--search col">

	<div id="_desktop_search_from" class="d-none d-md-block">
		<form class="search-form js-search-form" data-search-controller-url="{$ajax_search_url}" method="get"
			action="{$search_controller_url}">
			<div class="search-form__form-group">
				<input type="hidden" name="controller" value="search">
				<input class="js-search-input search-form__input form-control"
					placeholder="{l s='Enter what you are looking for' d='Modules.Issearchbar.Form'}" type="text"
					name="s" value="{$search_string}">
				<button type="submit" class="search-form__btn btn">
					<span class="material-icons">search</span>
				</button>
			</div>
		</form>
	</div>

	<a role="button" class="search-toggler header-top__link d-block d-md-none" data-toggle="modal"
		data-target="#saerchModal">
		<div class="header-top__icon-container">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd"
					d="M16.1112 15.2138L21.7913 20.8031C22.0691 21.0768 22.0691 21.5211 21.7906 21.7947C21.5128 22.0684 21.0617 22.0684 20.7839 21.7947L15.0818 16.1834C13.4905 17.4535 11.4647 18.2175 9.25593 18.2175C4.14384 18.2175 0 14.1397 0 9.10876C0 4.07781 4.14384 0 9.25593 0C14.368 0 18.5119 4.07781 18.5126 9.10876C18.5126 11.4606 17.5986 13.5978 16.1112 15.2138ZM1.42415 9.10876C1.42415 13.3654 4.93055 16.8161 9.25593 16.8161C13.5813 16.8161 17.0877 13.3654 17.0877 9.10876C17.0877 4.85211 13.5813 1.40144 9.25593 1.40144C4.93055 1.40144 1.42415 4.85211 1.42415 9.10876Z"
					fill="" />
			</svg>

		</div>
	</a>

</div>