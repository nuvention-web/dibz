<item>
<div class="col-md-4 portfolio-item">
  <img class="img-responsive dibz-item-image" src="" style = "max-height: 200px;">
  <h3>{ itemname }</h3>
  <h4>${ price } <small>Accepting dibz until { bidtime }</small></h4>
  <p><b>Payment:</b> { payment }</p>
  <p><b>Pickup:</b> { pickup }</p>
  <p><b>Description:</b> { description }</p>
  <p id="bitly"> <b> Dibz Link Will Go Here! </b> </p>
  <a class="btn btn-success" role="button" onclick={ goto( path, id, itemname, bidtime, price, payment ) }>
    Get Dibz Link!
  </a>
  <a id = "{itemname}" class="btn btn-success" role="button" onclick={ gotoitem( itemname, id ) }>View Dibz</a>
</div>

<script type = "text/javascript">
var currentUserID = firebase.auth().currentUser.uid;
var stringForURL = 'listing'+currentUserID;

function callback(stuff) {

    //r urlToShow = stuff.data.url;
    document.getElementById('bitly').innerHTML = stuff;
    window.alert("Here's your link! " + stuff);
}

function httpGet(url) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText);
    }
    xmlHttp.open("GET", url, true);
    xmlHttp.send(null);
}
function generateModal() {
    $('myModal').modal('show');
}

  var self = this
  console.log(self)
  // Separate this out into its own lib.js or something so you can call it as a function
  var imgRef = firebase.storage().ref("images/" + self.path);
  imgRef.getDownloadURL().then(function(url) {
    console.log("Image URL: " + url)
    var image = document.getElementsByClassName('dibz-item-image')[self.id]
    image.src = url;
  });

  var pathlist = [];
  pathlist.length = 0;
  var query = firebase.database().ref('/listing'+currentUserID+'/');
  query.once('value').then(function(snapshot){
    snapshot.forEach(function(childSnapshot){
    var pathname = childSnapshot.val().path;
      if(typeof pathname !== "undefined"){
        pathlist.push(pathname);
        }
      });
    });
  // FIXME: You should scope the unique id to the user's name not the item's name
  // NOTE: every listing should have its own globally unique id, but verify against firebase
  this.goto = function (path, id, itemname, bidtime, price, payment) {
    return function () {
      console.log(id)
      document.getElementById("BuyerItem").innerHTML = itemname + ", purchase by " + bidtime + ".";
      document.getElementById("BuyerPrice").innerHTML = "Asking for $" + price + ". Payment: " + payment + ".";
      var imgSrc = document.getElementsByClassName('dibz-item-image')[self.id].src;
      var imgSrc = document.getElementsByClassName("dibz-item-image").src;
      var nextImg = document.getElementById("placeImgHere")
      var sellerUserID = firebase.auth().currentUser.uid
      sessionStorage.setItem("sellerUserID", firebase.auth().currentUser.uid)
      var itemID = id
      sessionStorage.setItem("itemID", id)
      console.log(sessionStorage.getItem("itemID"))
     nextImg.src = imgSrc;
      document.getElementById("BuyerImage").innerHTML = '<img id = "placeImgHere" class="img-responsive dibz-item-image" style = "max-height: 500px;" src='+ imgSrc + '>'

      var pathOfWantedItem = path;
      var indOfItem = -1;
      for (i = 0; i < pathlist.length; i++){
        if (pathlist[i] == pathOfWantedItem)
        {
          indOfItem = i; 
        }
        else {
          console.log("item not found!");
        }
      }
      var itemlisting = '/listing'+currentUserID+'-item'+indOfItem;
      var url = location.href;
      //url = location.href.replace(location.hash, location.hash.substr(1));
      url = location.href.replace('#manage', 'buy');
      url = url + itemlisting;
      var api = 'https://api-ssl.bitly.com//v3/shorten?access_token=1c3958d4df9ee6764cf0d6b68c7def84b8ed4cf5';
      url = encodeURIComponent(url);
      url = api + '&longUrl=' + url + '&format=txt';
      httpGet(url, window.alert("Generating Dibz Link!"));
      //riot.route('/buyitem/' + itemname + '/' + id)
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
