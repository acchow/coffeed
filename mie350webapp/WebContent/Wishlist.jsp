<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>My Wishlist</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1>MY Products</h1>

				<table border=1 class="sortable" style="width:100%">
				<thead>
						<tr>
							<th>Product</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Description</th>
							<th>Rating</th>
							<th>Link</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ProductDao.getAllProducts()}" var="product">
							<tr>
								<td align="center"><c:out value="${product.getProductName()}" /></td>
								<td align="center"><c:out value="${product.getBrandName()}" /></td>
								<td align="center"><c:out value="${product.getPrice()}" /></td>
								<td align="center"><c:out value="${product.getLongDescription()}" /></td>
								<td align="center"><c:out value="${product.getAvgRating()}" /></td>
								<td align="center"><c:out value="${product.getLink()}" /></td>
								<td align="center"><a class="btn btn-danger"
									href="ProductController?action=delete&productId=<c:out value="${product.getProductid()}"/>">Remove</a></td>
								<!--  something to take in userID? -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<h1>MY Shops</h1>

				<table border=1 class="sortable" style="width:100%">
				<thead>
						<tr>
							<th>Shop</th>
							<th>Brand</th>
							<th>Location</th>
							<th>Description</th>
							<th>Rating</th>
							<th>Website</th>
							<th>Instagram</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${Shops}" var="shop">
							<tr>
								<td align="center"><c:out value="${shop.getShopName()}" /></td>
								<td align="center"><c:out value="${shop.getBrandName()}" /></td>
								<td align="center"><c:out value="${shop.getLocation()}" /></td>
								<td align="center"><c:out value="${shop.getLongDescription()}" /></td>
								<td align="center"><c:out value="${shop.getAvgRating()}" /></td>
								<td align="center"><c:out value="${shop.getWebsite()}" /></td>
								<td align="center"><c:out value="${shop.getInstagram()}" /></td>
								<td align="center"><a class="btn btn-danger"
									href="ShopController?action=delete&shopId=<c:out value="${shop.getShopName()}"/>">Remove</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>