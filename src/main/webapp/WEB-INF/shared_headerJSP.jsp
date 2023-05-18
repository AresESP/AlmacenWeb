<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}"><fmt:message key="homepage"/></a></li>
                <li><a href="${pageContext.request.contextPath}/clientes"><fmt:message key="clientsListPage"/></a></li>
                <li><a href="${pageContext.request.contextPath}/nuevoUsuario"><fmt:message key="addClientPage"/></a></li>
            </ul>
        </nav>
        
        <form>
	        <select id="language" name="language" onchange="submit()">
	            <option value="ar" ${language == 'ar' ? 'selected' : ''}><fmt:message key="arabic"/></option>
	            <option value="ar_DZ" ${language == 'ar_DZ' ? 'selected' : ''}><fmt:message key="arabicArgelia"/></option>
	            <option value="gl" ${language == 'gl' ? 'selected' : ''}><fmt:message key="galizian"/></option>
	            <option value="en" ${language == 'en' ? 'selected' : ''}><fmt:message key="english"/></option>
	            <option value="es" ${language == 'es' ? 'selected' : ''}><fmt:message key="spanish"/></option>            
	        </select>&nbsp;&nbsp;&nbsp; <b ${(language == 'ar') ?'dir="rtl" align="right" lang="ar"':''}><fmt:message key="keyMsgInternacionalizado" /></b><!-- dir="rtl" lang="ar" -->
    	</form>
    	
    	<h1>${param.tituloSeccion}</h1>
    </header>
</body>
</html>