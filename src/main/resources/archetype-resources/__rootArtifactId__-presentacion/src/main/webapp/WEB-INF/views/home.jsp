<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Plataseis - Arquitectura Web 3.0 - Aplicación de ejemplo">
    <meta name="author" content="Procesar S A de C V">
    <title>Plataseis - Arquitectura Web 3.0</title>
    
    <!-- Favicon -->
    <link rel="icon" href="<c:url value='/webResources/images/favicon.ico'/>" type="image/x-icon">
    
    <!-- ============= ESTILOS CSS ============= -->
    <!-- Bootstrap 5.3.3 CSS -->
    <link href="<c:url value='/webResources/vendor/bootstrap/css/bootstrap-5.3.3.min.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- Mantenemos los estilos personalizados -->
    <link href="<c:url value='/webResources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- Font Awesome 6 (reemplazo de Glyphicons) - Cargado desde CDN para evitar problemas con las fuentes -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" type="text/css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- jQuery UI 1.13.2 CSS -->
    <link href="<c:url value='/webResources/vendor/jquery-ui/jquery-ui-1.13.2.min.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- free-jqGrid (versión moderna de jqGrid compatible con jQuery 3.x) -->
    <link href="<c:url value='/webResources/vendor/free-jqgrid/css/ui.jqgrid.min.css'/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value='/webResources/vendor/free-jqgrid/css/ui-bootstrap5/jquery-ui-1.13.2.custom.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- custom style procesar -->
    <link id="customStyle" href="<c:url value='/webResources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />

    <!-- custom scroller -->
    <link href="<c:url value='/webResources/jquery/plugins/customScroller/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css" />
    
    <!-- Variables CSS personalizadas y estilos modernos -->
    <style>
    :root {
        --primary-color: #0d6efd;
        --secondary-color: #6c757d;
        --success-color: #198754;
        --info-color: #0dcaf0;
        --warning-color: #ffc107;
        --danger-color: #dc3545;
        --light-color: #f8f9fa;
        --dark-color: #212529;
        --font-family-sans-serif: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
    }
    
    /* Estilos personalizados adicionales */
    .bg-gradient-primary {
        background: linear-gradient(135deg, var(--primary-color), #0b5ed7);
    }
    
    .text-shadow {
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    }
    
    .card {
        transition: transform 0.3s, box-shadow 0.3s;
    }
    
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }
    
    .btn {
        transition: all 0.3s ease;
    }
    
    .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    
    /* Mejoras para validación de formularios */
    .error {
        color: var(--danger-color);
        font-size: 0.875em;
        margin-top: 0.25rem;
    }
    
    /* Mejoras para tablas */
    .table-hover tbody tr:hover {
        background-color: rgba(var(--primary-color), 0.05);
    }
    </style>
		
	<!-- ------------------------ scripts -------------------------------- -->
		
		<!-- jquery 3.7.1 -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery/jquery-3.7.1.min.js'/>"></script>
		<!-- jquery migrate para compatibilidad -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery/jquery-migrate-3.4.1.min.js'/>"></script>
		
		<!-- jQuery UI 1.13.2 JS -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery-ui/jquery-ui-1.13.2.min.js'/>"></script>
		
		<!-- jQuery Validate 1.19.5 - Plugin de validación -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery-validate/jquery.validate.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery-validate/additional-methods.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/vendor/jquery-validate/messages_es.min.js'/>"></script>
		
		<!-- Bootstrap 5.3.3 JS (incluye Popper) -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/bootstrap/js/bootstrap-5.3.3.bundle.min.js'/>"></script>
		
		<!-- free-jqGrid (versión moderna de jqGrid compatible con jQuery 3.x) -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/free-jqgrid/js/i18n/grid.locale-es.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/vendor/free-jqgrid/js/jquery.jqgrid.min.js'/>"></script>
		
		<!-- Usamos el selector de fecha nativo de HTML5 con estilos de Bootstrap 5 -->
		<!-- Day.js (reemplazo ligero de Moment.js para uso general) -->
		<script type="text/javascript" src="<c:url value='/webResources/vendor/dayjs/dayjs-1.11.10.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/vendor/dayjs/dayjs-locale-es.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/webResources/vendor/dayjs/dayjs-relativeTime.js'/>"></script>
		
		<!-- Mantenemos scripts personalizados -->
		<script type="text/javascript" src="<c:url value='/webResources/bootstrap/core/js/scripts.js'/>"></script>
		<!-- Utilerias -->
		<script type="text/javascript" src="<c:url value='/webResources/util/js/procesarUtil.js'/>"></script>
		
	<title> </title>
