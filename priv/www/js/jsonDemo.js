function populate(data) {
  $.each(data, function(field, value){
	$("#"+field).val(value);
  });     
}

function post(json, url, callback){
	var data = JSON.stringify(json);
	$.post( url, {"json": data}, callback, "json");
}

$(document).ready(function(){
	  var json = {"action" : "get"}
	  post( json, "/form", populate);      
});

