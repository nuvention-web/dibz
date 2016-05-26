<listings>
  <item each="{ items }" ></item>

  <script type = "text/javascript">
    if (firebase.auth().currentUser) {
      var self = this
    	firebase.database().ref('/listing' + firebase.auth().currentUser.uid + '/').on("value", function (snap) {
        console.log('you got here')
    		snap.forEach(function(childSnap) {
    			console.log(childSnap.val())
    			self.items.push(childSnap.val())
    			//self.update()
    		})
    	})
      self.items = []
  }
  </script>

</listings>
