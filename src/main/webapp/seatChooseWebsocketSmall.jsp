<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<%@ page import="java.util.*"%>
<%@ page import="com.tha103.newview.act.model.*"%>
<%@ page import="com.tha103.newview.act.service.*"%>
<%@ page import="com.tha103.newview.actcategory.model.*"%>
<%@ page import="com.tha103.newview.cityaddress.model.*"%>
<%@ page import="com.google.gson.JsonObject"%>

<!DOCTYPE html>
<html>
<head>
<title>SeatChoose</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="seat/seatSmall10X10/cssType.css" type="text/css" />
</head>

<body onload="connect();" onunload="disconnect();">

	User ID:
	<c:out value="${sessionScope.userid}" />
	<br> Act ID:
	<c:out value="${sessionScope.actID}" />
	<br> Act Price:
	<c:out value="${sessionScope.actPrice}" />
	<br>

	<h3 id="statusOutput" class="statusOutput"></h3>
	<textarea id="messagesArea" class="panel message-area" readonly></textarea>
	<div class="panel input-area">
		<input id="userName" class="text-field" type="text"
			placeholder="User name" " /> <input id="message" class="text-field"
			type="text" placeholder="Message"
			onkeydown="if (event.keyCode == 13) sendMessage();" /> <input
			type="submit" id="sendMessage" class="button" value="Send"
			onclick="sendMessage();" /> <input type="button" id="connect"
			class="button" value="Connect" onclick="connect();" />
	</div>


	<div id="seating-container">

		<div class="centered-text">
			
			<div class="act-container">
				<label> 活動:</label> <select id="act" disabled>
					<option value="${sessionScope.actPrice}">${sessionScope.actName}</option>
				</select>
			</div>
			<ul class="showcase">
				<li>
					<div class="Hseat"></div> <small>可選擇座位</small>
				</li>
				<li>
					<div class="Hseat selected"></div> <small>目前選擇</small>
				</li>
				<li>
					<div class="Hseat sold"></div> <small>已售出</small>
				</li>
			</ul>
		</div>
	</div>

	<p class="text">
		座位數量: <span id="count">0</span> 總金額: <span id="total">0</span>
	</p>
	<p>
		<a class="BuyIn" href="#">確認購買</a>
		<button class="cart">Add to cart</button>
	</p>
	</div>
	
</body>


<script>