</head>
<body>
    <!-- ============= HEADER ============= -->
    <header class="bg-gradient-primary text-white py-3 mb-4 shadow-sm">
        <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-between">
                <div class="d-flex align-items-center">
                    <i class="fas fa-layer-group fs-2 me-3"></i>
                    <div>
                        <h1 class="h4 mb-0 text-shadow">Plataseis</h1>
                        <p class="small mb-0">Arquitectura Web 3.0</p>
                    </div>
                </div>
                <div>
                    <button class="btn btn-outline-light btn-sm" type="button" data-bs-toggle="tooltip" title="Configuración">
                        <i class="fas fa-cog"></i>
                    </button>
                    <button class="btn btn-light btn-sm ms-2" type="button">
                        <i class="fas fa-user me-1"></i>Mi Cuenta
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- ============= CONTENIDO PRINCIPAL ============= -->
    <main class="container py-4">
        <!-- Sección Hero -->
        <section class="p-5 mb-5 bg-light rounded-3 shadow-sm">
            <div class="container-fluid py-4">
                <h1 class="display-5 fw-bold text-primary">Nuevo proyecto Bootstrap 5</h1>
                <p class="col-md-8 fs-4 text-secondary">Capa de Presentación Arquitectura Web 3.0</p>
                <p class="col-md-8 fs-5">
                    <i class="far fa-calendar-alt me-2 text-primary"></i>
                    <span id="fechaActual">Fecha: ${fecha}</span>
                </p>
                <div class="d-grid gap-2 d-md-flex justify-content-md-start mt-4">
                    <button class="btn btn-primary btn-lg px-4 me-md-2" type="button">
                        <i class="fas fa-rocket me-2"></i>Comenzar
                    </button>
                    <button class="btn btn-outline-secondary btn-lg px-4" type="button">
                        <i class="fas fa-info-circle me-2"></i>Más información
                    </button>
                </div>
            </div>
        </section>
  
        <!-- Sección de Características -->
        <section class="mb-5">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="h3"><i class="fas fa-star text-warning me-2"></i>Características</h2>
                <div class="dropdown">
                    <button class="btn btn-sm btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-filter me-1"></i>Filtrar
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <li><a class="dropdown-item" href="#">Todas</a></li>
                        <li><a class="dropdown-item" href="#">Nuevas</a></li>
                        <li><a class="dropdown-item" href="#">Populares</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <!-- Tarjeta 1 -->
                <div class="col">
                    <div class="card h-100 border-primary border-top-0 border-end-0 border-bottom-0 border-3 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <span class="bg-primary bg-opacity-10 p-2 rounded me-3">
                                    <i class="fas fa-tachometer-alt text-primary"></i>
                                </span>
                                <h5 class="card-title mb-0">Rendimiento Optimizado</h5>
                            </div>
                            <p class="card-text">Aplicación optimizada para ofrecer tiempos de respuesta rápidos y una experiencia fluida para los usuarios.</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <small class="text-muted"><i class="far fa-clock me-1"></i>Actualizado hoy</small>
                                <a href="#" class="btn btn-sm btn-outline-primary">Detalles</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Tarjeta 2 -->
                <div class="col">
                    <div class="card h-100 border-success border-top-0 border-end-0 border-bottom-0 border-3 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <span class="bg-success bg-opacity-10 p-2 rounded me-3">
                                    <i class="fas fa-mobile-alt text-success"></i>
                                </span>
                                <h5 class="card-title mb-0">Diseño Responsive</h5>
                            </div>
                            <p class="card-text">Interfaz adaptable que funciona perfectamente en dispositivos de escritorio, tablets y móviles.</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <small class="text-muted"><i class="far fa-clock me-1"></i>Actualizado ayer</small>
                                <a href="#" class="btn btn-sm btn-outline-success">Detalles</a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Tarjeta 3 -->
                <div class="col">
                    <div class="card h-100 border-info border-top-0 border-end-0 border-bottom-0 border-3 shadow-sm">
                        <div class="card-body">
                            <div class="d-flex align-items-center mb-3">
                                <span class="bg-info bg-opacity-10 p-2 rounded me-3">
                                    <i class="fas fa-shield-alt text-info"></i>
                                </span>
                                <h5 class="card-title mb-0">Seguridad Avanzada</h5>
                            </div>
                            <p class="card-text">Implementación de medidas de seguridad robustas para proteger los datos y transacciones de los usuarios.</p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <small class="text-muted"><i class="far fa-clock me-1"></i>Actualizado hace 3 días</small>
                                <a href="#" class="btn btn-sm btn-outline-info">Detalles</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  
        <!-- Sección de Tabla de Datos con jqGrid -->
        <section class="mb-5">
            <div class="card shadow-sm">
                <div class="card-header bg-white">
                    <div class="d-flex justify-content-between align-items-center">
                        <h3 class="h5 mb-0"><i class="fas fa-table text-primary me-2"></i>Listado con free-jqGrid</h3>
                        <div>
                            <button class="btn btn-sm btn-outline-primary" id="refreshJqGrid">
                                <i class="fas fa-sync-alt me-1"></i>Actualizar
                            </button>
                            <button class="btn btn-sm btn-primary ms-2" id="addJqGridRow">
                                <i class="fas fa-plus me-1"></i>Agregar
                            </button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <p class="card-text text-muted mb-4">Esta tabla utiliza free-jqGrid 4.15.5, una versión moderna compatible con jQuery 3.x y Bootstrap 5.</p>
                    
                    <!-- Filtros rápidos -->
                    <div class="row mb-4">
                        <div class="col-md-4">
                            <div class="input-group input-group-sm">
                                <span class="input-group-text bg-light">
                                    <i class="fas fa-search text-muted"></i>
                                </span>
                                <input type="text" class="form-control" id="jqGridSearch" placeholder="Buscar...">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <select class="form-select form-select-sm" id="jqGridFilter">
                                <option value="">Todos los roles</option>
                                <option value="Administrador">Administrador</option>
                                <option value="Usuario">Usuario</option>
                                <option value="Invitado">Invitado</option>
                            </select>
                        </div>
                    </div>
                    
                    <!-- Tabla jqGrid con estilo mejorado -->
                    <div class="jqgrid-responsive">
                        <table id="jqGrid" class="table table-striped"></table>
                        <div id="jqGridPager" class="mt-2"></div>
                    </div>
                </div>
            </div>
        </section>
  
        <!-- Sección de Formulario y Fecha -->
        <section class="mb-5">
            <div class="row">
                <!-- Formulario con jQuery Validate -->
                <div class="col-lg-8">
                    <div class="card shadow-sm">
                        <div class="card-header bg-white">
                            <div class="d-flex justify-content-between align-items-center">
                                <h3 class="h5 mb-0"><i class="fas fa-envelope text-primary me-2"></i>Formulario de Contacto</h3>
                                <span class="badge bg-primary">jQuery Validate 1.19.5</span>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-text text-muted mb-4">Complete el formulario a continuación. Los campos marcados con <span class="text-danger">*</span> son obligatorios.</p>
                            
                            <!-- Formulario con validación mejorada -->
                            <form id="contactForm" class="needs-validation" novalidate>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="nombre" class="form-label">Nombre completo <span class="text-danger">*</span></label>
                                        <div class="input-group">
                                            <span class="input-group-text"><i class="fas fa-user text-muted"></i></span>
                                            <input type="text" class="form-control" id="nombre" name="nombre" required 
                                                   minlength="3" maxlength="50" placeholder="Ej. Juan Pérez">
                                        </div>
                                        <div class="invalid-feedback">Por favor ingrese su nombre completo (mínimo 3 caracteres).</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="email" class="form-label">Correo electrónico <span class="text-danger">*</span></label>
                                        <div class="input-group">
                                            <span class="input-group-text"><i class="fas fa-envelope text-muted"></i></span>
                                            <input type="email" class="form-control" id="email" name="email" required 
                                                   placeholder="ejemplo@correo.com">
                                        </div>
                                        <div class="invalid-feedback">Por favor ingrese un correo electrónico válido.</div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="telefono" class="form-label">Teléfono</label>
                                        <div class="input-group">
                                            <span class="input-group-text"><i class="fas fa-phone text-muted"></i></span>
                                            <input type="tel" class="form-control" id="telefono" name="telefono" 
                                                   pattern="[0-9]{9,10}" placeholder="Ej. 5512345678">
                                        </div>
                                        <div class="invalid-feedback">Por favor ingrese un número de teléfono válido (9-10 dígitos).</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="asunto" class="form-label">Asunto <span class="text-danger">*</span></label>
                                        <div class="input-group">
                                            <span class="input-group-text"><i class="fas fa-tag text-muted"></i></span>
                                            <input type="text" class="form-control" id="asunto" name="asunto" required 
                                                   placeholder="Asunto del mensaje">
                                        </div>
                                        <div class="invalid-feedback">Por favor ingrese el asunto.</div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="mensaje" class="form-label">Mensaje <span class="text-danger">*</span></label>
                                    <textarea class="form-control" id="mensaje" name="mensaje" rows="4" required 
                                              minlength="10" maxlength="500" placeholder="Escriba su mensaje aquí..."></textarea>
                                    <div class="form-text text-end" id="mensajeCounter">0/500 caracteres</div>
                                    <div class="invalid-feedback">Por favor ingrese un mensaje (mínimo 10 caracteres).</div>
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="terminos" name="terminos" required>
                                    <label class="form-check-label" for="terminos">
                                        Acepto los <a href="#" data-bs-toggle="modal" data-bs-target="#terminosModal">términos y condiciones</a> <span class="text-danger">*</span>
                                    </label>
                                    <div class="invalid-feedback">Debe aceptar los términos y condiciones para continuar.</div>
                                </div>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-4">
                                    <button type="reset" class="btn btn-outline-secondary me-md-2">
                                        <i class="fas fa-undo me-1"></i>Limpiar
                                    </button>
                                    <button type="submit" class="btn btn-primary px-4">
                                        <i class="fas fa-paper-plane me-1"></i>Enviar
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
                <!-- Selector de fecha y hora -->
                <div class="col-lg-4 mt-4 mt-lg-0">
                    <div class="card shadow-sm h-100">
                        <div class="card-header bg-white">
                            <h3 class="h5 mb-0"><i class="fas fa-calendar-alt text-primary me-2"></i>Selector de Fecha</h3>
                        </div>
                        <div class="card-body d-flex flex-column">
                            <p class="card-text text-muted mb-4">Utilice el selector nativo HTML5 con estilos de Bootstrap 5.</p>
                            
                            <div class="mb-4">
                                <label for="fechaSelector" class="form-label">Seleccione una fecha</label>
                                <input type="date" class="form-control" id="fechaSelector">
                            </div>
                            
                            <div class="mb-4">
                                <label for="horaSelector" class="form-label">Seleccione una hora</label>
                                <input type="time" class="form-control" id="horaSelector">
                            </div>
                            
                            <div class="alert alert-info mt-auto">
                                <i class="fas fa-info-circle me-2"></i>
                                <span>Se utiliza el selector nativo HTML5 en lugar de bibliotecas externas para mejor rendimiento y compatibilidad.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Modal de Términos y Condiciones -->
        <div class="modal fade" id="terminosModal" tabindex="-1" aria-labelledby="terminosModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="terminosModalLabel">Términos y Condiciones</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h6>1. Aceptación de los Términos</h6>
                        <p>Al utilizar este servicio, usted acepta estar sujeto a estos términos de servicio. El servicio se ofrece "tal cual" y "según disponibilidad".</p>
                        
                        <h6>2. Privacidad</h6>
                        <p>Nuestra Política de Privacidad explica cómo recopilamos y utilizamos su información. Al utilizar nuestro Servicio, usted acepta la recopilación y uso de información de acuerdo con esta política.</p>
                        
                        <h6>3. Cambios en los Términos</h6>
                        <p>Nos reservamos el derecho de modificar estos términos en cualquier momento. Le notificaremos cualquier cambio publicando los nuevos términos en esta ubicación.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="aceptarTerminos">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
