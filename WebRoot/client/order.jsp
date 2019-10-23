<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/bookstore/client/css/main.css">
<script type="text/javascript" src="/bookstore/client/js/order.js"></script>
</head>
<body>
<%@ include file="head.jsp" %>
<%@ include file="menu_search.jsp" %>
<!-- 订单部分 -->
<div align="center">
	<table width="1000" cellspacing="0">
		<tr>
			<td>
				<div style="text-align: right; margin: 5px 10px 5px 0px">
					<a href="${pageContext.request.contextPath}/client/index.jsp">首页</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/client/cart.jsp">购物车</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;
					订单
				</div>
				<form id="orderForm" action="/bookstore/CreateOrderServlet" method="post">
					<table cellpadding="0" class="infocontent">
						<tr>
							<td style="text-align: center;">
								<img src="${pageContext.request.contextPath}/client/ad/page_ad.jpg" width="100%" height="89" />
								<table width="100%" border="0" cellpadding="0">
									<tr>
										<td>
											<img src="/bookstore/client/images/buy2.gif" width="635" height="38" />
											<p>您好，欢迎来到网上书城结算中心</p>
										</td>
									</tr>
									<tr>
										<td>
											<table cellpadding="1" class="carttable">
												<tr>
													<td width="10%">序号</td>
													<td width="40%">商品名称</td>
													<td width="10%">价格</td>
													<td width="10%">类别</td>
													<td width="10%">数量</td>
													<td width="10%">小计</td>
												</tr>
												</table>



											<c:set var="totalPrice" value="0"></c:set>
											<c:forEach items="${cart}" var="entry" varStatus="vs">
												<table width="100%" border="0" cellspacing="0">
													<tr>
														<td width="10%">${vs.count}</td>
														<td width="40%">${entry.key.name}</td>
														<td width="10%">${entry.key.price}</td>
														<td width="10%">${entry.key.categroy}</td>
														<td width="10%"><input type="text" value="${entry.value}" style="width: 20%;"></td>
														<td width="10%">${entry.key.price*entry.value}</td>
													</tr>
												</table>
												<c:set var="totalPrice" value="${totalPrice+entry.key.price*entry.value}"></c:set>
											</c:forEach>
											


											<table cellpadding="1" class="carttable">
												<tr>
													<td style="text-align: right;padding-right: 40px;">
														<font style="color:#FF0000;font-weight: bold;">
															合计：&nbsp;&nbsp;&nbsp;${totalPrice}元
														</font>
														<input type="hidden" name="money" value="${totalPrice}" />
													</td>
												</tr>
											</table>

											<table>
												<tr>
													<td>收货地址：</td>
													<td>
														<input type="text" name="receiverAddress" value="" style="width: 350px;" />
														<span id="receiverAddressMsg"></span>
													</td>
												</tr>

												<tr>
													<td>收货人：</td>
													<td>
														<input type="text" name="receiverName" value="${user.username}" style="width: 150px;" />
														<span id="receiverNameMsg"></span>
													</td>
												</tr>
												
												<tr>
													<td>联系方式：</td>
													<td>
														<input type="text" name="receiverPhone" value="${user.telephone}" style="width:150px;">
														<span id="receiverPhoneMsg"></span>
													</td>
												</tr>

											</table>

											<hr />
											<div align="right">
												<img src="/bookstore/client/images/gif53_029.gif" width="204" height="51" onclick="checkOnSubmit();" />	
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>	
			</td>
		</tr>
	</table>
</div>
</body>
</html>