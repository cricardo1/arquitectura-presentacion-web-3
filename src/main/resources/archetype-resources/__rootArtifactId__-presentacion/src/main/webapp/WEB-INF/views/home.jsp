<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<!-- ------------------------ estilos -------------------------------- -->
		<!-- bootstrap -->
		<link id="comun-template"  href="<c:url value='/webResources/bootstrap/core/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/webResources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/webResources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- jqGrid -->
		<link   href="<c:url value='/webResources/jquery/plugins/jqGrid/css/ui.jqgrid.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/webResources/jquery/plugins/jqGrid/css/ui.jqgrid-bootstrap-ui.css'/>" rel="stylesheet" type="text/css" />
		
				
		<!-- custom style procesar -->
		<link id="customStyle" href="<c:url value='/webResources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />
		
		
		
		<!-- custom scroller -->
		<link  href="<c:url value='/webResources/jquery/plugins/customScroller/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css" />
		
	<!-- ------------------------ scripts -------------------------------- -->
		
		<!-- jquery -->
		<script type="text/javascript" src="<c:url value='/webResources/jquery/core/js/jquery.js'/>"></script>		
		
		<script type="text/javascript" src="<c:url value='/webResources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.min.js'/>"></script>
		
		<!-- plugin de validacion -->
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/JQValidation/jquery.validate.min.js'/>"></script>
		
		<!-- bootstrap -->
		<script type="text/javascript" src="<c:url value='/webResources/bootstrap/core/js/scripts.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/bootstrap/core/js/bootstrap.min.js'/>"></script>
		
		<!-- jqGrid -->		
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/jqGrid/jquery.jqGrid.min.js'/>"></script>		
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/jqGrid/i18n/grid.locale-es.js'/>"></script>	
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/jqGrid/i18n/grid.locale-en.js'/>"></script>
		
		<!-- date time picker -->
		<link  href="<c:url value='/webResources/jquery/plugins/datepicker/css/bootstrap-datetimepicker.css'/>" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/datepicker/js/moment-with-locales.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/jquery/plugins/datepicker/js/bootstrap-datetimepicker.js'/>"></script>
		
		<!-- Utilerias -->
		<script type="text/javascript" src="<c:url value='/webResources/util/js/procesarUtil.js'/>"></script>
		
	<title> </title>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>Nuevo proyecto Bootstrap</h1> 
    <p>Capa de Presentacion Arquitectura Web 3.0</p>
    <p>Fecha: ${fecha}</p>
  </div>  
</div>
	
	
</body>
</html>
