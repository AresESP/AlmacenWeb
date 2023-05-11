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
    <header>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}">Inicio</a></li>
                <li><a href="${pageContext.request.contextPath}/clientes">Lista de Usuarios</a></li>
                <li><a href="${pageContext.request.contextPath}/nuevoUsuario">Añadir usuario</a></li>
                <li><a href="${pageContext.request.contextPath}/actualizarUsuario">Actualizar Usuario</a></li>
                <li><a href="${pageContext.request.contextPath}/eliminarUsuario">Eliminar Usuario</a></li>
            </ul>
        </nav>
    </header>
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cliente" items="${clientes}">
					<tr>
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
					<tr>				
				</c:forEach>					
			</tbody>
		</table>
    </main>

</body>
</html>