<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 8 · Registrar empleado"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="sql:update / sql:query"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:if test="${not empty param.error}">
  <div class="alert alert-danger"><i class="bi bi-exclamation-triangle-fill"></i> <strong>Error:</strong> <c:out value="${param.error}"/></div>
</c:if>
<form action="guardar.jsp" method="post">
  <div class="mb-3"><label class="form-label" for="nombres">Ingrese su nombre</label><input class="form-control" id="nombres" name="nombres" placeholder="Nombre" required></div>
  <div class="mb-3"><label class="form-label" for="apellido1">Ingrese su primer apellido</label><input class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido" required></div>
  <div class="mb-3"><label class="form-label" for="apellido2">Ingrese su segundo apellido</label><input class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido"></div>
  <div class="mb-3"><label class="form-label" for="edad">Ingrese su edad</label><input class="form-control" type="number" min="0" max="120" id="edad" name="edad" placeholder="Edad" required></div>
  <div class="d-flex flex-wrap justify-content-center gap-2 mt-4">
    <button class="btn btn-primary rounded-pill px-4" type="submit"><i class="bi bi-send"></i> Enviar</button>
    <a class="btn btn-outline-dark rounded-pill" href="listar.jsp"><i class="bi bi-table"></i> Ver empleados</a>
  </div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
