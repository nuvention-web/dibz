<buy-item>
	<script type="text/javascript" src="http://www.parsecdn.com/js/parse-latest.js"></script>

<div class="col-md-4 portfolio-item">
	<span id = "BuyerImage"><img id = "placeImgHere" class="img-responsive dibz-item-image" style = "max-height: 500px;" src=""></span>
  <h3 id = "BuyerItem">{ itemname }</h3>
  <h4><p id = "BuyerPrice">${ price }</p></h4>
  <a class="btn btn-success" role="button" data-toggle="modal" data-target="#dibz-modal"><h4>Call Dibz!</h4></a>
  <br>
  <br>
</div>

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

        		    	</div>
				        <div class="modal-footer">
                            <div>
                                <a type="button" class="btn btn-primary btn-lg btn-block" id = "dibz" onclick = "{DibToDB}">Submit My Dibz!</a>
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

<script type = "text/javascript">
	// Add to Database Function
	this.DibToDB = function DibToDB() {
		var currentUserID = sessionStorage.getItem("sellerUserID");
		var itemID = sessionStorage.getItem("itemID");

		var buyername = document.getElementById("login_username").value;
		var buyeremail = document.getElementById("login_email").value;
		var buyeroffer = document.getElementById("login_password").value;

		firebase.database().ref('/listing' + currentUserID + '/numitems/').once("value", function(snap) {
			var numitems = snap.val();

			firebase.database().ref('/listing' + currentUserID + '/item' + itemID + '/itemdibz/' + buyername + '/').set({
				dibzname: buyername,
				dibzemail: buyeremail,
				dibzoffer: buyeroffer
				}, function () {
					//riot.route('/manage')
					console.log("success!")
				});
			});
		}
</script>




</buy-item>
