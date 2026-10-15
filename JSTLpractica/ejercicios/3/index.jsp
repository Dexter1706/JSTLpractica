<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 3 · Condicional c:if"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:if"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<p class="text-muted">El nombre y el primer apellido son obligatorios. Si falta alguno, <code>procesar.jsp</code> te devuelve aquí con un error.</p>
<c:if test="${not empty param.error}">
  <div class="alert alert-danger"><i class="bi bi-exclamation-triangle-fill"></i> <strong>Error:</strong> <c:out value="${param.error}"/></div>
</c:if>
<form action="procesar.jsp" method="post">
  <div class="mb-3"><label class="form-label" for="nombre">Ingrese su nombre</label><input class="form-control" id="nombre" name="nombre" placeholder="Nombre"></div>
  <div class="mb-3"><label class="form-label" for="apellido1">Ingrese su primer apellido</label><input class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido"></div>
  <div class="mb-3"><label class="form-label" for="apellido2">Ingrese su segundo apellido</label><input class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido"></div>
  <div class="text-center mt-4"><button class="btn btn-primary rounded-pill px-4" type="submit"><i class="bi bi-send"></i> Enviar</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
