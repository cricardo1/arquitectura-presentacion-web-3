/**
 * ${NombreProyecto}ApplicationInitializerTest.java
 * Fecha de creacion: 23/05/2016, 18:19:08
 *
 * Copyright (c) 2016 Procesar S A de C V. 
 * Todos los derechos reservados.
 *
 * Este software es informacion confidencial, propiedad del
 * Procesar S A de C V. Esta informacion confidencial
 * no debera ser divulgada y solo se podra utilizar de acuerdo
 * a los terminos que determine la propia empresa.
 */
package ${package}.${projectName.toLowerCase()}.presentacion.test.aplicacion;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Import;
import ${package}.${projectName.toLowerCase()}.presentacion.test.config.${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PropertiesAppContextTest;


/**
 * Initializer de aplicativo web
 * @author Gerencia Servicios Normativos (GERENCIADESARROOLLONORMATIVO@inet.procesar.com.mx)
 * @version 1.0
 * @since
 */
@SpringBootApplication(scanBasePackages = {
	"${package}.presentacion.controladores" })
@Import({ ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PropertiesAppContextTest.class })
public class ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializerTest extends SpringBootServletInitializer {
	
	/*
	 * La documentacion de este metodo se encuentra en la clase o interface que
	 * lo declara  (non-Javadoc)
	 * @see org.springframework.boot.web.servlet.support.SpringBootServletInitializer#configure(org.springframework.boot.builder.SpringApplicationBuilder)
	 */
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializerTest.class);
	}

	/**
	 *  Metodo Main oara Spring Boot
	 *  @author Gerencia Servicios Normativos (GERENCIADESARROOLLONORMATIVO@inet.procesar.com.mx)
	 *  @param args
	 */
	public static void main(String[] args) {
		SpringApplication.run(${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializerTest.class, args);
	}
	
}
