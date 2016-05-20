<view-item>

		<div class="container">

        <h3>{ itemname }</h3>
        <h4>${ price } <small>Accepting dibz till { bidtime }</small></h4>
        <p><b>Payment:</b> { payment }</p>
        <p><b>Pickup:</b> { pickup }</p>
        <p><b>Description:</b> { description }</p>

        </div>

        
        <div class="col-md-12">

                  <h3>My Dibz</h3>
        </div>


        <div class="col-md-6 col-md-offset-3">  	

          <topdib dib="{ dibz[0] }"></topdib>
          <diblist each="{ dibz.slice(1) }"></diblist>

    	 </div>



    <script>
      riot.route('/view-item/*/*', function (itemname, id) {
        // get the data from firebase and then update the view
      })


      this.update({
  			itemname:"LEI", 
        	image:1,
  			highestdib:5,
  			bidtime:0,
  			payment:"N/A",
  			pickup:"The Garage",
  			description:"NUvention Launch only."
        })

  		this.dibz = [{
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
  		}]		


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