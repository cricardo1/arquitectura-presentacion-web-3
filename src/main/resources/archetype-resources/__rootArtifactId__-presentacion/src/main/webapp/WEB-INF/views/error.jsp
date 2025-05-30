<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- bootstrap -->
    <link href="<c:url value='/webResources/bootstrap/core/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value='/webResources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- custom style procesar -->
    <link href="<c:url value='/webResources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />
    
    <title>Error - Plataseis</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="error-template">
                    <h1>Oops!</h1>
                    <h2>Error ${statusCode}</h2>
                    <div class="error-details">
                        Lo sentimos, ha ocurrido un error al procesar su solicitud.
                        <c:if test="${not empty errorMessage}">
                            <p>${errorMessage}</p>
                        </c:if>
                        <p>Ruta: ${path}</p>
                    </div>
                    <div class="error-actions">
                        <a href="<c:url value='/'/>" class="btn btn-primary btn-lg">
                            <span class="glyphicon glyphicon-home"></span> Volver al Inicio
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- jquery -->
    <script type="text/javascript" src="<c:url value='/webResources/jquery/core/js/jquery.js'/>"></script>
    
    <!-- bootstrap -->
    <script type="text/javascript" src="<c:url value='/webResources/bootstrap/core/js/bootstrap.min.js'/>"></script>
</body>
</html>
