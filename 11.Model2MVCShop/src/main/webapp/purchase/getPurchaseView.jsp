<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	
 	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }
    </style>


	<script type="text/javascript">

	$(function(){
		$("button:contains('수정')").on("click", function(){
			self.location ="/purchase/updatePurchase?tranNo=${vo.tranNo}" ; 
		});
		
		$("button:contains('확인')").on("click", function(){
			history.go(-1); 
		});
		
	 
		
 		
 	}) ;
	
	
</script>
</head>

<body bgcolor="#ffffff" text="#000000">
	<jsp:include page="/layout/toolbar.jsp" />
	
	<div class="container">
 		<div class ="page-header text-info">
 			<h3> 구매 상세 조회 </h3>
 		</div>
		<table class="table table-condensed">
	
		<tbody>
		
		
		    <tr>
		      <th scope="row"> 물품번호 </th>
		      <td> ${vo.tranNo}</td>
		    </tr>
		    		    
		    <tr>
		      <th scope="row">구매자아이디 </th>
		      <td> ${vo.buyer.userId} </td>
		    </tr>
		    <tr>
		      <th scope="row"> 구매방법  </th>
		      <td>
		      <c:if test="${vo.paymentOption  eq '1  '}">
 		 				현금구매
 				</c:if>
 				<c:if test = "${vo.paymentOption eq '2  '}">
					신용구매
				</c:if>
			 	</td>
		    </tr>
		    		    
		    <tr>
		      <th scope="row">구매자이름</th>
		      <td>   ${vo.receiverName}  </td>
		    </tr>
		    
 		    <tr>
		      <th scope="row">구매자연락처 </th>
		      <td>${vo.receiverPhone}  </td>
		    </tr>
		    		    		    		    
	  		 <tr>
		      <th scope="row"> 구매자주소 </th>
		      <td> ${vo.divyAddr} </td>
		    </tr>
		    
	  		 <tr>
		      <th scope="row"> 구매요청사항 </th>
		      <td>  ${vo.divyRequest}  </td>
		    </tr>		    
	  		 <tr>
		      <th scope="row"> 배송희망일 </th>
		      <td> ${vo.divyDate}  </td>
		    </tr>	  		 <tr>
		      <th scope="row"> 주문일 </th>
		      <td> ${vo.orderDate}</td>
		    </tr>	  		
		    
		    
	 </tbody>
	
	
		</table>
		<br>
		
		
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
 			  <button type="button" class="btn btn-primary" >확인</button>
			  
		    </div>
		  </div>
		
		
		
		
		
	</div>
 



</body>
</html>