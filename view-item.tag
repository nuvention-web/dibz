<view-item>

    <div class="row">

      <div class="col-md-1">
      </div>

      <item each="{ items }" ></item>

      <div class="col-md-6">
        <img id = "placeImgHere" class="img-responsive dibz-item-image" style = "max-height: 500px;" src="" alt="">
      </div>

      <div class="col-md-5">


        <div class="col-md-12">
                  <h3 id = "DibzHere">My Dibz</h3>
                  <br>
        </div>

        <div>
              <!--<topdib dib="{ dibz[0] }"></topdib> -->
              <diblist each="{ dibz }"></diblist>

              <script type = "text/javascript">
                var self = this

                self.dibz = []

                var id = sessionStorage.getItem("sellerItemID")

                firebase.auth().onAuthStateChanged(function (user) {
                  if (user) {
                    firebase.database().ref('/listing' + user.uid + '/item' + id + '/itemdibz/').on('child_added', function (snap) {
                      console.log(snap.val())
                      var value = snap.val()
                      if (value instanceof Object) {
                        self.dibz.push(snap.val())
                        self.update()
                      }
                    })
                  } else {
                    // No user is signed in.
                    riot.route('/')
                  }
                });
              </script>

       </div>

      </div>

    </div>


    <script>
      riot.route('/view-item/*/*', function (itemname, id) {
        // get the data from firebase and then update the view
      })

  		/* this.dibz = [{
  			buyername:"Niki Patel",
  			buyercontact:"nikitapatel2017@u.northwestern.edu",
  			buyeroffer:2
  		},
  		{
  			buyername:"Alaina Kafkes",
  			buyercontact:"alainak@u.northwestern.edu",
  			buyeroffer:5
  		},
  		{
  			buyername:"Haley De Boom",
  			buyercontact:"hd@u.northwestern.edu",
  			buyeroffer:1
  		}] */


      this.dibz = this.dibz.sort(
        function (a, b) {
          if (a.buyeroffer > b.buyeroffer){
            return -1
          }
          else {
            return 1
          }
        }
      )
      console.log(this.dibz)

  	</script>


</view-item>
