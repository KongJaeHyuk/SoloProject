
$(function(){
	bind();
})

function bind(){
	$("#btn_search").off("click").on("click", fnBtnClick);
}

function fnBtnClick(){
	let station = $("#station").val();
	let url = "http://swopenapi.seoul.go.kr/api/subway/424776766b6a796d3533646c636850/json/realtimeStationArrival/0/500/";
	url += station;
	
	$.ajax({
		url : url,
		success : function(data, a , resp){
			
			console.log("resp ::", resp);
			
			let list = data.realtimeArrivalList;
			$("#info").empty();
			console.log("data :: " , data);
			
			for(let item of list){
					html = "";
					html += "<div class ='train_info'>";
					html += "<ul>";
					html += "<li>" + "도착지 방면 : "+item.trainLineNm + "</li>";
					html += "<li>" + "열차 도착 예정시간 : "+ item.barvlDt + "분" + "</li>";
					html += "<li>" + "첫번째 도착메세지 : "+ item.arvlMsg2 + "</li>";
					html += "<li>" + "두번째 도착메세지 : "+ item.arvlMsg3 + "</li>";
					html += "</ul>";
					html += "</div>" +"<br>";
					
					$("#info").append(html);
			}
			
			saveInfo(list);
		}
	});
}

function saveInfo(data){
	
	let url = "/subway/api/subway";
	
	$.ajax({
		url : url,
		type : "POST",
		contentType : "application/json",
		data : JSON.stringify(data),
		success : function(data, a , resp){
			console.log("data :: ", data);
		}
	});
}
