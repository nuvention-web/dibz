<diblist>
	<div class="row col-md-12">
		<span class="col-xs-8">
			{ dibzname } - ${ dibzoffer | 0}.{ x }
		 </span>
		 <a class="btn btn-success col-xs-4" href = "mailto:{dibzemail}">Accept Dibz</a>
  <br>
  <br>
  <br>
	</div>


<script>
  this.x = ""
  amount = (this.dibzoffer - (this.dibzoffer | 0))*100
  if (amount < 10) {
    this.x = "0" + amount
  }
  else {
    this.x = "" + amount
  }

</script>
</diblist>
