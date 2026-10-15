<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 2 · Datos de una persona"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="param + c:out"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h3 class="text-center mb-3">Ingrese los datos de la persona</h3>
<form action="ProcesarC.jsp" name="persona" method="post">
  <div class="mb-3"><label class="form-label" for="nombre">Nombre</label><input class="form-control" type="text" name="nombre" id="nombre" placeholder="Digite el nombre" required></div>
  <div class="mb-3"><label class="form-label" for="apellido1">Primer apellido</label><input class="form-control" type="text" name="apellido1" id="apellido1" placeholder="Primer apellido" required></div>
  <div class="mb-3"><label class="form-label" for="apellido2">Segundo apellido</label><input class="form-control" type="text" name="apellido2" id="apellido2" placeholder="Segundo apellido" required></div>
  <div class="text-center mt-4"><button type="submit" name="enviar" class="btn btn-primary rounded-pill px-4"><i class="bi bi-send"></i> Enviar información</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
