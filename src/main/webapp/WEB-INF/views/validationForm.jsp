<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AnaSayfaView</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<hr>
	<div class="container">
		<div class="col-md-6">
		<font color="green">Validation Form</font>
		<hr>
			<form:form action="home/show" method="post" modelAttribute="kullanici">
				
				<table class="table">
					<tbody>
						<tr>
							<td>KULLANİCİ ADİ: </td>
							<td>
							<form:input path="kullaniciAdi"/> 
							<font color="red"><form:errors path="kullaniciAdi"/></font>
							</td>
						</tr>
						<tr>
							<td>MAAŞ:</td>
							<td><form:input path="yas"/>
							<font color="red"><form:errors path="maas"/></font>
							</td>
						</tr>
						<tr>
							<td>PAROLA:</td>
							<td><form:password path="parola"/>
							<font color="red"><form:errors path="parola"/></font>
							</td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit"  value="Gönder"/></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>