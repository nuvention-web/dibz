<item>
<div class="col-md-4 portfolio-item">
  <img class="img-responsive" onload ={imgAppear} src="">
  <h3>{ itemname }</h3>
  <h4>${ price } <small>Accepting dibz until { bidtime }</small></h4>
  <p><b>Payment:</b> { payment }</p>
  <p><b>Pickup:</b> { pickup }</p>
  <p><b>Description:</b> { description }</p>
  <a class="btn btn-success" role="button" onclick={ goto( itemname, id ) }>
    Get Buyer Link
  </a>
  <a class="btn btn-success" role="button" onclick={ gotoitem( itemname, id ) }>View Dibz</a>


</div>

<script>
  this.imgAppear = function imgAppear() {
    console.log("made it")
    var storageRef = firebase.storage().ref();
    var imgRef = storageRef.child("images/{path}");
    imgRef.getDownloadURL().then(function(url) {
      var image = document.getElementsByClassName("img-responsive");
      image.src = url;
    });
  }
</script>

<script>
    // FIXME: You should scope the unique id to the user's name not the item's name
    // NOTE: every listing should have its own globally unique id, but verify against firebase
    this.goto = function (itemname, id) {
      return function () {
        riot.route('/buy/' + itemname + '/' + id)
      }
    }

    this.gotoitem = function (itemname, id) {
      return function () {
        riot.route('/view-item/' + itemname + '/' + id)
      }
    }

 </script>


</item>
