<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 4 · Datos de una persona (c:if)"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:if"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h3 class="text-center mb-3">Ingrese los datos de la persona</h3>
<form action="Procesarif.jsp" name="persona" method="post">
  <div class="mb-3"><label class="form-label" for="nombre">Nombre</label><input class="form-control" type="text" name="nombre" id="nombre" placeholder="Digite el nombre"></div>
  <div class="mb-3"><label class="form-label" for="apellido1">Primer apellido</label><input class="form-control" type="text" name="apellido1" id="apellido1" placeholder="Primer apellido"></div>
  <div class="mb-3"><label class="form-label" for="apellido2">Segundo apellido</label><input class="form-control" type="text" name="apellido2" id="apellido2" placeholder="Segundo apellido"></div>
  <div class="text-center mt-4"><button type="submit" name="enviar" class="btn btn-primary rounded-pill px-4"><i class="bi bi-send"></i> Enviar información</button></div>
  <c:if test="${not empty param.error}">
    <div class="alert alert-danger mt-3 mb-0"><i class="bi bi-exclamation-triangle-fill"></i> <strong>¡Error!</strong> <c:out value="${param.error}"/></div>
  </c:if>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
