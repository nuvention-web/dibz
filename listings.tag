<listings>
  <item each="{ items }" ></item>

  <script type = "text/javascript">
    var self = this

    self.items = []

    firebase.auth().onAuthStateChanged(function (user) {
      if (user) {
        firebase.database().ref('/listing' + user.uid + '/').on('child_added', function (snap) {
          var value = snap.val()
          if (value instanceof Object) {
            self.items.push(snap.val())
            self.update()
          }
        })
      } else {
        // No user is signed in.
        riot.route('/')
      }
    });
  </script>

</listings>
