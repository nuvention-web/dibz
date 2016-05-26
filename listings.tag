<listings>
  <item each="{ items }" >
  </item>

  <script type = "text/javascript">
  	var self = this
  	firebase.database().ref('listing1/').on("value", function (snap) {
      console.log('you got here')
  		snap.forEach(function(childSnap) {
  			console.log(childSnap.val())
  			self.items.push(childSnap.val())
  			self.update()
  		})
  	})
  	self.items = []
  </script>

</listings>
