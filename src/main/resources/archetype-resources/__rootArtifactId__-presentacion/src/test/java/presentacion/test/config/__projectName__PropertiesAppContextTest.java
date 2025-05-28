/**
 * ${NombreProyecto}PropertiesApplicationContextTest.java
 * Fecha de creaci�n: 23/05/2016, 18:19:08
 *
 * Copyright (c) 2016 Procesar S A de C V. 
 * Todos los derechos reservados.
 *
 * Este software es informaci�n confidencial, propiedad del
 * Procesar S A de C V. Esta informaci�n confidencial
 * no deber� ser divulgada y solo se podr� utilizar de acuerdo
 * a los t�rminos que determine la propia empresa.
 */
package ${package}.${projectName.toLowerCase()}.presentacion.test.config;

import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.FileSystemResource;


/**
 * Clase para cargar el place holder y el properties.
 * @author Rodolfo Damian Rojas Rodriguez (rdrojas@inet.procesar.com.mx)
 * @version 1.0
 * @since 
 */
@Configuration
public class ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PropertiesAppContextTest {
	/**
	 * Nombre de variable de JVM para Propiedades
	 */
	private static final String VARIABLE_PROPIEDADES = "mx.com.procesar.configuracion.properties";
	/**
	 * Carpeta de propieades con archivo
	 */
	private static final String CARPETA_PROPIEDADES = "/propiedades/${projectName}-test.properties";
	/**
	 * Bloque est�tico para definir las propiedades del sistema
	 */
	static {
		System.setProperty(VARIABLE_PROPIEDADES, "src/test/resources");
	}
	
	/**
	 *  Metodo Bean para carga de propiedades externalizadas
	 *  @author Rodolfo Damian Rojas Rodriguez (rdrojas@inet.procesar.com.mx)
	 *  @return
	 */
	@Bean
	public PropertiesFactoryBean propiedades() {
		String rutaPropiedades = System.getProperty(VARIABLE_PROPIEDADES);
		PropertiesFactoryBean bean = new PropertiesFactoryBean();
		bean.setLocation(new FileSystemResource(rutaPropiedades.concat(CARPETA_PROPIEDADES)));
		
		return bean;
	}
	
	/**
	 *  Metodo Bean para poder utilizar los Placeholders en carga de valores de propiedades
	 *  @author Rodolfo Damian Rojas Rodriguez (rdrojas@inet.procesar.com.mx)
	 *  @return
	 */
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertyPlaceholderConfigurer() {
		String rutaPropiedades = System.getProperty(VARIABLE_PROPIEDADES);
		PropertySourcesPlaceholderConfigurer bean = new PropertySourcesPlaceholderConfigurer();
		bean.setLocation(new FileSystemResource(rutaPropiedades.concat(CARPETA_PROPIEDADES)));
		
		return bean;
	}
	
}
