<diblist>
	<div class="row col-md-12">
		<span class="col-xs-8">
			{ buyername } - ${ buyeroffer | 0}.{ x } 
		 </span>
		 <a class="btn btn-success col-xs-4" href = "mailto:{buyercontact}">Accept Dibz</a>
  <br>
  <br>
  <br>
	</div>


<script>
  this.x = ""
  amount = (this.buyeroffer - (this.buyeroffer | 0))*100
  if (amount < 10) {
    this.x = "0" + amount
  }
  else {
    this.x = "" + amount
  }

</script>
</diblist>