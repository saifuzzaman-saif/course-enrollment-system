<%--
  Author: saifuzzaman
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Notification</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <c:url var="bootstrapUrl" value="/css/bootstrap-4.0.0.min.css"></c:url>
    <link href="${bootstrapUrl}" rel="stylesheet">
    <c:url var="MyCSSUrl" value="/css/custom-1.0.0.css"/>
    <link href="${MyCSSUrl}" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<jsp:include page="header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <div class="col-xl-3">
            <jsp:include page="menuView.jsp"/>
        </div>
        <div class="col-xl-9">
            <div class="container"
                 style="padding-top: 300px;
                 padding-left: 100px;
                 padding-right: 100px;
                 padding-bottom: 261px;
                 text-align: center">
                <div class="alert alert-info">
                    <strong>Info!</strong> <c:out value="${alert}"/>
                    <c:url var="homeUrl" value="/home"/>
                    <a href="${homeUrl}">
                        <button type="button" class="btn btn-outline-warning"><fmt:message key="go.home"/></button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>
