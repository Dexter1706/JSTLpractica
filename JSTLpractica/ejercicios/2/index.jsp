<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 2 · Datos personales"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:set"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<form action="procesar.jsp" method="post">
  <div class="mb-3"><label class="form-label" for="nombre">Ingrese su nombre</label><input class="form-control" id="nombre" name="nombre" placeholder="Nombre"></div>
  <div class="mb-3"><label class="form-label" for="apellido1">Ingrese su primer apellido</label><input class="form-control" id="apellido1" name="apellido1" placeholder="Primer apellido"></div>
  <div class="mb-3"><label class="form-label" for="apellido2">Ingrese su segundo apellido</label><input class="form-control" id="apellido2" name="apellido2" placeholder="Segundo apellido"></div>
  <div class="d-flex flex-wrap justify-content-center gap-2 mt-4">
    <button class="btn btn-primary rounded-pill px-4" type="submit"><i class="bi bi-send"></i> Enviar</button>
    <a class="btn btn-outline-dark rounded-pill" href="set.jsp">Ver uso de set</a>
  </div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
