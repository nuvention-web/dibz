<main>

	<navigation></navigation>
    <login show={view.login}></login>
    <manage-page show={view.managepage}></manage-page>
    <new-item show={view.newitem}></new-item>
    <view-item show={view.viewitem}></view-item>
    <buy-item show={view.buy}></buy-item>

    <script>
    	this.view = {
    		managepage: false,
    		login: true,
    		newitem: false,
    		viewitem: false,
    		buy: false
    	}
    </script>
</main>
