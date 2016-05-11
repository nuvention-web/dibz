<listings>
    	<item each="{ items }" >
    	</item>
    	
<script type = "text/javascript">

	var self = this
	var listingParent = new Firebase("https://dibz.firebaseio.com/account0/listings")

	listingParent.on("value", function (snap) {
		snap.forEach(function(childSnap) {
			console.log(childSnap.val())
			self.items.push(childSnap.val())
			self.update()
			//self.items = Object.values(snap.val())
			//{ listing1: {...},
			//  listing2: {...}, ... }
		})
	})
	
	self.items = []

/* Other attempted means of populating listings page that were less efficient */

/*	var numlistings = new Firebase("dibz.firebaseio.com/user/numlistings")
	
	for (i = 0; i < numlistings; i++) {
		var url = "dibz.firebaseio.com/listing" + i.toString();
		var listingsRef = new Firebase(url);

		listingsRef.on("value", function (snap) {
			console.log(snap.val())
			self.items.push(snap.val())
			self.update()
			//self.items = Object.values(snap.val())
			//{ listing1: {...},
			//  listing2: {...}, ... }
		})
		
	} */
	
/*	listingsRef.set({
		listing1: {
			...
		}
	})*/
	
	//usersRef.push({
	//	
	//})
	
	/*
	var listingsOneRef = new Firebase("dibz.firebaseio.com/listings/listing1")
	var listingsTwoRef = new Firebase("dibz.firebaseio.com/listings/listing2")
	var listingsThreeRef = new Firebase("dibz.firebaseio.com/listings/listing3")
	
	listingsOneRef.on("value", function (snap) {
		console.log(snap.val())
		self.items.push(snap.val())
		self.update()
		//self.items = Object.values(snap.val())
		//{ listing1: {...},
		//  listing2: {...}, ... }
	})

	listingsTwoRef.on("value", function (snap) {
		console.log(snap.val())
		self.items.push(snap.val())
		self.update()
		//self.items = Object.values(snap.val())
		//{ listing1: {...},
		//  listing2: {...}, ... }
	})
	
	listingsThreeRef.on("value", function (snap) {
		console.log(snap.val())
		self.items.push(snap.val())
		self.update()
		//self.items = Object.values(snap.val())
		//{ listing1: {...},
		//  listing2: {...}, ... }
	})
	*/
	
	
/*	this.items = [{
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
    	}] */
  	</script>
</listings>