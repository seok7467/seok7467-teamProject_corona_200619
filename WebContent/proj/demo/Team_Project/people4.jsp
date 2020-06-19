<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>구별환자현황</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">
<!-- Font Awesome CSS -->
<link
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
   rel="stylesheet"
   integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
   crossorigin="anonymous">
<script type="text/javascript" src="../jquery-3.5.1.js"></script>

<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
		</script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
	</script>
	
	
	
<script type="text/javascript">
   var xhr;
   if (window.XMLHttpRequest) {
      xhr = new XMLHttpRequest();
   } else {
      xhr = new ActiveXObject("Microsoft.XMLHTTP");
   }
   if (xhr == null) {
      alert("Error create xhr object");
   }
   //전체 출력
   $(function() {
	   			$("#content2").empty();
	  			 let message = "";
               let url = '../Team_Project/people1.json';
               xhr.open('GET', url, true);
               xhr.send(null);
               xhr.onreadystatechange = function() {
                  if (xhr.readyState == 4 && xhr.status == 200) {
                	  
                	  
                	  
                	  
                	  message +="<div class='table-responsive-md col text-center'>";
                    	
                    	message +="<table class='table table-bordered table-striped'>";
                    	
                    	message +="<thead>";
                    	message +="<tr>";
                    	message +="<th style="+"width:8%"+">번호</th>";
                    	message +="<th style="+"width:30%"+">구</th>";
                    	message +="<th style="+"width:47%"+">환자수</th>";
                    	
         				
                    	message +="</tr>";
                    	message +="</thead>";
                    	message +="<tbody>";
         				var indexList = 1;
         				
         				
         				
         				
         				
                     //console.log(xhr.responseText);
                     //console.log(typeof xhr.responseText);
                     const obj = JSON.parse(xhr.responseText);
                     const listArray = obj.people1;
                     
                     
                     const listLocal = new Array("강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구");
                     
                     let cnt = 0;
                     
                     const list = obj["people1"];
                     
                     const total = new Array("강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구")
                    
                     for (let j = 0; j < listLocal.length; j++) {
                    	 for(let i=0;i<list.length;i++ ){
                             if(listLocal[j].indexOf(list[i].거주지)!=-1){
                                cnt++;
                                } 
                             }
                    	 message +="<td>"+indexList+"</td>";
                         message +="<td>"+listLocal[j]+"</td>";
                         message +="<td>"+cnt+"</td>";
                        
                         message += "</tr>";
   						indexList +=1; 
   						cnt=0;
                     }
                     
                     //console.log(listLocal[0]);
                     
                     
                     
                     /* for(let k=0;k<region.length;k++){
                    	 console.log();
                     } */
                     message += "";
                     message +="</tbody>"; 
                     message +="</table>";
                     message +="</div>"; 
                     $("#content2").append(message);
                  }
               }
            ;

     
   });
</script>
</head>

<body>
   <div class="container">
      <div class="row" style="margin-top: 20px">
         <div class="col-sm-12">
            <h1 class="card-title">구ㅜㅜㅜㅜ우ㅜㅜ벼어어어얼ㄹㄹ화아아안자아아아혀어어화아아앙</h1>
            <div class="form-row d-flex align-items-center">
               
               <div class="form-group col-md-2">
                  
                  
               </div>
            </div>
         </div>
      </div>
      <div class="row" style="margin-top: 20px">
         <div class="col-sm-12"></div>
      </div>
      <div class="row">
         <div class="col-sm-12" id="content2"></div>
      </div>
   </div>
  
</body>

</html>