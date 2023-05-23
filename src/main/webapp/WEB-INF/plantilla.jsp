<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<jsp:include page="/WEB-INF/shared_headerJSP.jsp" flush="true">
		<jsp:param name="tituloSeccion" value="Inicio" />
	</jsp:include>
	<main>
		<section>
			<h1>${param.sectionTitle}</h1>
				<article>
					<h2>${param.articleTitle}</h2>
					<p>${param.articleParagraph}</p>
					<figure>
						<img alt="${param.article.imageAlt}" src="${param.imageSrc}">
						<figcaption>${param.imageCaption}</figcaption>
					</figure>
				</article>
		</section>
	</main>
	<aside>
		<h4>${param.asideTitle}</h4>
		<p>${param.asideParagraph}</p>
	</aside>
<!-- Añadir footer -->
</body>
</html>