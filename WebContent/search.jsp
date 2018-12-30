<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="model.*"%>
<%@page import="constant.*"%>

<%
	ArrayList<Product> products = (ArrayList) request.getAttribute("products");
%>

<%
	ArrayList<Category> categorys = (ArrayList) request.getAttribute("categorys");
%>

<%
	Category category = (Category) request.getAttribute("category");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">

<jsp:include page="include/head.jsp"></jsp:include>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/search.css">

</head>

<body>

	<!-- menu top -->
	<jsp:include page="include/menu-area.jsp"></jsp:include>
	<!-- end menu top -->



	<!-- infomation -->
	<jsp:include page="include/infomation.jsp"></jsp:include>
	<!-- end infomation -->


	<!-- slider area -->
	<jsp:include page="include/menu.jsp"></jsp:include>
	<!-- end slide-area -->



	<div class="container">


		<!-- menu left -->
		<jsp:include page="include/sidebar.jsp"></jsp:include>
		<!-- end menu left -->

		<%
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/YYYY");
		%>

		<div class="content">

			<!-- slider area -->
			<jsp:include page="include/slide.jsp"></jsp:include>
			<!-- end slide-area -->

			<div class="banchay">

				<h3><%=(category.getName() != null) ? category.getName() : ""%></h3>

				<%
					for (Product p : products) {
				%>
				<div class="product ">
					<div class="img-product view">
						<img class="image"
							src="${pageContext.request.contextPath}/admin/upload/<%= p.getThumbnail().getName() %>"
							alt="">
						<div class="overlay">
							<a
								href="${pageContext.request.contextPath}/chi-tiet/<%= p.getUrl() %>-<%=p.getId()%>">
								<div class="text">
									<p>
										<%
											String title = p.getTitle();
												int maxLength = (title.length() < Constant.soLongChuMoTa) ? title.length() : Constant.soLongChuMoTa;
												String newtitle = title.substring(0, maxLength);

												out.print(newtitle + " ...");
										%>
									</p>
									<p
										style="color: white; font-size: 15px; text-transform: uppercase; margin-top: 31px;"><%="Tác giả : " + p.getAuthor()%></p>
									<p
										style="color: #fff; font-size: 15px; text-transform: uppercase; margin-top: 31px;"><%="Xuất bản " + format.format(p.getPublicAt())%></p>
								</div>
							</a>
						</div>
					</div>
					<div class="detail-product">
						<p><%=p.getName()%></p>
						<div class="btn-select">
							<a
								href="${pageContext.request.contextPath}/chi-tiet/<%= p.getUrl() %>-<%=p.getId()%>">Chi
								tiết</a>
							<form action="${pageContext.request.contextPath}/cart"
								method="post">
								<input type="hidden" name="command" value="plus" /> <input
									type="hidden" name="productId" value="<%=p.getId()%>" />
								<button type="submit">Mua</button>
							</form>
						</div>
						<div class="price"><%=p.getPrice()%>
							VND
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>

			<div class="quangcao">
				<img src="${pageContext.request.contextPath}/img/vanphong1.png"
					alt=""> <img
					src="${pageContext.request.contextPath}/img/vanphong2.jpg" alt="">
			</div>
		</div>
	</div>

	<footer>
		<div class="footer-top">
			<div class="footer-top-menu bb-2">
				<nav>
					<ul>
						<li><a href="#">home</a></li>
						<li><a href="#">Enable Cookies</a></li>
						<li><a href="#">Privacy and Cookie Policy</a></li>
						<li><a href="#">contact us</a></li>
						<li><a href="#">blog</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- end footer-top -->


		<div class="footer-mid">
			<div class="footer-description">
				<div class="simple-footer-bottom">
					<div class="footer-title">
						<h3>Products</h3>
					</div>

					<div>
						<ul>
							<li><a href="about.html">About us</a></li>
							<li><a href="#">Prices drop </a></li>
							<li><a href="#">New products</a></li>
							<li><a href="#">Best sales</a></li>
						</ul>
					</div>
				</div>

				<div class="simple-footer-bottom">
					<div class="footer-title">
						<h3>Products</h3>
					</div>

					<div>
						<ul>
							<li><a href="about.html">About us</a></li>
							<li><a href="#">Prices drop </a></li>
							<li><a href="#">New products</a></li>
							<li><a href="#">Best sales</a></li>
						</ul>
					</div>
				</div>

				<div class="simple-footer-bottom">
					<div class="footer-title">
						<h3>Products</h3>
					</div>

					<div>
						<ul>
							<li><a href="about.html">About us</a></li>
							<li><a href="#">Prices drop </a></li>
							<li><a href="#">New products</a></li>
							<li><a href="#">Best sales</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="footer-contact">
				<div class="footer-title">
					<h3>Thông tin cửa hàng</h3>
				</div>

				<div class="footer-contact-detail">
					<p class="adress">
						<span>Địa chỉ</span> Nguyễn Trãi Hà Đông Hà Nội
					</p>
					<p>
						<span>SDT :</span> 0989 456 639
					</p>
					<p>
						<span>Email:</span> quantn97@gmail.com
					</p>
				</div>
			</div>
			<!-- end footer-contact -->
		</div>
		<!-- footer-mid-end -->

		<div class="footer-bottom">
			<div class="copy-right-area">
				<p>
					Copyright ©<a href="#">Koparion</a>. All Right Reserved.
				</p>
			</div>
			<div class="payment-img text-right">
				<a href="#"><img
					src="${pageContext.request.contextPath}/img/1.png" alt="payment"></a>
			</div>
		</div>
		<!-- end footer-bottom -->
	</footer>

</body>

</html>