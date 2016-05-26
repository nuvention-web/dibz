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
                  <!-- File Input -->
                  <div class="form-group">
                      <label class="col-md-4 control-label" for="item-file">Image</label>
                      <div class="col-md-4">
                          <input id="item-file" name="item-file" type="file" class="form-control input-md" required>
                      </div>
                  </div>
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
                          <input id="item-bid" name="item-bid" type="date" placeholder="Date when bidding will close." class="form-control input-md" required>
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

              <!-- Add to Firebase -->
              <script type = "text/javascript">
                this.addToDB = function addToDB() {
                  var numitems = 0;
                  firebase.database().ref('/listing1/numitems').once("value", function(snap) {
                    numitems = snap.val();
                  });

                  var bid = document.getElementById("item-bid").value;
                  var describe = document.getElementById("item-description").value;
                  var name = document.getElementById("item-title").value;
                  var pay = document.getElementById("item-payment").value;
                  var pick = document.getElementById("item-pickup").value;
                  var price = document.getElementById("item-price").value;

                  firebase.database().ref('/listing1/item' + numitems.toString() + '/').set({
                    bidtime: bid,
                    description: describe,
                    id: numitems,
                    itemdibz: "",
                    itemname: name,
                    payment: pay,
                    pickup: pick,
                    price: price
                    }, function () {
                      firebase.database().ref('/listing1/numitems').set(numitems + 1, function () {
                      window.location.href = '/#/manage'
                    });
                  });
                }
              </script>

              <button type="button" class="btn btn-success btn-lg" id ="add" onclick="{addToDB}">Add Item
              </button>

              <br>
              <br>
          </form>
          <br>
          <!-- <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">
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
          </div> -->


        <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</new-item>
