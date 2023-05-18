<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Obtener cliente</title>
</head>
<body>
	<%@include file="/WEB-INF/shared_headerJSP.jsp"%>
    <main>
    	<h1>Obteniendo clientes</h1>
		<table border="1">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Primer Apellido</th>
					<th>Segundo Apellido</th>
					<th>NIF</th>
					<th>Telefono</th>
					<th>Editar</th>
					<th>Borrar</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cliente" items="${clientes}">
					<tr>
						<c:set var="editarCliente" value="/editarCliente?idCliente=${cliente.clienteId}"></c:set>
						<c:set var="borrarCliente" value="/borrarCliente?idCliente=${cliente.clienteId}"></c:set>
						<td>${cliente.nombre}</td>
						<td>${cliente.apelido1}</td>
						<c:choose>
							<c:when test="${empty cliente.apelido2}">
								<td> - - - </td>
							</c:when>
							<c:otherwise>
								<td>${cliente.apelido2}</td>
							</c:otherwise>
						</c:choose>
						<td>${cliente.nif}</td>
						<td>${cliente.telefono}</td>
						<td><a href="${pageContext.request.contextPath}${editarCliente}">Editar</a></td>
						<td><a href="${pageContext.request.contextPath}${borrarCliente}">Borrar</a></td>
					<tr>				
				</c:forEach>					
			</tbody>
		</table>
    </main>

</body>
</html>