<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 5 · Lenguaje con JSTL"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:choose / c:when / c:otherwise"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<form role="form" name="lenguaje" action="ProcesarC2.jsp" method="post">
  <label for="lenguaje" class="form-label">¿Cuál es tu lenguaje de programación favorito?</label>
  <select name="lenguaje" id="lenguaje" class="form-select">
    <option value="">-- Seleccionar un lenguaje --</option>
    <option value="Java">Java</option>
    <option value="C++">C++</option>
    <option value="Perl">Perl</option>
  </select>
  <div class="text-center mt-4"><button type="submit" class="btn btn-primary rounded-pill px-4"><i class="bi bi-send"></i> Enviar</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
