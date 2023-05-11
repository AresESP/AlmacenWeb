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
    	<h1>Añadir usuario</h1>
        <form action="NuevoUsuarioServlet" method="post">
            <input type="text" name="nombre" placeholder="Nombre" required>

            <input type="text" name="apellido1" placeholder="Primer Apellido" required>

            <input type="text" name="apellido2" placeholder="Segundo Apellido">

            <input type="text" name="nif" placeholder="NIF" required>

            <input type="tel" name="telefono" placeholder="Telefono" required>
            
            <button type="submit" value="Submit">Insertar</button>
        </form>
        <c:if test="${idCliente > 0}">
        	<h6>Cliente añadido exitosamente con id:${idCliente}</h6>
        </c:if>
    </main>
</body>
</html>