<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="WEB-INF/unnespectedError.jsp" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="bP" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Probando la plantilla</title>
</head>
<body>

	<bP:basePage>
		<jsp:attribute name="header">
			<jsp:include page="/WEB-INF/shared_headerJSP.jsp"></jsp:include>
		</jsp:attribute>
		
		<jsp:attribute name="footer">
			<jsp:include page="/WEB-INF/shared_headerJSP.jsp"></jsp:include>
		</jsp:attribute>
		
		<jsp:body>
			<section>
				<h1>Probando la Sección</h1>
				<p>La documentación es como la comida, cuando es buena es lo mejor de este mundo, y cuando es mala por lo menos tienes comida</p>
			</section>
		</jsp:body>		
	</bP:basePage>
</body>
</html>