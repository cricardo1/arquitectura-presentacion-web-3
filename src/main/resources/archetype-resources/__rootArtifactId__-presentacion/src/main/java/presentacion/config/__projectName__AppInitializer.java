/**
 * ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializer.java
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
package ${package}.${projectName.toLowerCase()}.presentacion.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.Import;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import ${package}.${projectName.toLowerCase()}.persistencia.config.${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PersistenceAppContext;
import ${package}.${projectName.toLowerCase()}.servicios.config.${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}ServiceAppContext;

/**
 * Initializer de aplicativo web
 * @author Gerencia Servicios Normativos (GERENCIADESARROOLLONORMATIVO@inet.procesar.com.mx)
 * @version 3.0
 * @since Spring Boot 2.7.x
 */
@Import({ ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PropertiesAppContext.class, ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}PersistenceAppContext.class, ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}ServiceAppContext.class })
@ComponentScan(includeFilters = { 
    @Filter(type = FilterType.ANNOTATION, value = RestController.class),
    @Filter(type = FilterType.ANNOTATION, value = Component.class) 
}, basePackages = { "${package}.${projectName.toLowerCase()}.presentacion" })
@SpringBootApplication
@Configuration
@EnableAsync
@EnableWebMvc
public class ${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializer extends SpringBootServletInitializer implements WebMvcConfigurer {

    /**
     * Metodo main para iniciar la aplicacion
     * 
     * @param args Argumentos de la aplicacion
     */
    public static void main(String[] args) {
        SpringApplication.run(${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializer.class, args);
    }

    /**
     * Configuracion de la aplicacion
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(${projectName.substring(0,1).toUpperCase()}${projectName.substring(1)}AppInitializer.class);
    }

    /**
     * Configuracion de recursos estoticos
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
        registry.addResourceHandler("/webResources/**")
                .addResourceLocations("/webResources/");
        registry.addResourceHandler("/webjars/**")
                .addResourceLocations("classpath:/META-INF/resources/webjars/");
    }

    /**
     * Configuracion del resolver de vistas
     * 
     * @return ViewResolver
     */
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        resolver.setViewClass(JstlView.class);
        resolver.setExposeContextBeansAsAttributes(true);
        return resolver;
    }

    /**
     * Configuracion del resolver de multipart (Spring Boot 2.7.x)
     * 
     * @return MultipartResolver
     */
    @Bean
    public MultipartResolver multipartResolver() {
        StandardServletMultipartResolver resolver = new StandardServletMultipartResolver();
        return resolver;
    }
}
