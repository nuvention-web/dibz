<navigation>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><img src = "logo/Slide1.png" style = "height: 32px; width: 32px" ></a>
            </div>

            <!-- Log Out -->
            <script>
              this.logOut = function logOut() {
                firebase.auth().signOut().then(function() {
                  console.log("Successful sign out.")
                  riot.route('/')
                }, function(error) {
                  console.log("Unsuccessful signing" + firebase.auth().currentUser.uid + "out.")
                });
              }
            </script>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul hide={parent.view.login} class="nav navbar-nav">
                    <li>
                        <a href="/#/manage">Manage</a>
                    </li>
                    <li>
                        <a href="/#/new-item">Add</a>
                    </li>
                    <li>
                        <a href="" onclick = {logOut}>Sign Out</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <script>
        r = riot.route.create()
        r('/', function () { viewswitch('login') })
        r('/manage', function () { viewswitch('managepage') })
        r('/new-item', function () { viewswitch('newitem') })
        r('/buy', function () { viewswitch('buy') })
        r('/view-item/*/*', function () { viewswitch('viewitem')})

        var self = this
        var parent = self.parent

        function viewswitch(v){
            Object.keys(parent.view).forEach(function (k) {
                parent.view[k] = false
            })
            parent.view[v] = true
            parent.update()
        }
    </script>

</navigation>
