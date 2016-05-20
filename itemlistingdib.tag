<topdib>
<div class="col-md-12 text-center">
        <h1 class='col-xs-10 col-xs-offset-1'>TOP DIB</h1>
        <div class='col-xs-10 col-xs-offset-1'>
          <span>
            ${ opts.dib.buyeroffer | 0 }
            <sup>{ x }</sup>
          </span>
        </div>
        <h3 class='col-xs-10 col-xs-offset-1'>{ opts.dib.buyername }</h3>
        <a class="btn btn-success col-xs-4 col-xs-offset-4" href = "mailto:{opts.dib.buyercontact}">Accept Dibz</a>
</div>
        
<script>
  this.x = ""
  amount = (this.opts.dib.buyeroffer - (this.opts.dib.buyeroffer | 0))*100
  if (amount < 10) {
    this.x = "0" + amount
  }
  else {
    this.x = "" + amount
  }

</script>
  
  
</topdib>