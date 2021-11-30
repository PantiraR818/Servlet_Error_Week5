<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!--แท็กไลบรารี่ แท็กลิป กรณีถ้าขึ้น &quot ให้ลบ แล้วเปลี่ยนเป็น  Core แท็กหลัก สากลโลกใช้ c <==prefix"  -->  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!--JSTL ย่อการเขียน JSP & HTML-->
  
  <!--ดัก Error ถ้าเกิดErrorให้เด้งไปที่ err.jsp-->
<%-- <%@ page errorPage="err.jsp" %> --%>
<%=1/0 %>

  <!--หน้าIndexวิ่งไปหาServlet ก่อน ดีดไปที่URl Servlet--> 
 <c:if test="${empty products}">
 	<c:redirect url="SaveServlet"></c:redirect>
 </c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
</head>
<body>
	<h1>All Products</h1>
	<hr>
	<table style="width:100%" border="1">
		<thead style="font-weight: bold; text-align: center">
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Description</td>
				<td>Price</td>
				<td>Unit In Stock</td>
			</tr>
		</thead>
								<!--ตัวแปรที่จะรับค่า  --> 
		<c:forEach items="${products}"  var="p">
			<tr style="text-align: center">
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.description}</td>
				<td>${p.price}</td>
				<c:choose>
					<c:when test="${p.unitInStock < 50}">
						<td style="color: red; font-weight: bold;">${p.unitInStock}</td>
					</c:when>
					<c:when test="${p.unitInStock < 100}">
						<td style="color: blue; font-weight: bold;">${p.unitInStock}</td>
					</c:when>
					<c:otherwise>
						<td style="color: green; font-weight: bold;">${p.unitInStock}</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
	</table>
</body>
</html>