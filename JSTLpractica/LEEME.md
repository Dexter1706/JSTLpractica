# JSTLpractica - guía de puesta en marcha

1. Usa **Tomcat 9** (Tomcat 10+ usa `jakarta.*` y las URI `http://java.sun.com/jsp/jstl/...` no funcionan con jstl-1.2).
2. Copia en `WEB-INF/lib` los jar indicados en `WEB-INF/lib/LEEME.txt` (jstl-1.2.jar y mysql-connector-j 8.x).
3. Ejecuta `sql/empleados.sql` en MySQL. Ajusta usuario/clave en `WEB-INF/jspf/conexion.jspf`.
4. Despliega la carpeta como webapp `JSTLpractica` y abre http://localhost:8080/JSTLpractica/

## Estructura
- `index.jsp` → menú principal con las dos guías.
- `ejercicios/1..8` → Guía 1 (Hurtado & Amaya). `ejercicios/9` → extra de internacionalización (fmt).
- `guia2/` → Guía 2 (Juanita Tamayo): Eje1, Datos/ProcesarC, set1, Datosif/Procesarif,
  Lenguaje/ProcesarC2, catch, foreach, ForTokens/ResultTokens, Informacion/Procesarinfo.
- `WEB-INF/jspf/cabecera.jspf` y `pie.jspf` → diseño común (barra con botón **Volver al inicio**).
- `WEB-INF/classes/mensajes*.properties` → textos del ejercicio de internacionalización.

## Despliegue en Clever Cloud
- `WEB-INF/jspf/conexion.jspf` lee las variables `MYSQL_ADDON_HOST`, `MYSQL_ADDON_PORT`, `MYSQL_ADDON_DB`,
  `MYSQL_ADDON_USER` y `MYSQL_ADDON_PASSWORD` que Clever Cloud crea al vincular el add-on MySQL.
  Si no existen (en tu PC), usa `localhost:3306/empleados` con usuario `root` sin clave.
- En la nube ejecuta `sql/empleados_clevercloud.sql` (sin CREATE DATABASE ni USE) desde phpMyAdmin del add-on.
- Para subir: genera el `.war`, ponlo junto a `clevercloud/war.json` (contenedor TOMCAT9) y haz `git push clever HEAD:master`.

## Despliegue en Render
- Render usa el `Dockerfile` (Tomcat 9 + Java 17) y publica la app en la raíz.
- Render no ofrece MySQL: la base puede quedarse en el add-on MySQL de Clever Cloud.
  En Render agrega las variables de entorno MYSQL_ADDON_HOST, MYSQL_ADDON_PORT, MYSQL_ADDON_DB,
  MYSQL_ADDON_USER y MYSQL_ADDON_PASSWORD con los valores que muestra el add-on en Clever Cloud.
