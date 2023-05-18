<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="shared_headerJSP.jsp"%>
	<h1>Editando cliente con id:${cliente.clienteId}</h1>
	<form action="editarCliente" method="post">
		 <input type="hidden" name="idCliente" value="${cliente.clienteId}">
		
		 <input type="text" name="nombre" placeholder="Nombre" value="${cliente.nombre}">

         <input type="text" name="apellido1" placeholder="Primer Apellido" value="${cliente.apelido1}">

         <input type="text" name="apellido2" placeholder="Segundo Apellido" value="${cliente.apelido2}">

         <input type="text" name="nif" placeholder="NIF" value="${cliente.nif}">

         <input type="text" name="telefono" placeholder="Telefono" value="${cliente.telefono}">
         
         <button type="submit" value="Submit">Insertar</button>
	
	</form>
	
	<c:if test="${not empty clienteActualizado}">
        <h3>Cliente añadido exitosamente, datos cliente: </h3>
        <ul>
        	<li>Nombre: ${clienteActualizado.nombre}</li>
        	<li>Primer apellido: ${clienteActualizado.apelido1}</li>
        	<li>Segundo apellido:
        		<c:choose>
        			<c:when test="${not empty clienteActualizado.apelido2}">
        				${clienteActualizado.apelido2}
        			</c:when>
        			<c:otherwise>
        				---
        			</c:otherwise>
        		</c:choose>
        	</li>
        	<li>NIF: ${clienteActualizado.nif}</li>
        	<li>Telefono: ${clienteActualizado.telefono}</li>
        </ul>
    </c:if>
</body>
</html>