<calldibz>
<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">CALL DIBZ
                </h1>
            </div>

        </div>

        <cditem></cditem>

        <br>
        <br>

        <form class="form-horizontal" method="post" action="<?php echo $_SERVER['dibzphp.php'];?>">
            <fieldset>
                <!-- Form Name -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-title">Name</label>
                    <div class="col-md-4">
                        <input id="name" name="name" type="text" placeholder="John Smith" class="form-control input-md" required>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-description">Email</label>
                    <div class="col-md-4">
                        <input id="email" name="email" type="text" placeholder="john@dibzmarket.com" class="form-control input-md" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-description">Occupancy</label>
                    <div class="col-md-4">
                        <input id="occupancy" name="occupancy" type="text" placeholder="Northwestern Student" class="form-control input-md" required>
                    </div>
                </div>
                
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="item-price">Offer</label>
                    <div class="col-md-4">
                        <input id="item-offer" name="item-offer" type="number" placeholder="No need to include the $." class="form-control input-md" required>
                    </div>
                </div>
                
            </fieldset>
            <!-- <input type="submit"> -->
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" onclick="generateAndDisplay();">Add Item
            </button>
        </form>   
        </div> 

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Dibz 2016</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

</calldibz>