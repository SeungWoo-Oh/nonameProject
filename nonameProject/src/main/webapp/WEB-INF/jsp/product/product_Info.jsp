<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/product_Info.css'/>" />
<script type="text/javascript">
	/* 화면 초기세팀 Jquery */
	$(document).ready(function() {
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/showProductInfo.do",
			data : {
				"product_id" : 1
			},
			success : function(data) {
				showProductInfo(data);
				showCustomerPage(1);
			}
		});
			
	});
	
	/*paging 버튼 클릭*/
	$(document).on('click', '.pagingBtn', function() {
		var currentPage = $(this).attr('value');
		showCustomerPage(currentPage);
	});
	
	/*상품에 대한 기본 정보 출력*/
	function showProductInfo(data){
		$("#product_name").html(data.productInfo.product_name);
		$("#product_price").html(data.productInfo.product_price);
		$("#product_detail").html(data.productInfo.product_detail);
	}
	
	
	/*이용 후기 보여주기*/
	function showCustomerPage(currentPage){
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/showReviewBoard.do",
			data : {
				"currentPage" : currentPage
			},
			success : function(data) {				
				var html ="";
				$("#reviewList").empty();
				
				/*이용후기 글 추가*/
				$.each(data.reviewMap.reviewList,function(key, item){
					html += "<tr>";
					html += "<td>" + item.product_id +"</td>";
					html += "<td>" + item.product_name +"</td>";
					html += "<td>" + item.product_detail +"</td>";
					html += "</tr>";
				})
				
				$("#reviewList").append(html);
				html="";
				
				/*페이징 관련 버튼 추가*/
				if(data.reviewMap.startPage > 1){
					html +="<p class='first'><a class='pagingBtn' value='"+Number(data.reviewMap.startPage-data.reviewMap.blockCount)+"'> ◁  </a></p>";
				}
				html +="<ol>";				
				for(var i=data.reviewMap.startPage; i<=data.reviewMap.endPage; i++){
					if(i == data.reviewMap.currentPage){
						html += "<li><a class='currentBtn' style='cursor:pointer' value='"+i+"'>"+i+"</a><li>";
					}else{
						html += "<li><a class='pagingBtn' style='cursor:pointer' value='"+i+"'>"+i+"</a><li>";	
					}					
				}
				html +="</ol>";
				if(data.reviewMap.endPage != data.reviewMap.lastPage){
					html +="<p class='last'><a class='pagingBtn' value='"+Number(data.reviewMap.startPage+data.reviewMap.blockCount)+"'> ▷  </a></p>";
				}
				
				$(".reviewPaging").html(html);
				
			}
		});	
	}

</script>
</head>
<body>
	<form>
		<div class="wrap">
			<div class="product_container">
				<div class="imgArea">
					<img id="mainImg">
				</div>
				<div class="infoArea">
					<!-- 상품명 -->
					<h3 id="product_name"></h3>
					<table>
						<colgroup>
							<col width="30%">
							<col width="70%">
						</colgroup>
						<tr>
							<td>판매가</td>
							<td id="product_price"></td>
						</tr>
						<tr>
							<td>상품간략설명</td>
							<td id="product_detail"></td>
						</tr>
					</table>
					<!-- 상품 종합 정보 -->
					<div class="totalInfoArea">
						<table>
							<colgroup>
								<col width="284px">
								<col width="80px">
								<col width="110px">
							</colgroup>
							<tbody>
								<!-- 옵션 생성되는 곳 -->
							</tbody>
							<tfoot>
								<tr>
									<td><strong>총 상품금액:</strong></td>
									<td id="totalPrice">0 (0개)</td>
									<td></td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div class="btnArea">
						<div class="buttonDiv">
							<span><a href="#" style="height: 60px; width: 470px;" onclick="">구매하기</a></span> 
							<span><a href="#" style="height: 60px; width: 470px;" onclick="">장바구니</a></span>
							<span><a href="#" style="height: 60px; width: 470px;" onclick="">공유하기</a></span>
						</div>
					</div>
				</div>
			</div>

			<!-- 베스트 상품 영역 -->
			<div class="recomendArea">
				<div style="width: 1200px; text-align: center;"></div>
				<div></div>
			</div>

			<!-- 하단 -->
			<div>
				<!--  상품상제 정보, 사진 -->
				<div class="detailArea">
					<img src="${pageContext.request.contextPath}/images/222.JPG">
				</div>

				<!-- 이용 후기 -->
				<div class="customerArea">
					<center>
						<h2>이용후기</h2>
					</center>
					<table border="1">
						<colgroup>
							<col width="20%">
							<col>
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th>NO</th>
								<th>SUBJECT</th>
								<th>NAME</th>
							</tr>
						</thead>
						<tbody id="reviewList">
						</tbody>
					</table>
					<p class="reviewBtnArea">
						<a href="#">상품후기쓰기</a>
						<a href="#">모두보기</a>
					</p>
					<div class="reviewPaging">
					</div>
				</div>

				<!-- 배송 정보 관련 데이터 -->
				<div class="noteArea">
					<div class="bigNoteArea">
						<h2>
							<span>배 송 방 법</span>
						</h2>
					</div>
					<div class="smallNoteArea">
						<ul>
							<li>우체국 택배 / 배송 지역 : 전국지역 / 배송 기간 : 1일 ~ 5일</li>
						</ul>
					</div>
					<div class="bigNoteArea">
						<h2>
							<span>배 송 정 보</span>
						</h2>
					</div>
					<div class="smallNoteArea">
						<ul>
							<li>교환/취소/반품/교환/환불은 배송 완료 후 7일(영업일기준)이내 가능합니다. 고객님이 받으신 상품
								등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 상품 등을 수령한 날부터 3개월 이내, 그
								사실을 안 날 또는 알 수 있었던 날부터 30일 이내 가능합니다.</li>
						</ul>
					</div>
					<div class="bigNoteArea">
						<h2>
							<span>교환/반품 신청 기간</span>
						</h2>
					</div>
					<div class="smallNoteArea">
						<ul>
							<li>교환/취소/반품/교환/환불은 배송 완료 후 7일(영업일기준)이내 가능합니다. 고객님이 받으신 상품
								등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 경우에는 상품 등을 수령한 날부터 3개월 이내, 그
								사실을 안 날 또는 알 수 있었던 날부터 30일 이내 가능합니다.</li>
						</ul>
					</div>
					<div class="bigNoteArea">
						<h2>
							<span>교환/반품의 회수(배송) 비용</span>
						</h2>
					</div>
					<div class="smallNoteArea">
						<ul>
							<li>상품의 불량/하자인 경우 해당 상품 회수(배송)비용은 무료이나, 고객님의 단순변심 및 색상/사이즈 에
								대한 불만인 경우는 택배비는 고객님 부담입니다.</li>
						</ul>
					</div>
					<div class="bigNoteArea">
						<h2>
							<span>교환/반품 불가안내</span>
						</h2>
					</div>
					<div class="smallNoteArea">
						<ul>
							<li>고객님이 상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우 (단, 내용 확인을
								위한 포장 개봉의 경우는 예외) 고객님의 단순변심으로 인한 교환/반품 신청이 상품 수령한 날로부터 7일이 경과한
								경우 고객님의 사용 또는 일부 소비에 의해 상품의 가치가 훼손된 경우 시간 경과에 따라 재판매가 어려운 상품 등의
								가치가 현저히 감소한 경우.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>