var userName = "${sessionScope.userid}";
console.log(userName);
var actID = "${sessionScope.actID}"; 
var MyPoint = `/WebSocketChatWeb/${sessionScope.userid}/${actID}`;
console.log(MyPoint);
var host = window.location.host;
var path = window.location.pathname;
var webCtx = path.substring(0, path.indexOf('/', 1));
var endPointURL =  "ws://" + window.location.host + webCtx + MyPoint;
var otherSelectedSeats = [];
console.log(otherSelectedSeats);
var statusOutput = document.getElementById("statusOutput");
var webSocket;

	//載入頁面先啟動
	

	//載入頁面先啟動
	function connect() {
		// create a websocket
		webSocket = new WebSocket(endPointURL);
		if(webSocket){
		console.log("連接啟動")
		}
		webSocket.onopen = function(event) {
			updateStatus("WebSocket Connected");
			document.getElementById('sendMessage').disabled = false;
			document.getElementById('connect').disabled = true;
			
		   
	
		};

		webSocket.onmessage = function (event) {
			
		    var userName =${sessionScope.userid};
		    var messageData = JSON.parse(event.data);
		  
		   
		    for(var i = 0; i < messageData.length ; i++ ){
		    	 var seatTypeParts = messageData[i].seatType.split(',');
		    	 
		    if (seatTypeParts[1] === "buy") {
		    	
		    	
		        otherSelectedSeats.push(messageData[i]);
		        
		    	otherSelectedSeats.forEach(function (seatObject) {
		            var seatNumber = seatObject.seatNumber;
		           
		            var seatElements = document.querySelectorAll('[data-seat-number="' + seatNumber + '"]');
		           
		            seatElements.forEach(function (seatElement) {
		            	
		                if (seatElement.dataset.userName !== userName ) {
		                	
		                    seatElement.classList.add("otherSelected");
		                	
		                }
		            });
		        });
		    }else if(seatTypeParts[1] === "soldOut"){
		        
		        otherSelectedSeats.push(messageData[i]);
		        otherSelectedSeats.forEach(function (seatObject) {
		            var seatNumber = seatObject.seatNumber;
		           
		            var seatElements = document.querySelectorAll('[data-seat-number="' + seatNumber + '"]');
		            
		            seatElements.forEach(function (seatElement) {
		                if (seatElement.dataset.userName !== userName && !seatElement.classList.contains("otherSelected") ) {
		                    seatElement.classList.add("sold");
		                    seatElement.classList.remove("selected");
		                   
		                }
		            });
		        });
		    }else if (seatTypeParts[1] === "cancel") {
		       

		        // 找到要取消的座位的座位號碼
		        var seatNumberToCancel = messageData[i].seatNumber;

		        // 選取要取消的座位元素
		        var seatElementsToCancel = document.querySelectorAll('[data-seat-number="' + seatNumberToCancel + '"]');

		        // 從 DOM 中刪除座位元素並移除相關的類別
		        seatElementsToCancel.forEach(function (seatElement) {
		            seatElement.remove();
		        });

		        // 找到要移除的 messageData[i] 物件在 otherSelectedSeats 陣列中的索引
		        var indexToRemove = -1;
		        for (var j = 0; j < otherSelectedSeats.length; j++) {
		            if (otherSelectedSeats[j].seatNumber === seatNumberToCancel) {
		                indexToRemove = j;
		                break;
		            }
		        }

		        // 從 otherSelectedSeats 陣列中移除該物件
		        if (indexToRemove !== -1) {
		            otherSelectedSeats.splice(indexToRemove, 1);
		        }
		    }

		    }
		    var messagesArea = document.getElementById("messagesArea");
		    try {
		        var jsonArray = JSON.parse(event.data);
		      
		        if (jsonArray.type === "cancel") {
		            // 如果 seatType 是 "cancel"，陣列移除
		            
		            var indexToRemove = otherSelectedSeats.findIndex(function(item) {
		                return item.seatNumber === jsonArray.seatNumber;
		            });
		            if (indexToRemove !== -1) {
		                otherSelectedSeats.splice(indexToRemove, 1);
		            }
		        } else if (jsonArray.type === "disconnect" && jsonArray.seatType != "soldOut"){  //是disconnect 就刪除
		        	 var disconnectedUserName = jsonArray.userName;
		        	 console.log("成功進入")
		        	    
		        	    var indexesToRemove = [];

		        	  
		        	    otherSelectedSeats.forEach(function (seatObject, index) {
		        	        if (seatObject.userName === disconnectedUserName && seatObject.seatType != "soldOut") {
		        	        	
		        	            indexesToRemove.push(index);
		        	        }
		        	    });

		        	    //往前移除 從後面開始 以免錯誤
		        	    for (var i = indexesToRemove.length - 1; i >= 0; i--) {
		        	    	console.log(otherSelectedSeats)
		        	        otherSelectedSeats.splice(indexesToRemove[i], 1);
		        	    }
		    }else {
		    	
		            if (!otherSelectedSeats.includes(jsonArray.seatNumber)) {
		                otherSelectedSeats.push(jsonArray);
		            }
		        }
		       

		        // 有 data-seat-number 元素中移除 "otherSelected" 
		        var allSeatElements = document.querySelectorAll('.seat[data-seat-number]');
		        allSeatElements.forEach(function (seatElement) {
		            seatElement.classList.remove("otherSelected");
		        });
				
				
		        otherSelectedSeats.forEach(function (seatObject) {
		            var seatNumber = seatObject.seatNumber;
		            var seatElements = document.querySelectorAll('[data-seat-number="' + seatNumber + '"]');
		           
		            seatElements.forEach(function (seatElement) {
		            	
		                if (seatElement.dataset.userName !== userName && seatElement.classList[1] != "sold" && seatElement.classList[1] !="selected" ) {
		                	
		                    seatElement.classList.add("otherSelected");
		                	
		                }else if(seatElement.dataset.userName !== userName && seatElement.classList === "sold"){
		                	 seatElement.classList.remove("otherSelected");
		                	 seatElement.classList.add("sold");
		                	 
		                }
		            });
		        });

		    } catch (error) {
		        console.error("JSON錯誤:", error);
		    }
		};
		
		
		
		window.onload = function () {
		    connect();
		};

		webSocket.onclose = function(event) {
			updateStatus("WebSocket Disconnected");
		};
	}
	
	if(userName!=""){
		connect();
	}else{
		disconnect();
	}
	//以下為座位相關 以上為 老師範本
	window.onload = function () {
		 
        localStorage.removeItem("selectedSeats");
        
      };
      window.addEventListener("unload", function () {
        localStorage.removeItem("selectedSeats");
        console.log("發動")
      }); 
      
      /*選座位*/
      let container = document.getElementById("seating-container");

      let seatNumber = 1;

  
      
      //發送測試
     
      function toggleSeatStatus(seatDiv) {
    	  var userName = inputUserName.value.trim();
  	
    	    let seatStatus = seatDiv.dataset.status || "unselected";
  		 	
    	    if ((userName !== "") && (seatStatus != "sold") && (seatStatus != "otherSelected")) {
    	       
    	        	if ( (seatStatus === "unselected") && seatDiv.classList.contains("seat") && !seatDiv.classList.contains("otherSelected")&&!seatDiv.classList.contains("sold")) {
    	            seatDiv.dataset.status = "selected";
    	           
    	            // 拿到座位號碼
    	            var userName = inputUserName.value.trim();
    	            let seatNumber = seatDiv.dataset.seatNumber;
    	            
    	            let seatSelection = {
    	                userName: userName,
    	                seatNumber: seatNumber,
    	                type: "buy",
    	                actID:  ${sessionScope.actID}
    	                
    	            };
    	            //  轉為 JSON 字串
    	            let seatSelectionJSON = JSON.stringify(seatSelection);
    	            // JSON 字串到伺服器
    	            sendSeatSelection(seatSelectionJSON);
    	        	
    	        } else if ((seatStatus === "selected")&&(seatStatus != "otherSelected")) {
    	            seatDiv.dataset.status = "unselected";
    	            
    	            let seatNumber = seatDiv.dataset.seatNumber;
    	            
    	            let canceledSeatSelection = {
    	                userName: userName,
    	                seatNumber: seatNumber,
    	                type : "cancel",
    	                actID:  ${sessionScope.actID} 
    	            };
    	            
    	            let canceledSeatSelectionJSON = JSON.stringify(canceledSeatSelection);
    	           
    	            sendCanceledSeatSelection(canceledSeatSelectionJSON);
    	        }
    	    }
    	}

    	// 發送座位選擇 JSON 字串到伺服器
    	function sendSeatSelection(seatSelectionJSON) {
    	  
    	    if (webSocket.readyState === WebSocket.OPEN) {
    	        webSocket.send(seatSelectionJSON);
    	    }
    	}

    	// 發送取消座位的 JSON 字串到伺服器
    	function sendCanceledSeatSelection(canceledSeatSelectionJSON) {
    	   
    	    console.log(canceledSeatSelectionJSON);
    	    if (webSocket.readyState === WebSocket.OPEN) {
    	        webSocket.send(canceledSeatSelectionJSON);
    	    }
    	}

    

