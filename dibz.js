function httpGet(url, callback)
{
	var xmlHttp = new XMLHttpRequest();
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.readyState == 4 && xmlHttp.status == 200)
			callback(xmlHttp.responseText);
	}
	xmlHttp.open("GET", url, true);
	xmlHttp.send(null);
}
function generateAndDisplay(url){
	var input = url;
	httpGet("http://api-ssl.bitly.com//v3/shorten?access_token=1c3958d4df9ee6764cf0d6b68c7def84b8ed4cf5&longUrl=https://slack.com/format=txt", window.alert("success!");

}