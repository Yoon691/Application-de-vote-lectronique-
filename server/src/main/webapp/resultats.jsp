<%--
  Created by IntelliJ IDEA.
  User: Lionel
  Date: 03/10/2021
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="bulletins" type="java.util.List" beanName="bulletins" scope="application"/>
<jsp:useBean id="votes" scope="request" class="java.util.HashMap"/>
<html>
<head>
    <title>Vote</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/vote.css">
</head>
<body>
<jsp:include page="WEB-INF/components/header.jsp"><jsp:param name="titre-header" value="Resultats actuels de l'election"/></jsp:include>
<main id="contenu" class="wrapper">
    <jsp:include page="WEB-INF/components/menu.jsp"/>
    <article class="contenu">
        <h2>Voici le résultat courant de l'élection</h2>
        <%--  /--%>

        <ul>
            <c:forEach items="<%= votes.keySet()%>" var="nomCandidat">
                <li><c:out value="${nomCandidat}"/> : <%= votes.get((String)pageContext.getAttribute("nomCandidat")) %> vote(s)</li>
            </c:forEach>
        </ul>
    </article>
</main>

<jsp:include page="WEB-INF/components/footer.html"/>
</body>
</html>
