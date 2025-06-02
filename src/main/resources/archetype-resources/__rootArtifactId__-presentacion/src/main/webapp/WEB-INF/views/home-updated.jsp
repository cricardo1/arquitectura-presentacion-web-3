<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Meta información básica -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Plataseis - Arquitectura Web 3.0 - Aplicación de ejemplo">
    <meta name="author" content="Procesar S A de C V">
    <title>Plataseis - Arquitectura Web 3.0</title>
    
    <!-- Favicon -->
    <link rel="icon" href="<c:url value='/webResources/images/favicon.ico'/>" type="image/x-icon">
    
    <!-- ============= ESTILOS CSS ============= -->
    <!-- Bootstrap 5.3.3 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- jQuery UI 1.13.2 CSS -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.min.css" integrity="sha384-4D3G3GikQs6hLlLZGdz5wLFzuqE9v4yVGAcOH86y23JqBDPzj9viv0EqyfIa6YUL" crossorigin="anonymous">
    
    <!-- free-jqGrid 4.15.5 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/css/ui.jqgrid.min.css" integrity="sha512-KqXVQBKw+VNzCpL9TIaWRlh2YHXQJUPuNRoXWkqDYZZDH9cHnMYQlgMzm+6hVXqXC5j7HFvlqmOHSCwwUUKQgQ==" crossorigin="anonymous" referrerpolicy="no-referrer">
    
    <!-- Font Awesome 6.5.1 (reemplazo para Glyphicons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer">
    
    <!-- jQuery Validate CSS personalizado -->
    <style>
    .error {
        color: #dc3545;
        font-size: 0.875em;
        margin-top: 0.25rem;
    }
    </style>
    
    <!-- Custom Scrollbar CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css" integrity="sha512-6qkvBbDyl5TDJtNJiC8foyEVuB6gxMBkrKy67XpqnIDxXn00uwCFQRfMRY7Fz2BwBDpgc+9D8U/3wcUEbFkzg==" crossorigin="anonymous" referrerpolicy="no-referrer">
    
    <!-- Custom Procesar CSS -->
    <link rel="stylesheet" href="<c:url value='/webResources/css/customProcesar.css'/>">
    
    <!-- Variables CSS personalizadas -->
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
    </style>
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
        
        <!-- Sección de Tabla de Datos -->
        <section class="mb-5">
            <div class="card shadow-sm">
                <div class="card-header bg-white">
                    <div class="d-flex justify-content-between align-items-center">
                        <h3 class="h5 mb-0"><i class="fas fa-table text-primary me-2"></i>Listado de Usuarios</h3>
                        <div>
                            <button class="btn btn-sm btn-outline-primary me-2">
                                <i class="fas fa-file-export me-1"></i>Exportar
                            </button>
                            <button class="btn btn-sm btn-primary">
                                <i class="fas fa-plus me-1"></i>Nuevo
                            </button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col" class="text-center">#</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Usuario</th>
                                    <th scope="col" class="text-center">Estado</th>
                                    <th scope="col" class="text-center">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row" class="text-center">1</th>
                                    <td>Juan</td>
                                    <td>Pérez</td>
                                    <td>jperez</td>
                                    <td class="text-center"><span class="badge bg-success">Activo</span></td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-outline-secondary" data-bs-toggle="tooltip" title="Ver detalles">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-primary" data-bs-toggle="tooltip" title="Editar">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="text-center">2</th>
                                    <td>María</td>
                                    <td>López</td>
                                    <td>mlopez</td>
                                    <td class="text-center"><span class="badge bg-success">Activo</span></td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-outline-secondary" data-bs-toggle="tooltip" title="Ver detalles">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-primary" data-bs-toggle="tooltip" title="Editar">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row" class="text-center">3</th>
                                    <td>Carlos</td>
                                    <td>Gómez</td>
                                    <td>cgomez</td>
                                    <td class="text-center"><span class="badge bg-warning text-dark">Pendiente</span></td>
                                    <td class="text-center">
                                        <button class="btn btn-sm btn-outline-secondary" data-bs-toggle="tooltip" title="Ver detalles">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                        <button class="btn btn-sm btn-outline-primary" data-bs-toggle="tooltip" title="Editar">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Anterior</a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Siguiente</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>
        
        <!-- Sección de Formulario -->
        <section class="mb-5">
            <div class="row">
                <div class="col-lg-6">
                    <div class="card shadow-sm">
                        <div class="card-header bg-white">
                            <h3 class="h5 mb-0"><i class="fas fa-user-plus text-primary me-2"></i>Formulario de Registro</h3>
                        </div>
                        <div class="card-body">
                            <form id="registroForm">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="nombre" class="form-label">Nombre <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="apellido" class="form-label">Apellido <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="apellido" name="apellido" required>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo electrónico <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" required>
                                    <div id="emailHelp" class="form-text">Nunca compartiremos tu correo con nadie más.</div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="password" class="form-label">Contraseña <span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" id="password" name="password" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="confirmPassword" class="form-label">Confirmar contraseña <span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="fechaNacimiento" class="form-label">Fecha de nacimiento</label>
                                    <input type="date" class="form-control" id="fechaNacimiento" name="fechaNacimiento">
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="terminos" name="terminos" required>
                                    <label class="form-check-label" for="terminos">Acepto los <a href="#">términos y condiciones</a> <span class="text-danger">*</span></label>
                                </div>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                    <button type="reset" class="btn btn-outline-secondary me-md-2">
                                        <i class="fas fa-undo me-1"></i>Limpiar
                                    </button>
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-save me-1"></i>Registrar
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6 mt-4 mt-lg-0">
                    <div class="card shadow-sm">
                        <div class="card-header bg-white">
                            <h3 class="h5 mb-0"><i class="fas fa-calendar-alt text-primary me-2"></i>Selector de Fecha</h3>
                        </div>
                        <div class="card-body">
                            <div class="mb-4">
                                <label for="datepicker" class="form-label">Seleccione una fecha:</label>
                                <input type="text" class="form-control" id="datepicker" placeholder="DD/MM/AAAA">
                            </div>
                            
                            <div class="alert alert-info">
                                <i class="fas fa-info-circle me-2"></i>
                                <span>Este es un ejemplo de datepicker utilizando jQuery UI, integrado con Bootstrap 5.</span>
                            </div>
                            
                            <div class="card bg-light">
                                <div class="card-body">
                                    <h5 class="card-title">Fecha seleccionada:</h5>
                                    <p class="card-text" id="fechaSeleccionada">Ninguna fecha seleccionada</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Sección de jqGrid -->
        <section class="mb-5">
            <div class="card shadow-sm">
                <div class="card-header bg-white">
                    <h3 class="h5 mb-0"><i class="fas fa-table text-primary me-2"></i>Ejemplo de free-jqGrid</h3>
                </div>
                <div class="card-body">
                    <p class="card-text mb-4">Esta tabla utiliza free-jqGrid, una versión moderna de jqGrid compatible con jQuery 3.x y Bootstrap 5.</p>
                    
                    <!-- Tabla jqGrid -->
                    <table id="jqGrid"></table>
                    <div id="jqGridPager"></div>
                </div>
            </div>
        </section>
    </main>
    
    <!-- ============= FOOTER ============= -->
    <footer class="bg-dark text-white py-4 mt-5">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4 col-md-6">
                    <div class="d-flex align-items-center mb-3">
                        <i class="fas fa-layer-group fs-2 me-3"></i>
                        <div>
                            <h5 class="mb-0">Plataseis</h5>
                            <p class="small mb-0">Arquitectura Web 3.0</p>
                        </div>
                    </div>
                    <p class="mb-1"><i class="fas fa-map-marker-alt me-2"></i>Ciudad de México, México</p>
                    <p class="mb-1"><i class="fas fa-envelope me-2"></i>contacto@procesar.com.mx</p>
                    <p class="mb-0"><i class="fas fa-phone me-2"></i>(55) 1234-5678</p>
                </div>
                
                <div class="col-lg-4 col-md-6">
                    <h5 class="mb-3">Enlaces rápidos</h5>
                    <ul class="list-unstyled">
                        <li class="mb-2"><a href="#" class="text-white text-decoration-none"><i class="fas fa-angle-right me-2"></i>Inicio</a></li>
                        <li class="mb-2"><a href="#" class="text-white text-decoration-none"><i class="fas fa-angle-right me-2"></i>Servicios</a></li>
                        <li class="mb-2"><a href="#" class="text-white text-decoration-none"><i class="fas fa-angle-right me-2"></i>Acerca de nosotros</a></li>
                        <li class="mb-0"><a href="#" class="text-white text-decoration-none"><i class="fas fa-angle-right me-2"></i>Contacto</a></li>
                    </ul>
                </div>
                
                <div class="col-lg-4">
                    <h5 class="mb-3">Boletín informativo</h5>
                    <p>Suscríbete para recibir las últimas noticias y actualizaciones.</p>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="Correo electrónico" aria-label="Correo electrónico">
                        <button class="btn btn-primary" type="button"><i class="fas fa-paper-plane"></i></button>
                    </div>
                    <div class="d-flex gap-3 mt-3">
                        <a href="#" class="text-white"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="text-white"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
            
            <hr class="my-4 bg-light">
            
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-md-0">&copy; 2025 Procesar S A de C V. Todos los derechos reservados.</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <a href="#" class="text-white text-decoration-none me-3">Términos y condiciones</a>
                    <a href="#" class="text-white text-decoration-none">Política de privacidad</a>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Botón para volver arriba -->
    <button class="btn btn-primary btn-sm rounded-circle position-fixed bottom-0 end-0 m-4" id="btnVolverArriba" style="display: none;">
        <i class="fas fa-arrow-up"></i>
    </button>
    
    <!-- ============= SCRIPTS ============= -->
    <!-- jQuery 3.7.1 -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    
    <!-- jQuery Migrate 3.4.1 para compatibilidad -->
    <script src="https://code.jquery.com/jquery-migrate-3.4.1.min.js" integrity="sha256-FkoY7IgCQ7+ESu5ivFELGHo4xW5v+qGjqsRQDSxL3xQ=" crossorigin="anonymous"></script>
    
    <!-- jQuery UI 1.13.2 -->
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js" integrity="sha256-lSjKY0/srUM9BE3dPm+c4fBo1dky2v27Gdjm2uoZaL0=" crossorigin="anonymous"></script>
    
    <!-- jQuery Validate 1.19.5 -->
    <script src="<c:url value='/webResources/vendor/jquery-validate/jquery.validate.min.js'/>"></script>
    <script src="<c:url value='/webResources/vendor/jquery-validate/additional-methods.min.js'/>"></script>
    <script src="<c:url value='/webResources/vendor/jquery-validate/messages_es.min.js'/>"></script>
    
    <!-- Bootstrap 5.3.3 Bundle (incluye Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    <!-- free-jqGrid 4.15.5 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/i18n/grid.locale-es.js" integrity="sha512-/3xyHrC8ioQv0e7w1QvKQEAJrz9hzBl5qUJrmUcQWZJ7GnVQGlgHbM+zhbLLvRGO0IGnMRQF+ZRMn6P5Wd5RA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/jquery.jqgrid.min.js" integrity="sha512-rnOHMCNTOXSuaTf6CbxKXJKj1NnHsFQbHZNbGXI9lWjXDlTzit0YZ9En5s0JkQXDp/tXnU0wpJYzVw7HNV0sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <!-- Day.js 1.11.10 (reemplazo para moment.js) -->
    <script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.10/dayjs.min.js" integrity="sha256-hTL5GW7TGPYRxUNkJzLi7jWj0ZbCDxr6+hXZAF7Ags=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.10/locale/es.js" integrity="sha256-EfkMozBWGVKbBwajOXQhJQ8wSWbYXhIdRPKKIuJklm8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/dayjs@1.11.10/plugin/relativeTime.js" integrity="sha256-yS4Q6Qi/vA0dV1NxBi9cBiC0L2gXGpqxMRjsAjAMrhk=" crossorigin="anonymous"></script>
    
    <!-- Custom Scrollbar -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js" integrity="sha512-2hIlk2fL+NNHkULe9gGdma/T5vSYk80U5tvAFSy3dGEl8XD4h2i6frQvHv5B+bm/Itmi8nJ6krAcj5FWFcBGQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <!-- Utilidades -->
    <script src="<c:url value='/webResources/util/js/procesarUtil.js'/>"></script>
    
    <!-- Script principal -->
    <script>
        $(document).ready(function() {
            // ========== CONFIGURACIÓN GENERAL ==========
            // Configuración de Day.js
            dayjs.locale('es');
            dayjs.extend(window.dayjs_plugin_relativeTime);
            
            // Inicialización de tooltips de Bootstrap 5
            const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
            const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));
            
            // Actualizar fecha con formato localizado
            $("#fechaActual").text("Fecha: " + dayjs('${fecha}').format('DD [de] MMMM [de] YYYY'));
            
            // ========== DATEPICKER ==========
            // Inicializar datepicker con jQuery UI
            $("#datepicker").datepicker({
                dateFormat: "dd/mm/yy",
                changeMonth: true,
                changeYear: true,
                yearRange: "c-100:c+10",
                firstDay: 1,
                showOtherMonths: true,
                selectOtherMonths: true,
                onSelect: function(dateText) {
                    $("#fechaSeleccionada").text(dateText);
                }
            });
            
            // ========== FORMULARIO ==========
            // Inicializar validación del formulario con jQuery Validate
            $("#registroForm").validate({
                errorElement: 'div',
                errorClass: 'invalid-feedback',
                validClass: 'is-valid',
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass('is-invalid').removeClass(validClass);
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass('is-invalid').addClass(validClass);
                },
                rules: {
                    nombre: {
                        required: true,
                        minlength: 2
                    },
                    apellido: {
                        required: true,
                        minlength: 2
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        minlength: 8
                    },
                    confirmPassword: {
                        required: true,
                        equalTo: "#password"
                    },
                    terminos: {
                        required: true
                    }
                },
                messages: {
                    confirmPassword: {
                        equalTo: "Las contraseñas no coinciden"
                    }
                },
                submitHandler: function(form) {
                    alert("Formulario enviado correctamente");
                    form.reset();
                    $(form).find('.is-valid').removeClass('is-valid');
                    return false;
                }
            });
            
            // ========== JQGRID ==========
            // Datos de ejemplo para jqGrid
            const jqGridData = [
                { id: 1, nombre: "Juan", apellido: "Pérez", email: "jperez@ejemplo.com", fecha: "2025-01-15", estado: "Activo" },
                { id: 2, nombre: "María", apellido: "López", email: "mlopez@ejemplo.com", fecha: "2025-02-20", estado: "Activo" },
                { id: 3, nombre: "Carlos", apellido: "Gómez", email: "cgomez@ejemplo.com", fecha: "2025-03-10", estado: "Pendiente" },
                { id: 4, nombre: "Ana", apellido: "Martínez", email: "amartinez@ejemplo.com", fecha: "2025-04-05", estado: "Inactivo" },
                { id: 5, nombre: "Pedro", apellido: "Sánchez", email: "psanchez@ejemplo.com", fecha: "2025-05-12", estado: "Activo" }
            ];
            
            // Configuración e inicialización de jqGrid
            $("#jqGrid").jqGrid({
                datatype: "local",
                data: jqGridData,
                colModel: [
                    { name: 'id', label: 'ID', width: 50, key: true, sorttype: 'int' },
                    { name: 'nombre', label: 'Nombre', width: 100 },
                    { name: 'apellido', label: 'Apellido', width: 100 },
                    { name: 'email', label: 'Email', width: 200 },
                    { name: 'fecha', label: 'Fecha', width: 100, formatter: 'date', formatoptions: { srcformat: 'Y-m-d', newformat: 'd/m/Y' } },
                    { name: 'estado', label: 'Estado', width: 80, formatter: function(cellvalue) {
                        let badgeClass = 'bg-secondary';
                        if (cellvalue === 'Activo') badgeClass = 'bg-success';
                        if (cellvalue === 'Pendiente') badgeClass = 'bg-warning text-dark';
                        if (cellvalue === 'Inactivo') badgeClass = 'bg-danger';
                        return `<span class="badge ${badgeClass}">${cellvalue}</span>`;
                    }}
                ],
                viewrecords: true,
                width: '100%',
                height: 'auto',
                rowNum: 10,
                pager: "#jqGridPager",
                caption: "Listado de Usuarios",
                sortname: 'id',
                sortorder: "asc",
                loadonce: true,
                responsive: true,
                styleUI: 'Bootstrap5'
            });
            
            // ========== BOTÓN VOLVER ARRIBA ==========
            // Mostrar/ocultar botón para volver arriba
            $(window).scroll(function() {
                if ($(this).scrollTop() > 300) {
                    $('#btnVolverArriba').fadeIn();
                } else {
                    $('#btnVolverArriba').fadeOut();
                }
            });
            
            // Funcionalidad del botón para volver arriba
            $('#btnVolverArriba').click(function() {
                $('html, body').animate({ scrollTop: 0 }, 'slow');
                return false;
            });
        });
    </script>
</body>
</html>
