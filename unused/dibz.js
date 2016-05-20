var title;
var description;
var price;
var payment;
var pickup;

function callback(stuff) {
    //var urlToShow = stuff.data.url;
    window.alert(stuff)
        //window.alert(urlToShow);
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

function formCheck() {

    title = document.getElementById("item-title").innerHTML;
    description = document.getElementById("item-description").innerHTML;
    price = document.getElementById("item-price").innerHTML;
    payment = document.getElementById("item-payment").innerHTML;
    pickup = document.getElementById("item-pickup").innerHTML;

    // if (title == ""){
    // 	window.alert("Don't forget a title!");
    // 	return false;
    // }
    // if (description == ""){
    // 	window.alert("Don't forget a description!");
    // 	return false;
    // }
    // if (price == ""){
    // 	window.alert("Don't forget a price!");
    // 	return false;
    // }
    // if (pickup == ""){
    // 	window.alert("Don't forget a pickup!");
    // 	return false;
    // }
    // else
    return true

}

function generateModal() {
    $('myModal').modal('show');
}

function generateAndDisplay() {
    //var input = url;
    formCheck();
    var api = 'http://api-ssl.bitly.com//v3/shorten?access_token=1c3958d4df9ee6764cf0d6b68c7def84b8ed4cf5';
    var longUrl = 'https://www.google.com';
    var longUrl = encodeURIComponent(longUrl);
    var input = api + '&longUrl' + 'longUrl' + '&format=json';
    httpGet(input, window.alert("Generating Link!"));

    if (formCheck() == false) {
        return
    }
}
var templateButton = document.getElementById('template');
templateButton.onclick=function(){document.location.href = '<?php file_get_contents(itemtemplate.php); ?>';};


