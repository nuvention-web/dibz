<buy-item>
	<script type="text/javascript" src="http://www.parsecdn.com/js/parse-latest.js"></script>


<div class="col-md-4 portfolio-item">
        <h3>{ itemname }</h3>
        <h4><p>${ price }</p></h4>
        <p>Accepting dibz for { bidtime } hours</p>
        <p>Payment: { payment }</p>
        <p>Pickup: { pickup }</p>
        <p>{ description }</p>
        <a class="btn btn-success" role="button" data-toggle="modal" data-target="#dibz-modal"><h4>Call Dibz!</h4></a>
        <br>
        <br>

<!-- BEGIN # MODAL LOGIN -->
<div class="modal fade" id="dibz-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
					<img id="img_logo" src="logo/Slide1.png" style = "max-height: 200px;">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>

                <!-- Begin # DIV Form -->
                <div id="div-forms">

                    <!-- Begin # Login Form -->
                    <form id="login-form">
		                <div class="modal-body">
				    		<div id="div-login-msg">
                                <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
                                <span id="text-login-msg">Enter your name, email address, and dibz below.</span>
                            </div>
                            <br>
				    		<input id="login_username" class="form-control" type="text" placeholder="Name (first and last)" required>
				    		<input id="login_email" class="form-control" type="email" placeholder="Email address" required>
                            <div class="input-group">
                                <div class="input-group-addon">$</div>
				    		    <input id="login_password" class="form-control" type="text" placeholder="Dibz (offer)" required>
                            </div>

                            <!--<div class="checkbox">
                                <label>
                                    <input type="checkbox"> Email me a confirmation notice.
                                </label>
                            </div>-->
        		    	</div>
				        <div class="modal-footer">
                            <div>
                                <a href = "confirm.html" type="button" class="btn btn-primary btn-lg btn-block" id = "dibz">Submit My Dibz!</a>
                            </div>
				    	    <!--<div>
                                <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                                <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
                            </div>-->
				        </div>
                    </form>
                    <!-- End # Login Form -->

                </div>
                <!-- End # DIV Form -->

			</div>
		</div>
	</div>
    <!-- END # MODAL LOGIN -->

</div>

<script>

        this.update({
        itemname:"LEI",
        itemtag: "lei",
        image:1,
        price:0,
        bidtime:24,
        payment:"N/A",
        pickup:"The Garage",
        description:"NUvention Launch only."
        })

</script>



</buy-item>
