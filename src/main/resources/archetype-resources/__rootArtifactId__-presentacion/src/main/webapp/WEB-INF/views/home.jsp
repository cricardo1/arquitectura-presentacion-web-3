<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
	<!-- ------------------------ estilos -------------------------------- -->
		<!-- Bootstrap 5.3.3 CSS -->
		<link href="<c:url value='/webResources/vendor/bootstrap/css/bootstrap-5.3.3.min.css'/>" rel="stylesheet" type="text/css" />
		<!-- Mantenemos los estilos personalizados -->
		<link href="<c:url value='/webResources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />
		<!-- Font Awesome 6 (reemplazo de Glyphicons) - Cargado desde CDN para evitar problemas con las fuentes -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" type="text/css" />
		<!-- jQuery UI 1.13.2 CSS -->
		<link href="<c:url value='/webResources/vendor/jquery-ui/jquery-ui-1.13.2.min.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- free-jqGrid (versión moderna de jqGrid compatible con jQuery 3.x) -->
		<link href="<c:url value='/webResources/vendor/free-jqgrid/css/ui.jqgrid.min.css'/>" rel="stylesheet" type="text/css" />
		<link href="<c:url value='/webResources/vendor/free-jqgrid/css/ui-bootstrap5/jquery-ui-1.13.2.custom.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- custom style procesar -->
		<link id="customStyle" href="<c:url value='/webResources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />
	
		<!-- custom scroller -->
		<link  href="<c:url value='/webResources/jquery/plugins/customScroller/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css" />
		
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

