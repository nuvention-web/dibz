<load>

<script>
    var self = this
    self.data = {
      first: "itemlisting",
      second: "manage"
    }

    var r = riot.route.create()
    r('*', function(id) {
      self.helptext = self.data[id] || 'Help not found.'
      self.update()
    })
    r(function() {
      self.helptext = "Click the navigation on the left edge."
      self.update()
    })
</script>


</load>