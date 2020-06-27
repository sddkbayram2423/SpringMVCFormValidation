<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Başarılı Form</title>
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
		<font color="red">GELEN KULLANICI BİLGİLERİ</font>
				<table class="table">
					<tbody>
						<tr> 
							<td><c:out value="Kullanıcı Adı"/></td>
							<td> <c:out value="${kullanici.kullaniciAdi}"/> </td>
						</tr>
						<tr> 
							<td><c:out value="Maas"/></td>
							<td> <c:out value="${kullanici.maas}"/> </td>
						</tr>
						<tr> 
							<td><c:out value="Parola"/></td>
							<td> <c:out value="${kullanici.parola}"/> </td>
						</tr>
					</tbody>
				</table>
		</div>
	</div>
</body>
</html>