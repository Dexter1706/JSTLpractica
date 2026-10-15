<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- En esta guía el valor va en el CUERPO de la etiqueta (no en el atributo value) --%>
<c:set var="variableDePagina" scope="page">Esta información se guarda en la página</c:set>
<c:set var="variableDeSesion" scope="session">Esta información se guarda en la sesión</c:set>
<c:set var="variableDeAplicacion" scope="application">Esta información se guarda en la aplicación</c:set>
<c:set var="titulo" value="Ejercicio 3 · Uso de etiqueta c:set"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:set"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="table-responsive mb-4">
  <table class="table table-sm align-middle">
    <thead class="table-light"><tr><th>Atributo</th><th>Descripción</th><th>Por defecto</th></tr></thead>
    <tbody>
      <tr><td><code>value</code></td><td>Información a grabar</td><td>Cuerpo</td></tr>
      <tr><td><code>target</code></td><td>Variable cuya propiedad será modificada</td><td>Ninguno</td></tr>
      <tr><td><code>property</code></td><td>Propiedad a modificar</td><td>Ninguna</td></tr>
      <tr><td><code>var</code></td><td>Variable en la que se guarda el valor</td><td>Ninguno</td></tr>
      <tr><td><code>scope</code></td><td>Ámbito: page, request, session o application</td><td>page</td></tr>
    </tbody>
  </table>
</div>
<div class="dato"><span>page</span><strong>${variableDePagina}</strong></div>
<div class="dato"><span>session</span><strong>${variableDeSesion}</strong></div>
<div class="dato"><span>application</span><strong>${variableDeAplicacion}</strong></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
