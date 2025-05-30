# 🏗️ Arquetipo Arquitectura Presentación Web - 3 Capas

Arquitectura de referencia para el desarrollo de aplicaciones web con Spring Boot 2.1.8.RELEASE y Java 11, siguiendo principios de arquitectura limpia y separación de responsabilidades en tres capas: presentación, servicios y persistencia.

## 📋 Tabla de Contenidos

1. [Características Principales](#-características-principales)
2. [Requisitos del Sistema](#-requisitos-del-sistema)
3. [Estructura del Proyecto](#-estructura-del-proyecto)
4. [Primeros Pasos](#-primeros-pasos)
5. [Generación de Nuevos Proyectos](#-generación-de-nuevos-proyectos)
6. [Configuración](#-configuración)
7. [Despliegue](#-despliegue)
8. [Pruebas](#-pruebas)
9. [Seguridad](#-seguridad)
10. [Contribución](#-contribución)
11. [Licencia](#-licencia)

## ✨ Características Principales

### 🏛️ Arquitectura en 3 Capas
- **Presentación**: Capa web con Thymeleaf, controladores MVC y recursos estáticos
- **Servicios**: Lógica de negocio independiente y desacoplada
- **Persistencia**: Acceso a datos con Spring Data JPA

### 🛠️ Características Técnicas
- **Lenguaje**: Java 11 (LTS)
- **Framework**: Spring Boot 2.1.8.RELEASE
- **Capa Web**: Spring MVC con Thymeleaf 3
- **Persistencia**: Spring Data JPA + Hibernate
- **Base de Datos**: Soporte para H2, MySQL, PostgreSQL
- **Seguridad**: Spring Security
- **Validación**: Bean Validation
- **Logging**: SLF4J con Logback
- **Pruebas**: JUnit 5, Mockito
- **Contenedorización**: Soporte para Docker

### 📦 Módulos Principales
- **presentacion**: Controladores, vistas Thymeleaf y recursos estáticos
- **servicios**: Lógica de negocio y casos de uso
- **persistencia**: Entidades, repositorios y configuración de acceso a datos
- **comun**: Utilidades, constantes y configuraciones compartidas
- **seguridad**: Configuración de autenticación y autorización

## 💻 Requisitos del Sistema

- **Java Development Kit (JDK)**: 11 (LTS)
- **Maven**: 3.6+ o Gradle 6.0+
- **Docker** (opcional, para despliegue en contenedores)
- **Base de Datos**: H2 (incluida), MySQL 5.7+, PostgreSQL 10+
- **IDE**: IntelliJ IDEA, Eclipse, VS Code con extensiones de Java/Spring

## 🏗️ Estructura del Proyecto

```
${projectName}/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/web/
│   │   │       ├── presentacion/           # Capa de presentación
│   │   │       │   ├── controller/         # Controladores MVC
│   │   │       │   ├── dto/                # Objetos de transferencia de datos
│   │   │       │   └── validator/          # Validadores personalizados
│   │   │       │
│   │   │       ├── servicios/             # Capa de servicios
│   │   │       │   ├── impl/               # Implementaciones de servicios
│   │   │       │   ├── mapper/              # Mapeadores de objetos
│   │   │       │   └── exception/           # Excepciones personalizadas
│   │   │       │
│   │   │       ├── persistencia/          # Capa de persistencia
│   │   │       │   ├── entity/              # Entidades JPA
│   │   │       │   ├── repository/          # Repositorios Spring Data
│   │   │       │   └── specification/       # Especificaciones para consultas
│   │   │       │
│   │   │       ├── comun/                 # Componentes comunes
│   │   │       │   ├── util/                # Utilidades
│   │   │       │   ├── constants/           # Constantes
│   │   │       │   └── config/              # Configuraciones
│   │   │       │
│   │   │       └── seguridad/             # Configuración de seguridad
│   │   │           ├── config/              # Configuración de Spring Security
│   │   │           └── service/             # Servicios de seguridad
│   │   │
│   │   └── resources/
│   │       ├── static/                 # Recursos estáticos (CSS, JS, imágenes)
│   │       ├── templates/               # Plantillas Thymeleaf
│   │       ├── i18n/                    # Archivos de internacionalización
│   │       └── application.properties   # Configuración de la aplicación
│   │
│   └── test/                      # Pruebas unitarias e integración
│       └── java/
│           └── com/example/web/
│               ├── presentacion/
│               ├── servicios/
│               └── persistencia/
│
├── pom.xml                      # Configuración de Maven
├── .gitignore                   # Archivos ignorados por Git
├── mvnw                         # Maven Wrapper (Unix)
├── mvnw.cmd                     # Maven Wrapper (Windows)
└── README.md                   # Documentación del proyecto
```

## 🚀 Primeros Pasos

### Requisitos Previos

1. Asegúrate de tener instalado:
   - JDK 11
   - Maven 3.6+ o Gradle 6.0+
   - Opcional: Docker y Docker Compose

2. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/arquitectura-presentacion-web-3.git
   cd arquitectura-presentacion-web-3
   ```

### Instalación y Ejecución

1. Compila el proyecto con Maven:
   ```bash
   ./mvnw clean install
   # o en Windows
   mvnw.cmd clean install
   ```

2. Ejecuta la aplicación:
   ```bash
   ./mvnw spring-boot:run
   # o en Windows
   mvnw.cmd spring-boot:run
   ```
   
3. Abre tu navegador en http://localhost:8080 para ver la aplicación en funcionamiento.

## 🏭 Generación de Nuevos Proyectos

### Usando Spring Initializr

1. Visita [Spring Initializr](https://start.spring.io/)
2. Configura tu proyecto:
   - Project: Maven
   - Language: Java
   - Spring Boot: 2.1.8.RELEASE
   - Group: com.example
   - Artifact: web-app
   - Name: web-app
   - Description: Aplicación web con arquitectura de 3 capas
   - Package name: com.example.webapp
   - Packaging: Jar
   - Java: 11

3. Añade las dependencias:
   - Spring Web
   - Thymeleaf
   - Spring Data JPA
   - H2 Database
   - Spring Security
   - Validation
   - Lombok (opcional)

4. Haz clic en "Generate" para descargar el proyecto base

### Usando Maven Archetype

```bash
mvn archetype:generate \
  -DarchetypeGroupId=com.example \
  -DarchetypeArtifactId=arquitectura-presentacion-web-3 \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=com.tudominio \
  -DartifactId=mi-proyecto-web \
  -Dversion=1.0.0-SNAPSHOT \
  -DinteractiveMode=false
```

### Parámetros del Arquetipo

| Parámetro         | Descripción                                   | Valor por Defecto        |
|-------------------|-----------------------------------------------|---------------------------|
| groupId          | Identificador del grupo Maven                 | Requerido                |
| artifactId       | Identificador del artefacto Maven             | Requerido                |
| version          | Versión del proyecto                          | 1.0.0-SNAPSHOT          |
| package          | Paquete base Java                            | Basado en groupId        |
| projectName      | Nombre legible del proyecto                   | Basado en artifactId     |


## ⚙️ Configuración

### Configuración de la Aplicación

El archivo `application.properties` (o `application.yml`) contiene la configuración principal de la aplicación:

```properties
# Configuración del servidor
server.port=8080
server.servlet.context-path=/app

# Configuración de Thymeleaf
spring.thymeleaf.cache=false
spring.thymeleaf.mode=HTML

# Configuración de la base de datos
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
spring.h2.console.enabled=true

# Configuración de JPA
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true

# Configuración de logging
logging.level.root=INFO
logging.level.com.example=DEBUG
logging.pattern.console=%d{yyyy-MM-dd HH:mm:ss} [%thread] %-5level %logger{36} - %msg%n
```

### Perfiles de Spring Boot

Puedes definir diferentes configuraciones para distintos entornos usando perfiles:

```properties
# application-dev.properties
spring.datasource.url=jdbc:h2:mem:devdb
logging.level.com.example=DEBUG

# application-prod.properties
spring.datasource.url=jdbc:mysql://localhost:3306/proddb
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL5InnoDBDialect
logging.level.com.example=INFO
spring.thymeleaf.cache=true
```

Para activar un perfil específico:

```bash
./mvnw spring-boot:run -Dspring-boot.run.profiles=dev
```

## 🚀 Despliegue

### Construcción para Producción

1. Genera el archivo JAR ejecutable:
   ```bash
   ./mvnw clean package -DskipTests
   # o en Windows
   mvnw.cmd clean package -DskipTests
   ```

2. El archivo JAR se generará en el directorio `target/`

3. Ejecuta la aplicación en producción:
   ```bash
   java -jar target/mi-aplicacion-web-1.0.0.jar --spring.profiles.active=prod
   ```

### Despliegue con Docker

1. Construye la imagen de Docker:
   ```bash
   docker build -t mi-aplicacion-web .
   ```

2. Inicia el contenedor:
   ```bash
   docker run -p 8080:8080 mi-aplicacion-web
   ```

### Despliegue con Docker Compose

Puedes utilizar Docker Compose para desplegar la aplicación junto con sus dependencias:

```yaml
# docker-compose.yml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "8080:8080"
    environment:
      - SPRING_PROFILES_ACTIVE=prod
      - SPRING_DATASOURCE_URL=jdbc:mysql://db:3306/webappdb
      - SPRING_DATASOURCE_USERNAME=root
      - SPRING_DATASOURCE_PASSWORD=root
    depends_on:
      - db
  db:
    image: mysql:8.0
    environment:
      - MYSQL_DATABASE=webappdb
      - MYSQL_ROOT_PASSWORD=root
    volumes:
      - db-data:/var/lib/mysql
volumes:
  db-data:
```

Ejecución:
```bash
docker-compose up -d
```

## 🧪 Pruebas

### Ejecutar Pruebas Unitarias

```bash
./mvnw test
# o en Windows
mvnw.cmd test
```

### Ejecutar Pruebas con Cobertura

```bash
./mvnw test jacoco:report
# o en Windows
mvnw.cmd test jacoco:report
```

El informe de cobertura se generará en `target/site/jacoco/index.html`

### Tipos de Pruebas

#### Pruebas Unitarias

```java
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest
public class UsuarioServiceTest {

    @Autowired
    private UsuarioService usuarioService;

    @Test
    public void testBuscarPorId() {
        // Given
        Long id = 1L;
        
        // When
        Usuario usuario = usuarioService.buscarPorId(id);
        
        // Then
        assertNotNull(usuario);
        assertEquals(id, usuario.getId());
    }
}
```

#### Pruebas de Controladores

```java
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

@WebMvcTest(UsuarioController.class)
public class UsuarioControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UsuarioService usuarioService;

    @Test
    public void testListarUsuarios() throws Exception {
        mockMvc.perform(get("/usuarios"))
               .andExpect(status().isOk())
               .andExpect(view().name("usuarios/lista"));
    }
}
```

#### Pruebas de Integración

```java
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@ActiveProfiles("test")
public class UsuarioRepositoryTest {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Test
    public void testBuscarPorEmail() {
        // Given
        String email = "usuario@ejemplo.com";
        
        // When
        Usuario usuario = usuarioRepository.findByEmail(email);
        
        // Then
        assertNotNull(usuario);
        assertEquals(email, usuario.getEmail());
    }
}
```

### Ejecutar Pruebas de Integración

```bash
mvn verify -DskipUnitTests=true
```

### Cobertura de Código

Genera un informe de cobertura con JaCoCo:

```bash
mvn clean verify -Pcoverage
```

El informe estará disponible en:
`target/site/jacoco/index.html`

## 🔒 Seguridad

### Autenticación JWT

La aplicación utiliza JWT para autenticación. Para configurar las credenciales:

```yaml
jwt:
  secret: tu-secreto-seguro
  expiration: 86400000  # 24 horas en milisegundos
  issuer: tu-aplicacion
```

### Roles y Permisos

Los roles están definidos en la clase `SecurityConfig` y pueden personalizarse según sea necesario.

## 🤝 Contribución

1. Haz un fork del proyecto
2. Crea una rama para tu característica (`git checkout -b feature/nueva-caracteristica`)
3. Realiza tus cambios y haz commit (`git commit -am 'Añadir nueva característica'`)
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más información.

---

Desarrollado con ❤️ por [Tu Nombre] - [@tucuenta](https://github.com/tucuenta)

## 🚀 Instalación Rápida

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/cricardo1/arquitectura-presentacion-web-3.git
   cd arquitectura-presentacion-web-3
   ```

2. **Ejecutar el gestor de arquetipos**:
   ```bash
   arquetipo-presentacion-manager.bat
   ```
   O haz doble clic en `arquetipo-presentacion-manager.bat` en el explorador de archivos.

3. **Seguir las instrucciones en pantalla** para completar la instalación.

## 🛠️ Uso del Gestor de Arquetipos

El archivo `arquetipo-presentacion-manager.bat` proporciona una interfaz sencilla para gestionar el arquetipo:

1. **Menú Principal**:
   ```
   ==================================================
    GESTOR DE ARQUETIPO WEB 3 CAPAS v1.0
   ==================================================
   
   1. Instalar y verificar arquetipo
   2. Salir
   ```

2. **Proceso de Instalación**:
   - Configura automáticamente Java 11 y Maven
   - Instala el arquetipo en el repositorio local de Maven
   - Verifica la instalación
   - Genera el catálogo de arquetipos si es necesario

3. **Verificación**:
   - Comprueba que el JAR del arquetipo esté en el repositorio local
   - Valida la existencia del catálogo de arquetipos
   - Proporciona instrucciones para configurar Eclipse

## 📁 Estructura del Proyecto

El arquetipo genera una estructura de proyecto modular con la siguiente organización:

```
${projectName}/
├── ${projectName}-persistencia/     # Capa de persistencia
│   ├── src/
│   │   ├── main/java/persistencia/
│   │   │   ├── config/           # Configuración de persistencia
│   │   │   ├── dto/              # Objetos de transferencia de datos
│   │   │   ├── entity/           # Entidades JPA
│   │   │   └── repository/       # Repositorios JPA
│   │   └── resources/            # Recursos (properties, scripts SQL)
│   └── pom.xml
│
├── ${projectName}-servicios/      # Capa de servicios
│   ├── src/
│   │   ├── main/java/servicios/
│   │   │   ├── config/           # Configuración de servicios
│   │   │   ├── service/           # Interfaces de servicio
│   │   │   └── service/impl/      # Implementaciones de servicios
│   │   └── resources/            # Recursos específicos del servicio
│   └── pom.xml
│
├── ${projectName}-presentacion/     # Capa de exposición (API WEB)
│   ├── src/
│   │   ├── main/java/presentacion/
│   │   │   ├── config/           # Configuración de la API
│   │   │   ├── controller/        # Controladores WEB
│   │   │   └── exception/        # Manejo de excepciones
│   │   └── resources/            # Configuración de la aplicación
│   └── pom.xml
│
└── pom.xml                      # POM padre
```

## 🚀 Generación de Nuevos Proyectos

### Desde Línea de Comandos

```bash
mvn archetype:generate \
  -DarchetypeGroupId=mx.com.procesar.servicios.internos \
  -DarchetypeArtifactId=arquitectura-presentacion-web-3 \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=com.tudominio \
  -DartifactId=mi-proyecto \
  -Dversion=1.0.0-SNAPSHOT \
  -DprojectName=MiProyecto
```

### Parámetros Requeridos

| Parámetro | Descripción | Ejemplo |
|-----------|-------------|---------|
| groupId | Identificador único del grupo | com.tudominio |
| artifactId | Identificador del artefacto | mi-proyecto |
| version | Versión del proyecto | 1.0.0-SNAPSHOT |
| projectName | Nombre legible del proyecto | MiProyecto |

## 🖥️ Configuración en IDEs

### Eclipse
1. **Configurar catálogo de arquetipos**:
   - Ve a **Window > Preferences**
   - Navega a **Maven > Archetypes**
   - Haz clic en **Add Local Catalog**
   - Selecciona el archivo: `%USERPROFILE%\.m2\repository\archetype-catalog.xml`
   - Asigna un nombre descriptivo como "Arquetipos Locales"

2. **Crear nuevo proyecto**:
   - **File > New > Maven Project**
   - Selecciona el catálogo local
   - Elige `arquitectura-presentacion-web-3`
   - Completa los parámetros requeridos

### IntelliJ IDEA
1. **Importar arquetipo**:
   - **File > New > Project**
   - Selecciona **Maven**
   - Marca **Create from archetype**
   - Haz clic en **Add Archetype**
   - Completa los datos del arquetipo

## 🔍 Solución de Problemas

### Problemas Comunes

1. **Error de versión de Java**
   - Asegúrate de tener Java 11 configurado como JDK
   - Verifica la variable de entorno `JAVA_HOME`

2. **Problemas con Maven**
   - Limpia la caché: `mvn clean install -U`
   - Elimina la carpeta `.m2/repository/mx/com/procesar/servicios/internos/arquitectura-presentacion-web-3` y vuelve a instalar

3. **El arquetipo no aparece en el catálogo**
   - Verifica que el arquetipo esté instalado correctamente en el repositorio local
   - Genera manualmente el catálogo: `mvn archetype:crawl`

## 🤝 Contribución

1. Haz un Fork del repositorio
2. Crea una rama para tu característica (`git checkout -b feature/nueva-funcionalidad`)
3. Haz commit de tus cambios (`git commit -am 'Añadir nueva funcionalidad'`)
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## ✨ Créditos

- Equipo de Desarrollo de Procesar
- Basado en las mejores prácticas de Spring Boot y arquitectura limpia
   - Navega a **Maven > Archetypes**
   - Haz clic en **Add Local Catalog...**
   - En **Catalog File**, navega hasta `C:\Users\[tu-usuario]\.m2\repository\archetype-catalog.xml`
   - En **Description**, escribe "Arquetipos Locales"
   - Haz clic en **OK** y luego en **Apply and Close**

2. Para crear un nuevo proyecto:
   - Selecciona **File > New > Project...**
   - En el diálogo, selecciona **Maven > Maven Project** y haz clic en **Next**
   - En la pantalla "Select project name and location", asegúrate de que **Create a simple project** NO esté seleccionado y haz clic en **Next**
   - En la pantalla "Select an Archetype", selecciona "Arquetipos Locales" en el desplegable "Catalog"
   - Busca y selecciona el arquetipo `mx.com.procesar.servicios.internos:arquitectura-presentacion-web-3`
   - Haz clic en **Next**
   - Completa los parámetros del arquetipo:
     - **Group Id**: mx.com.procesar.servicios.internos (o el que desees usar)
     - **Artifact Id**: nombre-de-tu-proyecto (sin espacios, preferiblemente en minúsculas)
     - **Version**: 1.0.0 (o la versión que desees)
     - **Package**: se rellenará automáticamente, pero puedes modificarlo
   - Haz clic en **Finish**

### Método 2: Usando el Script arquetipo-presentacion-manager.bat

El arquetipo incluye un script que facilita la generación de proyectos desde la línea de comandos:

1. Ejecuta el archivo `arquetipo-presentacion-manager.bat`:

   ```batch
   C:\arquitectura-presentacion-web-3\arquetipo-presentacion-manager.bat
   ```

2. En el menú que aparece, selecciona la opción 2: "Generar nuevo proyecto".

3. El script te solicitará la siguiente información:
   - **Nombre del proyecto (artifactId)**: Nombre del proyecto sin espacios (ej. miproyecto)
   - **GroupId**: Identificador del grupo (ej. mx.com.procesar.servicios.internos)
   - **Versión**: Versión inicial del proyecto (ej. 1.0.0)
   - **Nombre del proyecto (projectName)**: Nombre del proyecto con la primera letra en mayúscula (ej. Miproyecto)

4. El script generará automáticamente el proyecto con la estructura completa y te mostrará la ruta donde se ha creado.

5. Luego, puedes importar el proyecto en Eclipse:
   - Selecciona **File > Import...**
   - Selecciona **Maven > Existing Maven Projects**
   - Navega hasta la carpeta donde se generó el proyecto
   - Haz clic en **Finish**

### Método 3: Usando Maven Directamente

Si prefieres usar Maven directamente, puedes ejecutar el siguiente comando:

```batch
mvn archetype:generate -B \
  -DarchetypeGroupId=mx.com.procesar.servicios.internos \
  -DarchetypeArtifactId=arquitectura-presentacion-web-3 \
  -DarchetypeVersion=1.0.0 \
  -DgroupId=mx.com.procesar.servicios.internos \
  -DartifactId=miproyecto \
  -Dversion=1.0.0 \
  -DprojectName=Miproyecto \
  -DinteractiveMode=false
```

Observa que ahora puedes especificar el parámetro `projectName` para controlar la capitalización del nombre del proyecto.

## 5. Solución de Problemas Comunes

### Problema: "No archetypes available for this catalog"

Si ves este error al intentar crear un nuevo proyecto Maven en Eclipse:

1. Asegúrate de que el catálogo de arquetipos exista:
   - Ejecuta el script `verificar-arquetipo.bat` mencionado anteriormente
   - Verifica que el archivo `archetype-catalog.xml` exista en `C:\Users\[tu-usuario]\.m2\repository\`

2. Actualiza el catálogo de arquetipos:
    - Crea un archivo `generar-catalogo.bat` con el siguiente contenido:
      ```batch
      @echo off
      SET MAVEN_HOME=D:\Tools\01.-Maven\apache-maven-3.5.4
      SET PATH=%MAVEN_HOME%\bin;%PATH%
      
      echo Generando catálogo de arquetipos...
      call mvn archetype:crawl -Dcatalog=C:/Users/%USERNAME%/.m2/repository/archetype-catalog.xml
      
      echo.
      echo Catálogo generado correctamente.
      echo.
      pause
      ```
   - Ejecuta este archivo para generar o actualizar el catálogo de arquetipos

3. Reinicia Eclipse después de actualizar el catálogo.

### Problema: "Non-resolvable parent POM"

Si ves un error como "Non-resolvable parent POM" después de crear el proyecto:

1. Este arquetipo ha sido diseñado para evitar este problema al no depender de un POM padre externo.

2. Si aún así ocurre, verifica que todos los módulos del proyecto se hayan generado correctamente:
   - Debería haber un módulo principal y tres submódulos (persistencia, servicios, exposición)
   - Cada módulo debe tener su propio archivo POM

3. Asegúrate de que las referencias entre módulos sean correctas:
   - El POM principal debe listar los tres submódulos
   - Los POM de los submódulos deben referenciar al POM principal como su padre

## 6. Estructura del Proyecto Generado

El proyecto generado tendrá la siguiente estructura:

```text
mi-proyecto/
│── mi-proyecto-persistencia/
│   │── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/persistencia/
│   │       │── config/
│   │       │   └── PersistenceConfig.java
│   │       │── dto/
│   │       │   └── AforeModel.java
│   │       │── entity/
│   │       │   └── Afore.java
│   │       └── repository/
│   │           └── AforeRepository.java
│   │── src/test/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/persistencia/repository/
│   │       └── AforeRepositoryTest.java
│   └── pom.xml
│── mi-proyecto-servicios/
│   │── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/servicios/
│   │       │── config/
│   │       │   └── ServiceConfig.java
│   │       └── service/
│   │           │── AforeService.java
│   │           └── impl/
│   │               └── AforeServiceImpl.java
│   │── src/test/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/servicios/service/impl/
│   │       └── AforeServiceImplTest.java
│   └── pom.xml
│── mi-proyecto-presentacion/
│   │── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/presentacion/
│   │       │── config/
│   │       │   │── AppConfig.java
│   │       │   └── OpenApiConfig.java
│   │       │── controller/
│   │       │   └── AforeController.java
│   │       │── dto/
│   │       │   └── ApiErrorDTO.java
│   │       └── exception/
│   │           └── GlobalExceptionHandler.java
│   │── src/main/resources/
│   │   └── application.properties
│   │── src/test/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/presentacion/controller/
│   │       └── AforeControllerTest.java
│   └── pom.xml
│── pom.xml
└── README.md
```

## 7. Personalización del Proyecto

El arquetipo proporciona una base sólida con un ejemplo funcional basado en la entidad Afore. A continuación, se presentan algunos ejemplos de cómo personalizar y extender el proyecto generado:

### Ejemplo de Uso del Modelo Afore

El arquetipo incluye un ejemplo completo de la entidad Afore con todas sus capas. Puedes usar este ejemplo como referencia para crear tus propias entidades:

#### Entidad JPA

```java
@Entity
@Table(name = "NSAR_TC_AFORE")
public class Afore {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "CLAVE", length = 10, nullable = false, unique = true)
    private String clave;
    
    @Column(name = "NOMBRE", length = 100, nullable = false)
    private String nombre;
    
    // Getters, setters, equals, hashCode, toString y Builder
}
```

#### DTO

```java
public class AforeModel {
    private Long id;
    private String clave;
    private String nombre;
    
    // Getters, setters, equals, hashCode, toString y Builder
}
```

#### Repositorio

```java
public interface AforeRepository extends JpaRepository<Afore, Long> {
    Optional<Afore> findByClave(String clave);
    List<Afore> findByNombreContaining(String nombre);
}
```

#### Servicio

```java
public interface AforeService {
    List<AforeModel> obtenerTodasLasAfores();
    Optional<AforeModel> obtenerAforePorId(Long id);
    AforeModel guardarAfore(AforeModel afore);
    void eliminarAfore(Long id);
}
```

#### Implementación del Servicio

```java
@Service
public class AforeServiceImpl implements AforeService {
    private final AforeRepository aforeRepository;
    
    @Autowired
    public AforeServiceImpl(AforeRepository aforeRepository) {
        this.aforeRepository = aforeRepository;
    }
    
    @Override
    public List<AforeModel> obtenerTodasLasAfores() {
        return aforeRepository.findAll().stream()
                .map(this::convertirAModel)
                .collect(Collectors.toList());
    }
    
    // Otros métodos y conversiones entre entidad y DTO
}
```

#### Controlador REST

```java
@RestController
@RequestMapping("/api/afores")
public class AforeController {
    private final AforeService aforeService;
    
    @Autowired
    public AforeController(AforeService aforeService) {
        this.aforeService = aforeService;
    }
    
    @GetMapping
    public ResponseEntity<List<AforeModel>> obtenerTodasLasAfores() {
        return ResponseEntity.ok(aforeService.obtenerTodasLasAfores());
    }
    
    // Otros endpoints para operaciones CRUD
}
```

### Creando Nuevas Entidades

Para crear nuevas entidades siguiendo el mismo patrón:

1. Crea la entidad JPA en el módulo de persistencia
2. Crea el DTO correspondiente en el módulo de persistencia
3. Crea el repositorio en el módulo de persistencia
4. Crea la interfaz de servicio en el módulo de servicios
5. Implementa el servicio en el módulo de servicios
6. Crea el controlador REST en el módulo de presentacion
7. Crea las clases de prueba para cada componente

Una vez generado el proyecto, puedes personalizarlo según tus necesidades:

1. **Configuración de la base de datos**:
   - Modifica el archivo `application.properties` en el módulo de presentacion para configurar la conexión a tu base de datos

2. **Entidades y repositorios**:
   - Crea tus propias entidades JPA en el paquete `entity` del módulo de persistencia
   - Crea los repositorios correspondientes en el paquete `repository`

3. **Servicios**:
   - Crea DTOs para tus entidades en el paquete `dto` del módulo de servicios
   - Implementa interfaces de servicio en el paquete `service` y sus implementaciones en `service/impl`

4. **API REST/WEB**:
   - Crea controladores REST / WEB en el paquete `controller` del módulo de presentacion
   - Documenta tus endpoints usando las anotaciones de OpenAPI/Swagger

5. **Configuración adicional**:
   - Agrega dependencias adicionales según tus necesidades en los archivos POM correspondientes
   - Configura aspectos como seguridad, caché, etc., según lo requiera tu aplicación

## 8. Pruebas Unitarias

El arquetipo incluye pruebas unitarias para cada capa de la aplicación, utilizando JUnit 5, Mockito y Spring Test:

### Pruebas de Repositorio

```java
@DataJpaTest
public class AforeRepositoryTest {
    @Autowired
    private AforeRepository aforeRepository;
    
    @Test
    public void testFindByClave() {
        // Configuración de datos de prueba
        Afore afore = new Afore();
        afore.setClave("001");
        afore.setNombre("Afore Ejemplo");
        aforeRepository.save(afore);
        
        // Ejecución de la prueba
        Optional<Afore> resultado = aforeRepository.findByClave("001");
        
        // Verificación
        assertTrue(resultado.isPresent());
        assertEquals("Afore Ejemplo", resultado.get().getNombre());
    }
}
```

### Pruebas de Servicio

```java
@ExtendWith(MockitoExtension.class)
public class AforeServiceImplTest {
    @Mock
    private AforeRepository aforeRepository;
    
    @InjectMocks
    private AforeServiceImpl aforeService;
    
    @Test
    public void testObtenerTodasLasAfores() {
        // Configuración
        List<Afore> afores = Arrays.asList(
            createAfore(1L, "001", "Afore Uno"),
            createAfore(2L, "002", "Afore Dos")
        );
        when(aforeRepository.findAll()).thenReturn(afores);
        
        // Ejecución
        List<AforeModel> resultado = aforeService.obtenerTodasLasAfores();
        
        // Verificación
        assertEquals(2, resultado.size());
        assertEquals("001", resultado.get(0).getClave());
    }
}
```

### Pruebas de Controlador

```java
@WebMvcTest(AforeController.class)
public class AforeControllerTest {
    @Autowired
    private MockMvc mockMvc;
    
    @MockBean
    private AforeService aforeService;
    
    @Test
    public void testObtenerTodasLasAfores() throws Exception {
        // Configuración
        List<AforeModel> afores = Arrays.asList(
            createAforeModel(1L, "001", "Afore Uno"),
            createAforeModel(2L, "002", "Afore Dos")
        );
        when(aforeService.obtenerTodasLasAfores()).thenReturn(afores);
        
        // Ejecución y verificación
        mockMvc.perform(get("/api/afores"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$", hasSize(2)))
            .andExpect(jsonPath("$[0].clave", is("001")));
    }
}
```

## 9. Ejecución de la Aplicación

Para ejecutar la aplicación generada:

1. **Compilación del proyecto**:

   ```bash
   cd mi-proyecto
   mvn clean install
   ```

2. **Ejecución de la aplicación**:

   ```bash
   cd mi-proyecto-presentacion
   mvn spring-boot:run
   ```

3. **Acceso a la API**:
   - La aplicación estará disponible en `http://localhost:8080`
   - La documentación de la API (Swagger UI) estará disponible en `http://localhost:8080/swagger-ui.html`

4. **Endpoints disponibles**:
   - `GET /api/afores`: Obtener todas las afores
   - `GET /api/afores/{id}`: Obtener una afore por ID
   - `POST /api/afores`: Crear una nueva afore
   - `PUT /api/afores/{id}`: Actualizar una afore existente
   - `DELETE /api/afores/{id}`: Eliminar una afore
