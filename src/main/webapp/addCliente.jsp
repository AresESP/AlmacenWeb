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
	<%@include file="/WEB-INF/shared_headerJSP.jsp"%>
    
    <main>
    	<h1>Añadir usuario</h1>
        <form action="NuevoUsuarioServlet" method="post">
            <input type="text" name="nombre" placeholder="Nombre" required>

            <input type="text" name="apellido1" placeholder="Primer Apellido" required>

            <input type="text" name="apellido2" placeholder="Segundo Apellido">

            <input type="text" name="nif" placeholder="NIF" required>

            <input type="tel" name="telefono" placeholder="Telefono" required>
            
            <button type="submit" value="Submit">Insertar</button>
        </form>
        <c:if test="${not empty cliente}">
        	<h3>Cliente añadido exitosamente, datos cliente: </h3>
        	<ul>
        		<li>Nombre: ${cliente.nombre}</li>
        		<li>Primer apellido: ${cliente.apelido1}</li>
        		<li>Segundo apellido: </li>
        		<c:choose>
        			<c:when test="${not empty cliente.apelido2}">
        				${cliente.apelido2}
        			</c:when>
        			<c:otherwise>
        				---
        			</c:otherwise>
        		</c:choose>
        		<li>NIF: ${cliente.nif}</li>
        		<li>Telefono: ${cliente.telefono}</li>
        	</ul>
        </c:if>
    </main>
    <%=5/0 %>
</body>
</html>