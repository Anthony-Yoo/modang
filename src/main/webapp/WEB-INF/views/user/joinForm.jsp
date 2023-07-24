<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>

<!-- icon -->
<link rel="icon" sizes="any" href="${pageContext.request.contextPath}/assets/images/favicon.ico" />

<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<link href="${pageContext.request.contextPath}/assets/css/modang.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user.css" rel="stylesheet" type="text/css">


<!-- js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body>
	<!-- 헤더 시작 -->
	<c:import url="/WEB-INF/views/include/modangSiteHeader.jsp"></c:import>
	<!-- 헤더 끝 -->

    <div id="main-content">
    
		<div class="container text-center">
		
			<div id="user">
		
				<div id="joinForm">
				
					<div id="main">
		
						<h3>이것은 가입 ^^</h3>
		
						<form id="joinSubmitForm" action="${pageContext.request.contextPath}/user/join" method="post"
							enctype="multipart/form-data">
							<!-- 아이디 -->
							<div class="form-group">
							
								<div
									class="input-group">
									
									<span class="input-group">
										
										<input id="input-uid" type="text" value="" maxlength="10" class="form-control" name="id" placeholder="ID">
									
										<button id="btnIdCheck" type="button" data-toggle="modal" data-target="#myModal">확인</button>
										<img src="${pageContext.request.contextPath}/assets/images/account.png" alt="">
									</span>
									
								</div>
								
							</div>
							
							<!-- 비밀번호 -->
							<div class="form-group">
								
									<span class="input-group">
										<img src="${pageContext.request.contextPath}/assets/images/unlock.png" alt="">
									
										<input id="passwd"
										type="password" value="" maxlength="16" class="form-control"
										name="passwd" placeholder="PASSWORD">
									</span>
								
							</div>
							
							<!-- 닉네임 -->
							<div class="form-group">
								
									<span class="input-group">
										<img src="${pageContext.request.contextPath}/assets/images/business-card.png" alt="">
										<input id="nick"
										type="text" value="" maxlength="7" class="form-control"
										name="nick" placeholder="NICK NAME">
										
									</span>
								
							</div>
							
							<!-- 폰번호 -->
							<div class="form-group">
								
									<span class="input-group">
										<img src="${pageContext.request.contextPath}/assets/images/smartphone.png" alt="">
										<input id="cellphone"
										type="text" value="" maxlength="11" class="form-control"
										name="cellphone" placeholder="HP">
									</span>
								
							</div>
							
							<!-- 평균 -->
							<div class="form-group">
								
									<span class="input-group">
										<img src="${pageContext.request.contextPath}/assets/images/line-graph.png" alt="">
										<input id="average"
										type="text" value="" maxlength="3" class="form-control"
										name="average" placeholder="VALUE [타수]">
									</span>
									
								
							</div>
		
							<!-- <div class="form-group">
		                			<div class="shadow-none p-1 mb-2 bg-light rounded input-group">
		                  				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		                  				<input id="recentlogontime" type="text" value="" maxlength="15" class="form-control" name="recentlogontime" placeholder="sysdate">
		                  				<button type="button" class="btn btn-Dark">  &nbsp;&nbsp;입력&nbsp;&nbsp;  </button>
		                			</div>
		            			</div> 
							-->
							
							<!-- 이미지 업로드 -->
							<div class="form-group">
								<div class="fileContainer">
			                		<div class="fileInput">
				                		
				                  		<span class="input-group">
				                  			
				                  			<input id="profileImage" type="file" name="file" class="form-control" placeholder="upload image" value="">
				                  		</span>
				                		
			            			</div>
		        				</div>
		        
		        				<div class="image-show" id="image-show"></div>
		    				</div>
		    				
		    				<!-- 서버전송 -->
		  					<div class="button-area">
								<button type="submit" id="btn-submit" class="btn btn-primary">회원가입 할거당 ^^</button>
							</div>
							
			    		</form>
			    		<!-- //joinSubmitForm -->
		    		</div>
		    		<!-- //main -->
		    
		           </div>
		                 
		                 <!-- 
		               <div class="form-group">
		               	<div class="button">
		               <label for="chooseFile">
		                   <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onclick="loadFile(this)">
		               </label>
		               
		                -->
					
			</div>
			<!-- //user -->
			
		</div>
		<!-- //container -->
    <!-- 푸터 시작 -->
	<c:import url="/WEB-INF/views/include/modangSiteFooter.jsp"></c:import>
	<!-- 푸터 끝 -->
		
    </div>
    <!-- //main-content -->
	
	  <!-- Modal -->
  	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog modal-sm">
      		<div class="modal-content">
        		<div class="modal-header">
          			<h4 class="modal-title">ID 확인!</h4>
        		</div>
        		<div class="modal-body">
          			<p id="idcheckMsg"></p>
        		</div>
        		<div class="modal-footer">
          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        		</div>
      		</div>
    	</div>
  	</div>

	
