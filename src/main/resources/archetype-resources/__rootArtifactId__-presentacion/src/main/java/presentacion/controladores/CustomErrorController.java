/**
 * ErrorController.java
 * Fecha de creacion: ${date}
 *
 * Copyright (c) ${year} Procesar S A de C V. 
 * Todos los derechos reservados.
 *
 * Este software es informacion confidencial, propiedad del
 * Procesar S A de C V. Esta informacion confidencial
 * no debera ser divulgada y solo se podra utilizar de acuerdo
 * a los terminos que determine la propia empresa.
 */
package ${package}.${projectName.toLowerCase()}.presentacion.controladores;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorAttributes;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Controlador para el manejo de errores
 * @author Gerencia Servicios Normativos
 * @version 1.0
 */
@Controller
public class CustomErrorController implements ErrorController {
    
    /**
     * Logger
     */
    private static final Logger logger = LoggerFactory.getLogger(CustomErrorController.class);
    
    /**
     * Maneja las peticiones de error
     * 
     * @param request Petición HTTP
     * @param model Modelo
     * @return Vista de error
     */
    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");
        
        logger.error("Error con código: " + statusCode);
        if (exception != null) {
            logger.error("Excepción: ", exception);
            model.addAttribute("errorMessage", exception.getMessage());
        }
        
        model.addAttribute("statusCode", statusCode);
        model.addAttribute("path", request.getAttribute("javax.servlet.error.request_uri"));
        
        return "error";
    }

	public String getErrorPath() {
        return "/error";
	}
}