/*創造*/
     // 删除之前的座位生成代码
for (let row = 1; row <= 10; row++) {
    let rowDiv = document.createElement("div");
    rowDiv.classList.add("row");

    for (let seatIndex = 1; seatIndex <= 10; seatIndex++) {
        let seatDiv = document.createElement("div");
        seatDiv.classList.add("seat");
        seatDiv.textContent = seatNumber;
        seatDiv.setAttribute("data-seat-number", seatNumber); 

        seatDiv.addEventListener("click", () => {
            toggleSeatStatus(seatDiv);
        });

        rowDiv.appendChild(seatDiv);
        seatNumber++;
    }

    container.appendChild(rowDiv);
}

      container.addEventListener("click", (e) => {
    	  var userName = inputUserName.value.trim();
    		if (userName === "") {
    			alert("Input a user name");
    			inputUserName.focus();
    			return;
    		}
        if (
          e.target.classList.contains("seat") &&
          !e.target.classList.contains("sold") &&
          !e.target.classList.contains("otherSelected")
        ) {
          e.target.classList.toggle("selected");

          updateSelectedCount();
        }
      });

      let containerW = document.querySelector(".container");
      let seats = document.querySelectorAll(".row .seat:not(.sold)");
      let count = document.getElementById("count");
      let total = document.getElementById("total");
      let actDiv = document.getElementById("act");

      populateUI();

      let ticketPrice = +actDiv.value;

      function setActData(actIndex, actPrice) {
        localStorage.setItem("selectedActIndex", actIndex);
        localStorage.setItem("selectedActPrice", actPrice);
      }

      // 更新數量跟價錢
      function updateSelectedCount() {
        let selectedSeats = document.querySelectorAll(".row .seat.selected");

        let seatsIndex = [...selectedSeats].map((seat) =>
          [...seats].indexOf(seat)
        );

        localStorage.setItem("selectedSeats", JSON.stringify(seatsIndex));

        let selectedSeatsCount = selectedSeats.length;

        count.innerText = selectedSeatsCount;
        total.innerText = selectedSeatsCount * ticketPrice;

        setActData(actDiv.selectedIndex, actDiv.value);
      }

      // 從 localstorage and populate UI 拿到資料
      function populateUI() {
        let selectedSeats = JSON.parse(localStorage.getItem("selectedSeats"));

        if (selectedSeats !== null && selectedSeats.length > 0) {
          seats.forEach((seat, index) => {
            if (selectedSeats.indexOf(index) > -1) {
              console.log(seat.classList.add("selected"));
            }
          });
        }

        let selectedActIndex = localStorage.getItem("selectedActIndex");

        if (selectedActIndex !== null) {
          actDiv.selectedIndex = selectedActIndex;
          console.log(selectedActIndex);
        }
      }
    

      actDiv.addEventListener("change", (e) => {
        ticketPrice = +e.target.value;
        setActData(e.target.selectedIndex, e.target.value);
        updateSelectedCount();
      });

      //--------------TEST------------//

      var seatDivs = document.querySelectorAll(".seat");

      seatDivs.forEach(function (seat, index) {
        seat.id = "seat_" + (index + 1);
      });

      var seatIdToChange = "seat_100"; //這裡更改號碼

      var seatElement = document.getElementById(seatIdToChange);

      if (seatElement) {
        seatElement.classList.add("sold");
      }
      //--------------TEST------------//
      
      //以上為座位相關 以下為 老師範本
	var inputUserName = document.getElementById("userName");
	inputUserName.focus();
		
	function sendMessage() {
		var userName = inputUserName.value.trim();
		if (userName === "") {
			alert("Input a user name");
			inputUserName.focus();
			return;
		}

		var inputMessage = document.getElementById("message");
		var message = inputMessage.value.trim();

		if (message === "") {
			alert("Input a message");
			inputMessage.focus();
		} else {
			var jsonObj = {
				"userName" : userName,
				"message" : message,
				"actID" :  ${sessionScope.actID}
			};
			webSocket.send(JSON.stringify(jsonObj));
			inputMessage.value = "";
			inputMessage.focus();
		}
	}
	function disconnect() {
		var selectElement = document.getElementById("act");
	    var selectedActivity = selectElement.options[selectElement.selectedIndex].text;
	    var userName = inputUserName.value.trim();
	   
	    var userType = "disconnect";
	    if (userName) {
	        if (webSocket && webSocket.readyState === WebSocket.OPEN) {
	            var userInfo = {
	                userName: userName,
	                type: userType,
	                actID:  ${sessionScope.actID},
	            };
	            var userInfoJSON = JSON.stringify(userInfo);
	            webSocket.send(userInfoJSON);
	            webSocket.close();
	        
	        } else {
	            console.error('WebSocket is not open. Unable to disconnect.');
	        }
	    }
	}

	 /*購買 相關*/
	document.addEventListener('DOMContentLoaded', (event) => {
    var cartButton = document.querySelector('.BuyIn');
    cartButton.addEventListener('click', function () {
       
        var userName = inputUserName.value.trim();
        console.log('有人要買搂~')
        const message = {
            userName: userName,	      
            seatNumber: seatNumber,
            type: "soldOut",
            actID:  ${sessionScope.actID},
        };

        var userInfoJSON = JSON.stringify(message);

        if (webSocket.readyState === WebSocket.OPEN) {
            webSocket.send(userInfoJSON);
            console.log('傳送成功~');
        } else {
            console.error('WebSocket is not open. Unable to send message.');
        }

        userType = "buyAc";
    });
});

		function updateStatus(newStatus) {
			statusOutput.innerHTML = newStatus;
		}
	 /*購買 相關*/
	
   
	
</script>
<script src="js/monitor.js"></script>


</html>
