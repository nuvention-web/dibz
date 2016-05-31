<manage-page>
	<script>
    firebase.auth().onAuthStateChanged(function(user) {
      if (user) {
        // allow page to load
      } else {
        // No user is signed in.
        riot.route('/')
      }
    });
	</script>

	<div  class="container">

        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">MY ITEMS
                </h1>
            </div>
        </div>


        <div>

        	<listings></listings>

    	</div>

    </div>

</manage-page>
