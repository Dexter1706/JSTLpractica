<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 9 · Datos personales"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="sql:update / sql:query"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:if test="${not empty param.error}">
  <div class="alert alert-danger"><i class="bi bi-exclamation-triangle-fill"></i> <c:out value="${param.error}"/></div>
</c:if>
<form role="form" name="persona" action="Procesarinfo.jsp" method="post">
  <div class="mb-3"><label for="nombres" class="form-label">Ingrese su nombre</label><input type="text" class="form-control" name="nombres" id="nombres" placeholder="Nombre" required></div>
  <div class="mb-3"><label for="apellido1" class="form-label">Ingrese su primer apellido</label><input type="text" class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido" required></div>
  <div class="mb-3"><label for="apellido2" class="form-label">Ingrese su segundo apellido</label><input type="text" class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido"></div>
  <div class="mb-3"><label for="edad" class="form-label">Ingrese su edad</label><input type="number" min="0" max="120" class="form-control" name="edad" id="edad" placeholder="Edad" required></div>
  <div class="d-flex flex-wrap justify-content-center gap-2 mt-4">
    <button type="submit" class="btn btn-primary rounded-pill px-4"><i class="bi bi-send"></i> Enviar</button>
    <a class="btn btn-outline-dark rounded-pill" href="Procesarinfo.jsp"><i class="bi bi-table"></i> Ver registros</a>
  </div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