<div class="container py-4">
  <div class="p-5 mb-4 bg-light rounded-3">
    <div class="container-fluid py-5">
      <h1 class="display-5 fw-bold">Nuevo proyecto Bootstrap 5</h1>
      <p class="col-md-8 fs-4">Capa de Presentación Arquitectura Web 3.0</p>
      <p class="col-md-8 fs-4">Fecha: ${fecha}</p>
      <button class="btn btn-primary btn-lg" type="button">
        <i class="fas fa-rocket me-2"></i>Ejemplo con Font Awesome
      </button>
    </div>
  </div>
  
  <!-- Ejemplo de tarjetas con Bootstrap 5 -->
  <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
    <div class="col">
      <div class="card h-100">
        <div class="card-body">
          <h5 class="card-title">Característica 1</h5>
          <p class="card-text">Descripción de la primera característica del sistema.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Última actualización: hoy</small>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <div class="card-body">
          <h5 class="card-title">Característica 2</h5>
          <p class="card-text">Descripción de la segunda característica del sistema.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Última actualización: ayer</small>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card h-100">
        <div class="card-body">
          <h5 class="card-title">Característica 3</h5>
          <p class="card-text">Descripción de la tercera característica del sistema.</p>
        </div>
        <div class="card-footer">
          <small class="text-muted">Última actualización: hace 3 días</small>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Ejemplo de free-jqGrid -->
  <div class="container mb-5">
    <div class="card">
      <div class="card-header bg-primary text-white">
        <i class="fas fa-table me-2"></i>Ejemplo de free-jqGrid
      </div>
      <div class="card-body">
        <h5 class="card-title">Tabla de datos con free-jqGrid</h5>
        <p class="card-text">Esta tabla utiliza free-jqGrid, una versión moderna de jqGrid compatible con jQuery 3.x y Bootstrap 5.</p>
        
        <!-- Tabla jqGrid -->
        <table id="jqGrid"></table>
        <div id="jqGridPager"></div>
      </div>
    </div>
  </div>
  
  <!-- Ejemplo de formulario con jQuery Validate -->
  <div class="container mb-5">
    <div class="card">
      <div class="card-header bg-primary text-white">
        <i class="fas fa-check-circle me-2"></i>Ejemplo de jQuery Validate 1.19.5
      </div>
      <div class="card-body">
        <h5 class="card-title">Formulario de contacto con validación</h5>
        <p class="card-text">Este formulario utiliza jQuery Validate 1.19.5 para validar los campos antes de enviar.</p>
        
        <!-- Formulario con validación -->
        <form id="contactForm" class="needs-validation" novalidate>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="nombre" class="form-label">Nombre completo <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="nombre" name="nombre" required 
                     minlength="3" maxlength="50">
              <div class="invalid-feedback">Por favor ingrese su nombre completo.</div>
            </div>
            <div class="col-md-6">
              <label for="email" class="form-label">Correo electrónico <span class="text-danger">*</span></label>
              <input type="email" class="form-control" id="email" name="email" required>
              <div class="invalid-feedback">Por favor ingrese un correo electrónico válido.</div>
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="telefono" class="form-label">Teléfono</label>
              <input type="tel" class="form-control" id="telefono" name="telefono" 
                     pattern="[0-9]{9,10}">
              <div class="invalid-feedback">Por favor ingrese un número de teléfono válido (9-10 dígitos).</div>
            </div>
            <div class="col-md-6">
              <label for="asunto" class="form-label">Asunto <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="asunto" name="asunto" required>
              <div class="invalid-feedback">Por favor ingrese el asunto.</div>
            </div>
          </div>
          <div class="mb-3">
            <label for="mensaje" class="form-label">Mensaje <span class="text-danger">*</span></label>
            <textarea class="form-control" id="mensaje" name="mensaje" rows="4" required 
                      minlength="10" maxlength="500"></textarea>
            <div class="invalid-feedback">Por favor ingrese un mensaje (mínimo 10 caracteres).</div>
          </div>
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="terminos" name="terminos" required>
            <label class="form-check-label" for="terminos">Acepto los términos y condiciones <span class="text-danger">*</span></label>
            <div class="invalid-feedback">Debe aceptar los términos y condiciones para continuar.</div>
          </div>
          <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button type="reset" class="btn btn-secondary me-md-2">
              <i class="fas fa-undo me-1"></i>Limpiar
            </button>
            <button type="submit" class="btn btn-primary">
              <i class="fas fa-paper-plane me-1"></i>Enviar
            </button>
          </div>
        </form>
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
	
	
<!-- Script de prueba para verificar las bibliotecas actualizadas -->
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
    
    // Verificar que Bootstrap 5 está cargado correctamente
    if (typeof bootstrap !== 'undefined') {
      console.log('Bootstrap 5 está cargado correctamente');
      
      // Inicializar tooltips de Bootstrap 5 (ejemplo de funcionalidad)
      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
      var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl);
      });
      
      // Crear un toast de ejemplo (notificación)
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
    
    // Verificar que Day.js está cargado correctamente y configurarlo
    if (typeof dayjs !== 'undefined') {
      console.log('Day.js está cargado correctamente');
      
      // Configurar Day.js con el plugin de tiempo relativo y locale español
      dayjs.extend(window.dayjs_plugin_relativeTime);
      dayjs.locale('es');
      
      // Ejemplo de uso de Day.js (equivalente a Moment.js)
      console.log('Fecha actual con Day.js: ' + dayjs().format('DD/MM/YYYY HH:mm:ss'));
      console.log('Fecha relativa (hace 7 días): ' + dayjs().subtract(7, 'day').fromNow());
      
      // Actualizar las fechas en las tarjetas con Day.js
      $('.card-footer .text-muted').each(function(index) {
        var daysAgo = index;
        if (index === 0) {
          $(this).text('Última actualización: ' + dayjs().format('DD/MM/YYYY'));
        } else {
          $(this).text('Última actualización: ' + dayjs().subtract(daysAgo, 'day').fromNow());
        }
      });
      
      // Inicializar el datepicker y mostrar la fecha actual
      $('#currentDateValue').text(dayjs().format('DD/MM/YYYY HH:mm:ss'));
      
      // Manejar el botón de actualización de fecha
      $('#updateDateBtn').on('click', function() {
        $('#currentDateValue').text(dayjs().format('DD/MM/YYYY HH:mm:ss'));
      });
      
      // Inicializar el selector de fecha HTML5
      
      // Formatear la fecha actual para HTML datetime-local (YYYY-MM-DDThh:mm)
      function formatDateForInput(date) {
        return dayjs(date).format('YYYY-MM-DD[T]HH:mm');
      }
      
      // Establecer la fecha actual en el selector
      const now = new Date();
      $('#datepickerExample').val(formatDateForInput(now));
      $('#currentDateValue').text(dayjs(now).format('DD/MM/YYYY HH:mm:ss'));
      
      // Escuchar cambios en el selector de fecha
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
      
      console.log('Selector de fecha HTML5 inicializado correctamente');
    } else {
      console.error('Day.js no está cargado correctamente');
    }
    
    // Inicializar free-jqGrid
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
      
      // Responsive design para la tabla
      $(window).on('resize', function() {
        var width = $('.card-body').width();
        $('#jqGrid').jqGrid('setGridWidth', width);
      }).trigger('resize');
      
      console.log('free-jqGrid inicializado correctamente');
    } catch (error) {
      console.error('Error al inicializar free-jqGrid:', error);
    }
    
    // Verificar si hay advertencias de jQuery Migrate
    console.log('jQuery Migrate está activo. Revisa la consola para ver posibles advertencias de compatibilidad.');
    
    // Inicializar jQuery Validate en el formulario de contacto
    try {
      $("#contactForm").validate({
        // Configuración general
        errorElement: 'div',
        errorClass: 'invalid-feedback',
        validClass: 'is-valid',
        highlight: function(element, errorClass, validClass) {
          $(element).addClass('is-invalid').removeClass(validClass);
        },
        unhighlight: function(element, errorClass, validClass) {
          $(element).removeClass('is-invalid').addClass(validClass);
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
            pattern: /^[0-9]{9,10}$/
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
            required: "Por favor ingrese el asunto"
          },
          mensaje: {
            required: "Por favor ingrese un mensaje",
            minlength: "El mensaje debe tener al menos {0} caracteres",
            maxlength: "El mensaje no debe exceder los {0} caracteres"
          },
          terminos: {
            required: "Debe aceptar los términos y condiciones para continuar"
          }
        },
        // Manejo del envío del formulario
        submitHandler: function(form) {
          // Aquí iría el código para enviar el formulario mediante AJAX
          // Por ahora, solo mostraremos un mensaje de éxito
          
          // Crear un toast de Bootstrap 5 para mostrar el mensaje de éxito
          var toastEl = document.getElementById('liveToast');
          var toastBody = toastEl.querySelector('.toast-body');
          var toast = new bootstrap.Toast(toastEl);
          
          // Actualizar el contenido del toast
          toastBody.innerHTML = '<i class="fas fa-check-circle me-2 text-success"></i>Formulario enviado correctamente. Gracias por contactarnos.';
          
          // Mostrar el toast
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
  });
</script>
</body>
</html>