</body>

<script type="text/javascript">


	//예제
	//원래의 태그 기능을 강재로 차단시킴 data전송시 태그 는 남겨둬야 할 때
	$("#naver").on("click", function(event){
		event.preventDefault();//preventDefault
		
	});

	//회원가입버튼 눌렀을 때: 전송submit 은 form
	$("#joinSubmitForm").on("submit", function(){
		console.log("전송버튼 클릭");
		
		//아이디 체크
		var id = $("#input-uid").val();
		if(id.length<1){//입력 안할 시
			alert("아이디를 입력해 주세요");
			
			return false;
			
		}
		// 패스워드 체크
		var passwd = $("#passwd").val();
		console.log(passwd)
		if(passwd.length<1){
			alert("Password가 입력되지 않았습니다.");			
			return false;
		}else if(passwd.length < 6 || passwd.length > 30){
			alert("Password가 길이가 맞지 않습니다.(6~30자)");			
			return false;
		}
		
		// 닉네임 체크
		var nick = $("#nick").val();
		if(nick.length<1){
			alert("닉네임을 입력해 주세요.");			
			return false;
		}
		
		// 휴대폰번호 체크
		var cellphone = $("#cellphone").val();
		if(cellphone.length<1){
			alert("휴대폰 번호를 입력해 주세요.");			
			return false;
		}
		
		// 타수 체크
		var average = $("#average").val();
		if(average.length<1){
			alert("타수를 입력해 주세요.");			
			return false;
		}
		
		// 이미지 체크
		var profileImage = $("#profileImage").val();
		if(profileImage.length<1){
			alert("이미지를 선택해 주세요.");			
			return false;
		}
		
		
		/*약관 동의 유무
		var agree =	$("#chk-agree").is(":checked");
		if(agree == false){
			alert("약관에 동의해 주세요")
			return false;
		}
		*/
		
		
		return true;
		
	});
	//id check 버튼을 클릭했을 떄
	$("#btnIdCheck").on("click",function(){
		console.log("클릭");
		
		//아이디 추출
		var id = $("[name=id]").val();
		console.log(id);
		//통신 id
		$.ajax({

			url : "${pageContext.request.contextPath }/user/idcheck",//주소 요청
			type : "post",
			//contentType : "application/json",
			data : {id : id},

			dataType : "json",
			success : function(jsonResult) {
				console.log(jsonResult);
					
				if(jsonResult.result == "success"){//성공이면
					//사용가능한지 표현함
					if(jsonResult.data == true){//사용가능
						$("#idcheckMsg").html(id + "사용가능");
						
					}else{//불가
						$("#idcheckMsg").html(id + "사용중");
					}
					
				}else{//실패면
					var msg = jsonResult.failMsg;
					alert(msg);
				}
			},
			
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
		
	});
</script>			

	
</html>