<buy-item>


<div class="col-md-4 portfolio-item">
        <img class="img-responsive" id="dibz-buy-image" src="" style = "max-height: 200px;">
        <span id = "BuyerImage"><img id = "placeImgHere" class="img-responsive dibz-item-image" style = "max-height: 500px;" src=""></span>
        <h3 id="BuyerItem">{ itemname }</h3>
        <h4 id="BuyerPrice"><p>${ price }</p></h4>
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
					<img class = "img-responsive" id="img_logo" src="/logo/Slide1.png" "max-height: 200px;">
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
                                <span id="text-login-msg">Enter your name, email address, and dib offer below.</span>
                            </div>
                            <br>
				    		<input id="login_username" class="form-control" type="text" placeholder="Name (first and last)" required> 
				    		<input id="login_email" class="form-control" type="email" placeholder="Email address"  required>
                            <div class="input-group">
                                <div class="input-group-addon" id="price">$</div>
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
                                <a type="button" class="btn btn-primary btn-lg btn-block" id="dibz" onclick="{DibToDB}">Submit My Dib!</a>
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

    var self = this
    var name;
    riot.route('/buy/*', function (listingData) {
        listingData = listingData.replace("-", "/");
        console.log(listingData)
        firebase.database().ref(listingData).once('value', function(snapshot){
            var item = snapshot.val()
            name = item.itemname
            self.update(item)

            var imgRef = firebase.storage().ref("images/" + item.path);
            imgRef.getDownloadURL().then(function(url) {
                console.log("Image URL: " + url)
                var image = document.getElementById('dibz-buy-image')
                image.src = url;
            });
        })
    })
    // function goTo(){
    //     var price = document.getElementById("price").value;
    //     var email = document.getElementById("login_email").value;
    //     var href_val = "confirm/"+ name + "/" + price + "/" + email
    //     window.location.href = "www.dibzmarket.com/"+ href_val
    // }
    //document.getElementById("dibz").onclick = goTo();
    this.DibToDB = function DibToDB() {
        var buyername = document.getElementById("login_username").value;
        var buyeremail = document.getElementById("login_email").value;
        var buyeroffer = document.getElementById("login_password").value;
        var href_val = "confirm/"+ name + "--" + buyeroffer + "--" + buyeremail
        console.log(href_val);
        
        var currentUserID = sessionStorage.getItem("sellerUserID");
        var itemID = sessionStorage.getItem("itemID");

        // var buyername = document.getElementById("login_username").value;
        // var buyeremail = document.getElementById("login_email").value;
        // var buyeroffer = document.getElementById("login_password").value;

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
        //window.location.href = href_val;
   
        }
</script>




</buy-item>

