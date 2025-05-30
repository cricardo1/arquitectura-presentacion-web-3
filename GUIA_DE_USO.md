# Guía de Uso del Arquetipo arquitectura-presentacion-web-3

Esta guía proporciona instrucciones detalladas para instalar y utilizar el arquetipo `arquitectura-presentacion-web-3` para crear nuevos proyectos WEB con arquitectura de tres capas.

## Índice
1. [Instalación del Arquetipo](#1-instalación-del-arquetipo)
2. [Verificación de la Instalación](#2-verificación-de-la-instalación)
3. [Uso del Arquetipo en Eclipse](#3-uso-del-arquetipo-en-eclipse)
4. [Solución de Problemas Comunes](#4-solución-de-problemas-comunes)
5. [Estructura del Proyecto Generado](#5-estructura-del-proyecto-generado)
6. [Personalización del Proyecto](#6-personalización-del-proyecto)

## 1. Instalación del Arquetipo

### Requisitos Previos
- Java 11 instalado
- Maven 3.5.4 o superior instalado
- Eclipse IDE con soporte para Maven

### Pasos para la Instalación

1. Ejecuta el archivo `arquetipo-presentacion-manager.bat` incluido en este directorio:
   - Haz doble clic en el archivo `arquetipo-presentacion-manager.bat`
   - O abre una ventana de comandos y ejecuta:
     ```
     D:\proyectos\arquitectura-presentacion-web-3\arquetipo-presentacion-manager.bat
     ```

2. El script configurará las variables de entorno necesarias y ejecutará el comando Maven para instalar el arquetipo en tu repositorio local.

3. Espera a que el proceso de instalación se complete. Verás un mensaje de éxito cuando termine.

## 2. Verificación de la Instalación

Para verificar que el arquetipo se ha instalado correctamente:

1. Crea un archivo `verificar-arquetipo.bat` con el siguiente contenido:

```batch
@echo off
SET MAVEN_HOME=D:\Tools\01.-Maven\apache-maven-3.5.4
SET PATH=%MAVEN_HOME%\bin;%PATH%

echo Verificando instalación del arquetipo...
echo.

if exist "%USERPROFILE%\.m2\repository\mx\com\procesar\servicios\internos\arquitectura-presentacion-web-3\1.0.0\arquitectura-presentacion-web-3-1.0.0.jar" (
    echo El arquetipo está correctamente instalado en el repositorio local.
    echo Ruta: %USERPROFILE%\.m2\repository\mx\com\procesar\servicios\internos\arquitectura-presentacion-web-3\1.0.0\arquitectura-presentacion-web-3-1.0.0.jar
) else (
    echo El arquetipo NO se encuentra en el repositorio local.
    echo.
    echo Reinstalando el arquetipo...
    cd %~dp0
    call mvn clean install
)

echo.
echo Verificando catálogo de arquetipos...
if exist "%USERPROFILE%\.m2\repository\archetype-catalog.xml" (
    echo El catálogo de arquetipos existe.
) else (
    echo El catálogo de arquetipos NO existe. Generando...
    call mvn archetype:crawl -Dcatalog=%USERPROFILE%\.m2\repository\archetype-catalog.xml
)

echo.
pause
```

2. Ejecuta este archivo para verificar que el arquetipo esté correctamente instalado y que el catálogo de arquetipos exista.

## 3. Uso del Arquetipo en Eclipse

### Método 1: Usando el Catálogo de Arquetipos

1. Primero, asegúrate de que Eclipse conozca tu catálogo de arquetipos local:
   - Ve a **Window > Preferences**
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

### Método 2: Usando la Línea de Comandos y Luego Importando

Si tienes problemas con el método anterior, puedes crear el proyecto desde la línea de comandos y luego importarlo a Eclipse:

1. Crea un archivo `generar-proyecto.bat` con el siguiente contenido:

```batch
@echo off
SET MAVEN_HOME=D:\Tools\01.-Maven\apache-maven-3.5.4
SET PATH=%MAVEN_HOME%\bin;%PATH%

echo Ingrese el nombre del proyecto (artifactId):
set /p ARTIFACT_ID=

echo Ingrese el groupId (presione Enter para usar mx.com.procesar.servicios.internos):
set /p GROUP_ID=
if "%GROUP_ID%"=="" set GROUP_ID=mx.com.procesar.servicios.internos

echo Ingrese la versión (presione Enter para usar 1.0.0):
set /p VERSION=
if "%VERSION%"=="" set VERSION=1.0.0

echo Generando proyecto %ARTIFACT_ID%...
call mvn archetype:generate -B ^
  -DarchetypeGroupId=mx.com.procesar.servicios.internos ^
  -DarchetypeArtifactId=arquitectura-presentacion-web-3 ^
  -DarchetypeVersion=1.0.0 ^
  -DgroupId=%GROUP_ID% ^
  -DartifactId=%ARTIFACT_ID% ^
  -Dversion=%VERSION% ^
  -Dpackage=%GROUP_ID%.%ARTIFACT_ID:.=% ^
  -DinteractiveMode=false

echo.
echo Proyecto generado en la carpeta: %ARTIFACT_ID%
echo.
echo Para importar este proyecto en Eclipse:
echo 1. Vaya a File > Import...
echo 2. Seleccione Maven > Existing Maven Projects
echo 3. Navegue hasta la carpeta: %CD%\%ARTIFACT_ID%
echo 4. Haga clic en Finish
echo.
pause
```

2. Ejecuta este archivo y sigue las instrucciones para generar tu proyecto.

3. Luego, importa el proyecto en Eclipse:
   - Selecciona **File > Import...**
   - Selecciona **Maven > Existing Maven Projects**
   - Navega hasta la carpeta donde se generó el proyecto
   - Haz clic en **Finish**

## 4. Solución de Problemas Comunes

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

## 5. Estructura del Proyecto Generado

El proyecto generado tendrá la siguiente estructura:

```
mi-proyecto/
├── mi-proyecto-persistencia/
│   ├── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/persistencia/
│   │       ├── config/
│   │       │   └── PersistenceConfig.java
│   │       ├── entity/
│   │       │   └── Ejemplo.java
│   │       └── repository/
│   │           └── EjemploRepository.java
│   └── pom.xml
├── mi-proyecto-servicios/
│   ├── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/servicios/
│   │       ├── config/
│   │       │   └── ServiceConfig.java
│   │       ├── dto/
│   │       │   └── EjemploDTO.java
│   │       └── service/
│   │           ├── EjemploService.java
│   │           └── impl/
│   │               └── EjemploServiceImpl.java
│   └── pom.xml
├── mi-proyecto-presentacion/
│   ├── src/main/java/
│   │   └── mx/com/procesar/servicios/internos/miproyecto/presentacion/
│   │       ├── config/
│   │       │   ├── AppConfig.java
│   │       │   └── OpenApiConfig.java
│   │       ├── controller/
│   │       │   └── EjemploController.java
│   │       ├── dto/
│   │       │   └── ApiErrorDTO.java
│   │       └── exception/
│   │           └── GlobalExceptionHandler.java
│   ├── src/main/resources/
│   │   └── application.properties
│   └── pom.xml
├── pom.xml
└── README.md
```

## 6. Personalización del Proyecto

Una vez generado el proyecto, puedes personalizarlo según tus necesidades:

1. **Configuración de la base de datos**:
   - Modifica el archivo `application.properties` en el módulo de exposición para configurar la conexión a tu base de datos

2. **Entidades y repositorios**:
   - Crea tus propias entidades JPA en el paquete `entity` del módulo de persistencia
   - Crea los repositorios correspondientes en el paquete `repository`

3. **Servicios**:
   - Crea DTOs para tus entidades en el paquete `dto` del módulo de servicios
   - Implementa interfaces de servicio en el paquete `service` y sus implementaciones en `service/impl`

4. **API REST**:
   - Crea controladores REST en el paquete `controller` del módulo de exposición
   - Documenta tus endpoints usando las anotaciones de OpenAPI/Swagger

5. **Configuración adicional**:
   - Agrega dependencias adicionales según tus necesidades en los archivos POM correspondientes
   - Configura aspectos como seguridad, caché, etc., según lo requiera tu aplicación
