<item>
<div class="col-md-4 portfolio-item">
  <img class="img-responsive dibz-item-image" src="" style = "max-height: 200px;">
  <h3>{ itemname }</h3>
  <h4>${ price } <small>Accepting dibz until { bidtime }</small></h4>
  <p><b>Payment:</b> { payment }</p>
  <p><b>Pickup:</b> { pickup }</p>
  <p><b>Description:</b> { description }</p>
  <a class="btn btn-success" role="button" onclick={ goto( itemname, bidtime, price, payment, id ) }>
    Get Buyer Link
  </a>
  <!-- note: id = itemname breaks if multiple things have the same item name -->
  <a id = "{itemname}" class="btn btn-success" role="button" onclick={ gotoitem( itemname, id ) }>View Dibz</a>
</div>

<script type = "text/javascript">
  var self = this

  console.log(self)

  // Separate this out into its own lib.js or something so you can call it as a function
  var imgRef = firebase.storage().ref("images/" + self.path);
  imgRef.getDownloadURL().then(function(url) {
    console.log("Image URL: " + url)
    var image = document.getElementsByClassName('dibz-item-image')[self.id]
    image.src = url;
  });

  // FIXME: You should scope the unique id to the user's name not the item's name
  // NOTE: every listing should have its own globally unique id, but verify against firebase
  this.goto = function (itemname, bidtime, price, payment, id) {
    return function () {
      console.log(id)
      document.getElementById("BuyerItem").innerHTML = itemname + ", purchase by " + bidtime + ".";
      document.getElementById("BuyerPrice").innerHTML = "Asking for $" + price + ". Payment: " + payment + ".";
      var imgSrc = document.getElementsByClassName('dibz-item-image')[self.id].src;
      //var imgSrc = document.getElementsByClassName("dibz-item-image").src;
      var nextImg = document.getElementById("placeImgHere")
      var sellerUserID = firebase.auth().currentUser.uid
      sessionStorage.setItem("sellerUserID", firebase.auth().currentUser.uid)
      var itemID = id
      sessionStorage.setItem("itemID", id)
      console.log(sessionStorage.getItem("itemID"))
      nextImg.src = imgSrc;
      document.getElementById("BuyerImage").innerHTML = '<img id = "placeImgHere" class="img-responsive dibz-item-image" style = "max-height: 500px;" src='+ imgSrc + '>'
      riot.route('/buy')
    }
  }

  this.gotoitem = function (itemname, id) {
    return function () {
      document.getElementById("DibzHere").innerHTML = "Who called dibz on " + itemname + "?";
      sessionStorage.setItem("sellerItemID", id)
      var imgSrc = document.getElementsByClassName('dibz-item-image')[self.id].src;
      //var imgSrc = document.getElementsByClassName("dibz-item-image").src;
      var nextImg = document.getElementById("placeImgHere")
      nextImg.src = imgSrc;
      riot.route('/view-item/' + itemname + '/' + id)
    }
  }
 </script>


</item>
