// var title;
// var description;
// var price;
// var payment;
// var pickup;

function callback(stuff) {
    //var urlToShow = stuff.data.url;
    //document.getElementById('bitly').innerHTML = stuff;
    window.alert("You clicked it!");
}

function httpGet(url) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
            callback(xmlHttp.responseText);
    }
    xmlHttp.open("GET", url, true);
    xmlHttp.send(null);
}

// function formCheck() {

//     title = document.getElementById("item-title").innerHTML;
//     description = document.getElementById("item-description").innerHTML;
//     price = document.getElementById("item-price").innerHTML;
//     payment = document.getElementById("item-payment").innerHTML;
//     pickup = document.getElementById("item-pickup").innerHTML;
//     return true;

// }

function generateModal() {
    $('myModal').modal('show');
}

function generateAndDisplay() {
    var input = url;
    var url = window.location.hostname;
    window.alert(url);
    var api = 'https://api-ssl.bitly.com//v3/shorten?access_token=1c3958d4df9ee6764cf0d6b68c7def84b8ed4cf5';
    var longUrl = 'https://www.google.com';
    var longUrl = encodeURIComponent(longUrl);
    var input = api + '&longUrl=' + longUrl + '&format=txt';
    window.alert(input);
    httpGet(input, window.alert("Generating Link!"));
}

//var emailToSend = getElementById("register_email").innerHTML;

// function sendRegEmail(emailToSend){
//     httpGet()

// }



