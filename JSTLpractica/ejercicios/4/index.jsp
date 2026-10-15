<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 4 · choose, when y otherwise"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:choose"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<form action="procesar.jsp" method="post">
  <label class="form-label" for="lenguaje">¿Cuál es tu lenguaje de programación favorito?</label>
  <select class="form-select mb-3" name="lenguaje" id="lenguaje">
    <option value="">-- Seleccionar un lenguaje --</option>
    <option value="Java">Java</option>
    <option value="C++">C++</option>
    <option value="Perl">Perl</option>
  </select>
  <div class="text-center mt-4"><button class="btn btn-primary rounded-pill px-4" type="submit"><i class="bi bi-send"></i> Enviar</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
