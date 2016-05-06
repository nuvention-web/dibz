<listings>
    	<item each="{ items }" >
    	</item>
    	
<script>

	var self = this
	
	var listingsRef = new Firebase("dibz.firebaseio.com/listing")
	
	listingsRef.on("value", function (snap) {
		console.log(snap.val())
		self.items.push(snap.val())
		self.update()
		//self.items = Object.values(snap.val())
		//{ listing1: {...},
		//  listing2: {...}, ... }
	})
	
  	this.items = [{
  		itemname:"LEI",
  		itemtag: "lei", 
        image:1,
  		price:0,
  		bidtime:24,
  		payment:"N/A",
  		pickup:"The Garage",
  		description:"NUvention Launch only."
  		},
      { itemname:"COOKIES",
      	itemtag:"cookies",
        image:3,
        price:0,
        bidtime:24,
        payment:"N/A",
        pickup:"The Garage",
        description:"NUvention Launch only."
      },
      { itemname:"GRAND & NOBLE ALBUM",
      	itemtag: "gnalbum",
        image:2,
        price:0,
        bidtime:24,
        payment:"N/A",
        pickup:"The Garage",
        description:"NUvention Launch only."
      },
      { itemname:"SAINT MOTEL ALBUM",
      	itemtag: "smalbum",
        image:5,
        price:0,
        bidtime:24,
        payment:"N/A",
        pickup:"The Garage",
        description:"NUvention Launch only."
      },
      { itemname: "ARMS FROM THE SEA",
      	itemtag: "arms",
    	image:7,
    	price:0,
    	bidtime:24,
    	payment: "N/A",
    	pickup:"The Garage",
    	description:"NUvention Launch only."
    	}]
  	</script>
</listings>