var express = require('express');
var ejs = require('ejs');
var path = require('path');
var app = express();
var firebase = require("firebase");

firebase.initializeApp({
    serviceAccount: 'dibz-136f42b2ef9c.json',
    databaseURL: "https://dibz-8406f.firebaseio.com"
});

var api_key = 'key-367f79f2270a23c8b46c159ed71489c2';
var domain = 'dibzmarket.com';
var from_email = 'mail@dibzmarket.com';
var mailgun = require('mailgun.js');
var mg = mailgun.client({ username: 'api', key: process.env.MAILGUN_API_KEY || 'key-367f79f2270a23c8b46c159ed71489c2' });

// mg.messages.create('dibzmarket.com', {
//     from: 'Dev Team <develop@dibzmarket.com>',
//     to: 'users@dibzmarket.com',
//     subject: 'Test Mail',
//     text: 'Testing mailgun :D'
// })
// .then(msg => console.log(msg))
// .catch(err => console.log(err));

//Tell express to fetch files from the /public directory
app.use(express.static(path.join(__dirname, '/public')));
//app.use(express.static(path.join(__dirname('/css'));
//app.set('views', _dirname + '/views');
app.set('view engine', 'ejs');
app.get('/buy/:listingId', function(req, res) {
        res.render('index');
    
});
// Send a message to the specified email address when you navigate to /submit/someaddr@email.com
// The index redirects here
app.get('/confirm/:item', function(req, res) {
    var item = req.params.item
    item = item.split("--");
    var item_name = item[0]
    var price = item[1]
    var email = item[1]
    //We pass the api_key and domain to the wrapper, or it won't be able to identify + send emails
    var mailgun = new Mailgun({ apiKey: api_key, domain: domain });

    var data = {
        //Specify email data
        from: "develop@dibzmarket.com",
        //The email to contact
        to: email,
        //Subject and text data  
        subject: "You place a dib on "+ item_name +"!",
        html: "Thanks for using dibz! You placed a" + price + "dib on" + item_name + ". The seller will contact you if they are interested."
    }

    //Invokes the method to send emails given the above data with the helper library
    mailgun.messages().send(data, function(err, body) {
        //If there is an error, render the error page
        if (err) {
            res.render('error', { error: err });
            console.log("got an error: ", err);
        }
        //Else we can greet    and leave
        else {
            //Here "submitted.jade" is the view file for this landing page 
            //We pass the variable "email" from the url parameter in an object rendered by Jade
            res.render('confirm');
            console.log(body);
        }
    });

});


app.get('/validate/:mail', function(req, res) {
    var mailgun = new Mailgun({ apiKey: api_key, domain: domain });

    var members = [{
        address: req.params.mail
    }];
    //For the sake of this tutorial you need to create a mailing list on Mailgun.com/cp/lists and put its address below
    mailgun.lists('users@dibzmarket.com ').members().add({ members: members, subscribed: true }, function(err, body) {
        console.log(body);
        if (err) {
            res.send("Error - check console");
        } else {
            res.send("Added to mailing list");
        }
    });

});


app.listen(process.env.PORT || 3030);
