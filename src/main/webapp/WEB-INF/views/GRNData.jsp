<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<%@include file="MenuBar.jsp"%>
	<div class="container">
		<div class="card">
			<div class="card-header bg-info text-white">
				<h2>Welcome to GRN Data Page!!</h2>
			</div>
			<br> <br> <br>
			<div class="card-body">
				<c:choose>
					<c:when test="${empty goodRecieveNote}">
						<h4>No Data Found</h4>
					</c:when>
					<c:otherwise>
						<div class="table-responsive">
							<table class="table table-hover table-bordered ">
								<tr class="thead-light">
									<th>ID</th>
									<th>CODE</th>
									<th>TYPE</th>
									<th>PURCHASE ORDER CODE</th>
									<th>NOTE</th>
									<th colspan="9" align="center">OPERATIONS</th>
								</tr>
								<c:forEach items="${goodRecieveNote}" var="grn">
									<tr>
										<td><c:out value="${grn.grnId}"></c:out></td>
										<td><c:out value="${grn.grnCode}"></c:out></td>
										<td><c:out value="${grn.grnType}"></c:out></td>
										<td><c:out value="${grn.purchase.orderCode}"></c:out></td>
										<td><c:out value="${grn.grnDesc}"></c:out></td>

										

										<td><a href="viewItems?grnId=${grn.grnId}">
												<img src="../resources/images/items2.png" height="40"
												width="40" />
										</a></td>
										<td><a href="view?grnId=${grn.grnId}"> <img
												src="../resources/images/view.png" height="40" width="40">
										</a></td>
										<td><a href="edit?grnId=${grn.grnId}"> <img
												src="../resources/images/edit.png" height="40" width="40">
										</a></td>
										<td><a href="delete?grnId=${grn.grnId}"> <img
												src="../resources/images/delete.png" height="40" width="40">
										</a></td>
										<td><a href="excelExport?grnId=${grn.grnId}">
												<img src="../resources/images/excel.png" height="40"
												width="40" />
										</a></td>
										<td><a href="pdfExport?grnId=${grn.grnId}">
												<img src="../resources/images/pdf.png" height="40"
												width="40" />
										</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<br>
						<h6>
							<a href="excelExport"><img
								src="../resources/images/BulkExcel.png" height="80" width="180" /></a>
							<a href="pdfExport"><img
								src="../resources/images/BulkPdf.png" height="80" width="180" /></a>
							<a href="report"><img src="../resources/images/charts.png"
								height="80" width="180" /></a>
						</h6>
					</c:otherwise>
				</c:choose>
			</div>

			<c:if test="${message !=null}">
				<div class="card-footer">${message}</div>
			</c:if>
		</div>
	</div>
	<br>
</body>
</html>