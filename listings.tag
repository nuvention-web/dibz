<listings>
  <item each="{ items }" ></item>

  <script type = "text/javascript">
    var self = this

    firebase.auth().onAuthStateChanged(function (user) {
      if (user) {
        // allow page to load
        self.items = []

        firebase.database().ref('/listing' + firebase.auth().currentUser.uid + '/').on("value", function (snap) {
          console.log('you got here')
          snap.forEach(function(childSnap) {
            console.log(childSnap.val())
            self.items.push(childSnap.val())
          })
          self.update()
        })
      } else {
        // No user is signed in.
        riot.route('/')
      }
    });
  </script>

</listings>
