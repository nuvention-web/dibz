<listings>
  <item each="{ items }" ></item>

  <script type = "text/javascript">
    auth.onAuthStateChanged(function (user) {
      if (user) {
        var self = this
        self.items = []
        firebase.database().ref('/listing' + user + '/').on("value", function (snap) {
          console.log('you got here')
          snap.forEach(function(childSnap) {
            console.log(childSnap.val())
            self.items.push(childSnap.val())
            //self.update()
          })
        })
      }
    }
  </script>

</listings>
