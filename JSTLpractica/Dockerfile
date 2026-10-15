# Tomcat 9 (javax.*) con Java 17: compatible con jstl-1.2
FROM tomcat:9.0-jdk17-temurin

# Publica el proyecto como aplicación raíz (https://tu-app.onrender.com/)
COPY . /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
CMD ["catalina.sh", "run"]
