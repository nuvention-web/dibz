<new-item>

<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">NEW ITEM
                </h1>
            </div>
        </div>
        <form class="form-horizontal" method="post" action="<?php echo $_SERVER['dibzphp.php'];?>">
            <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-title">Item Title</label>
                    <div class="col-md-4">
                        <input id="item-title" name="item-title" type="text" placeholder="What are you selling?" class="form-control input-md" required>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-description">Description</label>
                    <div class="col-md-4">
                        <input id="item-description" name="item-description" type="text" placeholder="Keep it brief." class="form-control input-md" required>
                    </div>
                </div>
                <!--
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-description">Image</label>
                    <div class="col-md-4">
                        <form action="upload.php" method="post" enctype="multipart/form-data">
                            <input type="file" name="fileselect" id="fileselect"></input>
                            <input type="submit" value="Upload!" name="submit">
                        </form>
                    </div>
                </div>
                -->
                <!-- <form id="fileupload" name="fileupload" enctype="multipart/form-data" method="post">
                    <fieldset>
                        <input type="file" name="fileselect" id="fileselect"></input>
                        <input id="uploadbutton" type="button" value="Upload to Parse" />
                    </fieldset>
                </form> -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-price">Price</label>
                    <div class="col-md-4">
                        <div class="input-group">
                                <div class="input-group-addon">$</div>
                                <input id="item-price" name="item-price" type="number" placeholder="Minimum accepted offer." class="form-control input-md" required>
                            </div>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-bid">Bidding Period</label>
                    <div class="col-md-4">
                        <input id="item-bid" name="item-bid" type="number" placeholder="Date when bidding will close." class="form-control input-md" required>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-payment">Accepted Payment</label>
                    <div class="col-md-4">
                        <input id="item-payment" name="item-payment" type="text" placeholder="Cash, Venmo, PayPal, Dogecoin, etc." class="form-control input-md" required>
                    </div>
                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-pickup">Pick-Up Instructions</label>
                    <div class="col-md-4">
                        <textarea class="form-control" id="item-pickup" name="item-pickup" placeholder="Street address, times/days for pick-up, contact information, etc." required></textarea>
                    </div>
                </div>
            </fieldset>
            <div class="col-md-4"></div>
            <!-- <input type="submit"> -->
            <button type="button" class="btn btn-success btn-lg" id = "add" onclick="addToDB();" data-toggle="modal" data-target="#myModal">Add Item
            </button>
            
            <br>
            <br>
            <!--
            <form action="dibzphp.php">
                <input type="submit" value="Create Page (testing)"> 
            </form>
        -->
        </form>
        <br>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Item Added!</h4>
                    </div>
                    <div class="modal-body" id="bitly-input">
                        <p id="bitly">http://bit.ly/1TbkuhE </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>


        <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- Firebase -->
    <script src="https://cdn.firebase.com/js/client/2.4.2/firebase.js"></script>
    
    <script type = "text/javascript">
            function addToDB() {
                var listingsRef = new Firebase("https://dibz.firebaseio.com/account0/listings");
                var numRef = new Firebase("dibz.firebaseio.com/account0/numlistings");
                var numlistings = 0;
                
                numRef.once("value", function(snap) {
                    numlistings = snap.val();
                    console.log(numlistings);
                
                    var newlistingname = "listing" + numlistings.toString();
                    var newListingRef = new Firebase("dibz.firebaseio.com/account0/listings/" + newlistingname);
                
                    var bid = document.getElementById("item-bid").value;
                    var describe = document.getElementById("item-description").value;
                    var name = document.getElementById("item-title").value;
                    // var other = document.getElementById("").value;
                    var pay = document.getElementById("item-payment").value;
                    var pick = document.getElementById("item-pickup").value;
                    var price = document.getElementById("item-price").value;
                
                    newListingRef.set({
                        bidtime: bid,
                        description: describe,
                        id: numlistings,
                        itemdibz: "",
                        itemname: name,
                        other: "",
                        payment: pay,
                        pickup: pick,
                        price: price
                    }, function () {
                        numRef.set(numlistings + 1, function () {
                        window.location.href = '/manage.html'
                    });
                });
            }); 
        }
    </script>

</new-item>