</div>

  <!-- Componente Toast de Bootstrap 5 -->
  <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
    <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
      <div class="toast-header">
        <i class="fas fa-bell me-2 text-primary"></i>
        <strong class="me-auto">Notificación</strong>
        <small>Ahora</small>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
      </div>
      <div class="toast-body">
        ¡Bootstrap 5 está funcionando correctamente!
      </div>
    </div>
  </div>
  
  <!-- Botón para mostrar el Toast -->
  <div class="container mb-5">
    <div class="row">
      <div class="col-md-6">
        <button id="showToastBtn" class="btn btn-success mb-3">
          <i class="fas fa-bell me-2"></i>Mostrar notificación
        </button>
      </div>
      <div class="col-md-6">
        <!-- Ejemplo de uso de Day.js con un datepicker -->
        <div class="card">
          <div class="card-header bg-primary text-white">
            <i class="fas fa-calendar me-2"></i>Selector de Fecha Nativo
          </div>
          <div class="card-body">
            <h5 class="card-title">Selector de fecha HTML5 con Bootstrap 5</h5>
            <p class="card-text">Utilizamos el selector nativo de HTML5 mejorado con Day.js para el formato.</p>
            <div class="input-group mb-3">
              <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
              <input type="datetime-local" id="datepickerExample" class="form-control" placeholder="Selecciona una fecha">
            </div>
            <div id="currentDate" class="alert alert-info">
              Fecha actual: <span id="currentDateValue"></span>
            </div>
            <button id="updateDateBtn" class="btn btn-outline-primary">
              <i class="fas fa-sync-alt me-2"></i>Actualizar fecha
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
	
	
<!-- Scripts para la funcionalidad de la página -->
<script type="text/javascript">
  $(document).ready(function() {
    // Verificar versión de jQuery
    console.log('Versión de jQuery: ' + $.fn.jquery);
    
    // Verificar que jQuery UI está cargado correctamente
    if ($.ui) {
      console.log('Versión de jQuery UI: ' + $.ui.version);
    } else {
      console.error('jQuery UI no está cargado correctamente');
    }
    
    // ============= INICIALIZACIÓN DE BOOTSTRAP 5 =============
    if (typeof bootstrap !== 'undefined') {
      console.log('Bootstrap 5 está cargado correctamente');
      
      // Inicializar todos los tooltips
      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
      var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
      });
      
      // Inicializar todos los popovers
      var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
      var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl);
      });
      
      // Configurar el toast de notificación
      document.getElementById('showToastBtn').addEventListener('click', function() {
        var toastElList = [].slice.call(document.querySelectorAll('.toast'));
        var toastList = toastElList.map(function(toastEl) {
          return new bootstrap.Toast(toastEl);
        });
        toastList.forEach(function(toast) {
          toast.show();
        });
      });
    } else {
      console.error('Bootstrap 5 no está cargado correctamente');
    }
    
    // ============= CONFIGURACIÓN DE DAY.JS =============
    if (typeof dayjs !== 'undefined') {
      console.log('Day.js está cargado correctamente');
      
      // Configurar Day.js con plugins y locale español
      dayjs.extend(window.dayjs_plugin_relativeTime);
      dayjs.locale('es');
      
      // Actualizar las fechas en las tarjetas con Day.js
      $('.card-footer .text-muted').each(function(index) {
        var daysAgo = index;
        if (index === 0) {
          $(this).html('<i class="far fa-clock me-1"></i>Actualizado: ' + dayjs().format('DD/MM/YYYY'));
        } else {
          $(this).html('<i class="far fa-clock me-1"></i>Actualizado: ' + dayjs().subtract(daysAgo, 'day').fromNow());
        }
      });
      
      // Inicializar el selector de fecha HTML5 nativo
      function formatDateForInput(date) {
        return dayjs(date).format('YYYY-MM-DD[T]HH:mm');
      }
      
      // Establecer la fecha actual en los selectores
      const now = new Date();
      $('#datepickerExample').val(formatDateForInput(now));
      $('#currentDateValue').text(dayjs(now).format('DD/MM/YYYY HH:mm:ss'));
      $('#fechaSelector').val(dayjs(now).format('YYYY-MM-DD'));
      $('#horaSelector').val(dayjs(now).format('HH:mm'));
      
      // Escuchar cambios en el selector de fecha principal
      $('#datepickerExample').on('change', function() {
        const selectedDate = $(this).val();
        if (selectedDate) {
          $('#currentDateValue').text(dayjs(selectedDate).format('DD/MM/YYYY HH:mm:ss'));
        }
      });
      
      // Manejar el botón de actualización de fecha
      $('#updateDateBtn').on('click', function() {
        const now = new Date();
        $('#datepickerExample').val(formatDateForInput(now));
        $('#currentDateValue').text(dayjs(now).format('DD/MM/YYYY HH:mm:ss'));
      });
    } else {
      console.error('Day.js no está cargado correctamente');
    }
    
    // ============= INICIALIZACIÓN DE FREE-JQGRID =============
    try {
      // Datos de ejemplo para la tabla
      const data = [
        { id: 1, nombre: "Juan Pérez", email: "juan@ejemplo.com", rol: "Administrador", fechaAlta: "2025-01-15" },
        { id: 2, nombre: "María López", email: "maria@ejemplo.com", rol: "Usuario", fechaAlta: "2025-02-20" },
        { id: 3, nombre: "Carlos Rodríguez", email: "carlos@ejemplo.com", rol: "Editor", fechaAlta: "2025-03-10" },
        { id: 4, nombre: "Ana Martínez", email: "ana@ejemplo.com", rol: "Usuario", fechaAlta: "2025-04-05" },
        { id: 5, nombre: "Roberto Sánchez", email: "roberto@ejemplo.com", rol: "Administrador", fechaAlta: "2025-05-12" }
      ];
      
      // Configurar la tabla jqGrid con Bootstrap 5
      $("#jqGrid").jqGrid({
        datatype: "local",
        data: data,
        colModel: [
          { label: 'ID', name: 'id', width: 50, key: true },
          { label: 'Nombre', name: 'nombre', width: 150 },
          { label: 'Email', name: 'email', width: 200 },
          { label: 'Rol', name: 'rol', width: 100 },
          { 
            label: 'Fecha Alta', 
            name: 'fechaAlta', 
            width: 120,
            formatter: function(cellvalue) {
              return dayjs(cellvalue).format('DD/MM/YYYY');
            }
          }
        ],
        viewrecords: true,
        height: 250,
        rowNum: 10,
        pager: "#jqGridPager",
        caption: "Listado de Usuarios",
        // Configuración para Bootstrap 5
        styleUI: 'Bootstrap5',
        iconSet: 'fontAwesome5'
      });
      
      // Hacer la tabla responsive
      $(window).on('resize', function() {
        var width = $('.jqgrid-responsive').width();
        $('#jqGrid').jqGrid('setGridWidth', width);
      }).trigger('resize');
      
      // Funcionalidad de búsqueda en jqGrid
      $('#jqGridSearch').on('keyup', function() {
        var searchText = $(this).val();
        $("#jqGrid").jqGrid('setGridParam', {
          postData: { filters: JSON.stringify({
            groupOp: "OR",
            rules: [
              { field: "nombre", op: "cn", data: searchText },
              { field: "email", op: "cn", data: searchText }
            ]
          })}
        }).trigger("reloadGrid");
      });
      
      // Filtro por rol
      $('#jqGridFilter').on('change', function() {
        var selectedRole = $(this).val();
        if (selectedRole) {
          $("#jqGrid").jqGrid('setGridParam', {
            postData: { filters: JSON.stringify({
              groupOp: "AND",
              rules: [{ field: "rol", op: "eq", data: selectedRole }]
            })}
          }).trigger("reloadGrid");
        } else {
          $("#jqGrid").jqGrid('setGridParam', { postData: { filters: "" } }).trigger("reloadGrid");
        }
      });
      
      // Botón de actualizar jqGrid
      $('#refreshJqGrid').on('click', function() {
        $("#jqGrid").trigger("reloadGrid");
        // Mostrar toast de confirmación
        var toast = new bootstrap.Toast(document.getElementById('liveToast'));
        $('#liveToast .toast-body').text('Tabla actualizada correctamente');
        toast.show();
      });
      
      // Botón de agregar fila
      $('#addJqGridRow').on('click', function() {
        // Aquí iría la lógica para agregar una nueva fila
        alert('Funcionalidad para agregar nueva fila');
      });
      
      console.log('free-jqGrid inicializado correctamente');
    } catch (error) {
      console.error('Error al inicializar free-jqGrid:', error);
    }
    
    // ============= CONFIGURACIÓN DEL FORMULARIO =============
    try {
      // Contador de caracteres para el textarea del mensaje
      $('#mensaje').on('input', function() {
        var currentLength = $(this).val().length;
        var maxLength = $(this).attr('maxlength');
        $('#mensajeCounter').text(currentLength + '/' + maxLength + ' caracteres');
        
        // Cambiar color según la cantidad de caracteres
        if (currentLength > maxLength * 0.8) {
          $('#mensajeCounter').addClass('text-danger').removeClass('text-muted');
        } else {
          $('#mensajeCounter').removeClass('text-danger').addClass('text-muted');
        }
      });
      
      // Inicializar jQuery Validate en el formulario de contacto
      $("#contactForm").validate({
        // Configuración general
        errorElement: 'div',
        errorClass: 'invalid-feedback',
        validClass: 'is-valid',
        highlight: function(element, errorClass, validClass) {
          $(element).addClass('is-invalid').removeClass(validClass);
          // También aplicar clase a los contenedores de input-group
          $(element).closest('.input-group').addClass('is-invalid');
        },
        unhighlight: function(element, errorClass, validClass) {
          $(element).removeClass('is-invalid').addClass(validClass);
          // También quitar clase de los contenedores de input-group
          $(element).closest('.input-group').removeClass('is-invalid');
        },
        // Reglas de validación
        rules: {
          nombre: {
            required: true,
            minlength: 3,
            maxlength: 50
          },
          email: {
            required: true,
            email: true
          },
          telefono: {
            pattern: "[0-9]{9,10}"
          },
          asunto: {
            required: true
          },
          mensaje: {
            required: true,
            minlength: 10,
            maxlength: 500
          },
          terminos: {
            required: true
          }
        },
        // Mensajes personalizados
        messages: {
          nombre: {
            required: "Por favor ingrese su nombre completo",
            minlength: "El nombre debe tener al menos {0} caracteres",
            maxlength: "El nombre no debe exceder los {0} caracteres"
          },
          email: {
            required: "Por favor ingrese su correo electrónico",
            email: "Por favor ingrese un correo electrónico válido"
          },
          telefono: {
            pattern: "Por favor ingrese un número de teléfono válido (9-10 dígitos)"
          },
          asunto: {
            required: "Por favor ingrese el asunto del mensaje"
          },
          mensaje: {
            required: "Por favor ingrese su mensaje",
            minlength: "El mensaje debe tener al menos {0} caracteres",
            maxlength: "El mensaje no debe exceder los {0} caracteres"
          },
          terminos: {
            required: "Debe aceptar los términos y condiciones para continuar"
          }
        },
        // Callback al enviar el formulario
        submitHandler: function(form) {
          // Mostrar toast de confirmación
          var toast = new bootstrap.Toast(document.getElementById('liveToast'));
          $('#liveToast .toast-body').text('Formulario enviado con éxito');
          toast.show();
          
          // Limpiar el formulario
          form.reset();
          
          // Eliminar las clases de validación
          $(form).find('.is-valid').removeClass('is-valid');
          
          return false; // Evitar el envío normal del formulario
        },
        // Invalidar el formulario si hay errores
        invalidHandler: function(event, validator) {
          var errors = validator.numberOfInvalids();
          if (errors) {
            console.log('El formulario contiene ' + errors + ' errores de validación.');
          }
        }
      });
      
      console.log('jQuery Validate inicializado correctamente');
    } catch (error) {
      console.error('Error al inicializar jQuery Validate:', error);
    }
    
    // ============= BOTÓN VOLVER ARRIBA =============
    // Mostrar/ocultar botón según el scroll
    $(window).scroll(function() {
      if ($(this).scrollTop() > 300) {
        $('#btnVolverArriba').fadeIn();
      } else {
        $('#btnVolverArriba').fadeOut();
      }
    });
    
    // Funcionalidad del botón volver arriba
    $('#btnVolverArriba').click(function() {
      $('html, body').animate({scrollTop: 0}, 800);
      return false;
    });
    
    // ============= INICIALIZACIÓN DE COMPONENTES ADICIONALES =============
    // Inicializar dropdowns de filtros en la sección de características
    $('.dropdown-menu .dropdown-item').click(function(e) {
      e.preventDefault();
      var filterValue = $(this).data('filter');
      var filterText = $(this).text();
      
      // Actualizar texto del botón
      $(this).closest('.dropdown').find('.dropdown-toggle').text(filterText);
      
      // Aplicar filtro (ejemplo simple)
      if (filterValue === 'all') {
        $('.feature-card').fadeIn();
      } else {
        $('.feature-card').hide();
        $('.feature-card[data-category="' + filterValue + '"]').fadeIn();
      }
    });
    
    // Manejar el botón de aceptar términos
    $('#aceptarTerminos').on('click', function() {
      $('#terminos').prop('checked', true);
      // Validar el campo para actualizar su estado visual
      $("#contactForm").validate().element('#terminos');
    });
    
    // Animación suave para los enlaces internos
    $('a[href^="#"]').on('click', function(e) {
      if (this.hash !== '') {
        e.preventDefault();
        var hash = this.hash;
        $('html, body').animate({
          scrollTop: $(hash).offset().top - 70
        }, 800);
      }
    });
  });
</script>
</body>
</html>
