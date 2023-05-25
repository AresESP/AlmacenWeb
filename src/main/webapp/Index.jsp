<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" autoFlush="false"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
      
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale.language}"
    scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="bundle.language" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="pageTitle"/></title>
</head>

<body>
	<jsp:include page="/WEB-INF/shared_headerJSP.jsp">
		<jsp:param name="tituloSeccion" value="Inicio" />
	</jsp:include>
    <main>
        <section>
            <img class="slides" src="img_la.jpg" width="100%">
            <img class="slides" src="img_ny.jpg" width="100%">
            <img class="slides" src="img_ch.jpg" width="100%">
            <script>w3.slideshow(".slides", 1500);</script>
        </section>

        <section>
            <header><h1><fmt:message key="indexPresentation"/></h1></header>
            <article>
                <p><fmt:message key="indexPresentationParagraph"/></p>
            </article>

            <article>
                <header><h3><fmt:message key="indexDiagram"/></h3></header>
                <figure>
                    <img src="" alt="Imagen de diagrama ER del almacen">
                    <figcaption><fmt:message key="indexERChartCaption"/></figcaption>
                </figure>
            </article>
        </section>

        <section>
            <header><h2><fmt:message key="indexContact"/></h2></header>
            <ul>
                <li><fmt:message key="adress"/></li>
                <li><fmt:message key="phone"/></li>
                <li><fmt:message key="email"/></li>
            </ul>

            <figure>
                <img src="" alt="Imagen de almacén desde arriba">
                <figcaption><fmt:message key="indexWarehouseCaption"/></figcaption>
            </figure>
        </section>
    </main>
   <%=5/0 %>
</body>
</html>