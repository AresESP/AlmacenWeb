<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" required="true"%>
<%@attribute name="footer" fragment="true" required="true"%>
<%@attribute name="aside" fragment="true" required="false"%>
<html>
  <body>
    <div id="pageheader">
      <jsp:invoke fragment="header"/>
    </div>
    <div id="body">
      <jsp:doBody/>
    </div>
    <div id="pageaside">
      <jsp:invoke fragment="aside"/>
    </div>    
    <div id="pagefooter">
      <jsp:invoke fragment="footer"/>
    </div>
  </body>
</html>