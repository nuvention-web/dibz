<login>
<div class="container">

  <div class="row">
      <div class="col-lg-12">
          <h3 class="page-header" style = "font-family: 'Noto Sans', sans-serif; text-align: center">
          	<img src = "logo/Slide2.png" style = "height: 250px; display: block; margin: 0 auto">
              Store, share & sell all your items under <b style = "letter-spacing:1px">one link</b>.
              <div id="firebaseui-auth-container"></div>
          </h3>

      </div>
  </div>
  <!-- /.row -->

<!-- BEGIN # MODAL LOGIN -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header" align="center">
			<img id="img_logo" src="logo/Slide1.png">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
			</button>
		</div>

    <!-- Begin # DIV Form -->
    <div id="div-forms">
      <form id="login-form">
        <div class="modal-body">
		        <div id="div-login-msg">
              <div id="icon-login-msg" class="glyphicon glyphicon-chevron-right"></div>
              <span id="text-login-msg">Type your email address and password.</span>
            </div>
		        <input id="login_username" class="form-control" type="text" placeholder="Email address" required>
		        <input id="login_password" class="form-control" type="password" placeholder="Password" required>
              <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div>
    	</div>
    <div class="modal-footer">
                <div>
                    <a type="button" onclick="verifyUser();" class="btn btn-primary btn-lg btn-block">Login</a>
                </div>
	    <div>
                    <button id="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                    <button id="login_register_btn" type="button" class="btn btn-link">Register</button>
                </div>
    </div>
        </form>
        <!-- End # Login Form -->

        <!-- Begin | Lost Password Form -->
        <form id="lost-form" style="display:none;">
	    <div class="modal-body">
		<div id="div-lost-msg">
                    <div id="icon-lost-msg" class="glyphicon glyphicon-chevron-right"></div>
                    <span id="text-lost-msg">Enter your email address.</span>
                </div>
		<input id="lost_email" class="form-control" type="text" placeholder="Email address" required>
			</div>
    <div class="modal-footer">
                <div>
                    <button type="button" class="btn btn-primary btn-lg btn-block">Send</button>
                </div>
                <div>
                    <button id="lost_login_btn" type="button" class="btn btn-link">Log In</button>
                    <button id="lost_register_btn" type="button" class="btn btn-link">Register</button>
                </div>
    </div>
        </form>
        <!-- End | Lost Password Form -->

        <!-- Begin | Register Form -->
        <form id="register-form" style="display:none;">
		    <div class="modal-body">
		<div id="div-register-msg">
                    <div id="icon-register-msg" class="glyphicon glyphicon-chevron-right"></div>
                    <span id="text-register-msg">Register an account.</span>
                </div>
		<!--<input id="register_username" class="form-control" type="text" placeholder="Username (type ERROR for error effect)" required>-->
                <input id="register_name" class="form-control" type="text" placeholder="First & last name" required>
                <input id="register_phone" class="form-control" type="text" placeholder="Phone number (optional)">
                <input id="register_email" class="form-control" type="text" placeholder="Email address" required>
                <input id="register_password" class="form-control" type="password" placeholder="Password" required>
			</div>
    <div class="modal-footer">
                <div>
                    <button type="button" onclick="addUser();" class="btn btn-primary btn-lg btn-block">Register</button>
                </div>
                <div>
                    <button id="register_login_btn" type="button" class="btn btn-link">Log In</button>
                    <button id="register_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                </div>
    </div>
        </form>
        <!-- End | Register Form -->

    </div>
    <!-- End # DIV Form -->

			</div>
		</div>
	</div>

</login>
