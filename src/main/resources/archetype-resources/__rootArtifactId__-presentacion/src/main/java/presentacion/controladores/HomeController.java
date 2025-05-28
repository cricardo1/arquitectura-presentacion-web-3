/**
 * HomeController.java
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

import java.util.Locale;
import org.slf4j.LoggerFactory;

import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Controlador para el manejo de peticiones de la pagina inicial
 * @author Gerencia Servicios Normativos (GERENCIADESARROOLLONORMATIVO@inet.procesar.com.mx)
 * @version 1.0
 * @since
 */
@Controller
public class HomeController {
	/**
	 * Logger
	 */
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Regresa el control a la pagina de inicio
	 * @author Gerencia Servicios Normativos (GERENCIADESARROOLLONORMATIVO@inet.procesar.com.mx)
	 * @param locale
	 * @param model
	 * @return
	 */
	@GetMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("Ingreso a /home");
		return "home";
	}

}
