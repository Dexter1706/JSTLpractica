<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 1 · Primer ejemplo con JSTL"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:out"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h3>Primer ejemplo con JSTL</h3>
<div class="dato"><span>Cadena de caracteres</span><strong><c:out value="1+2+3"/></strong></div>
<div class="dato"><span>Suma de valores</span><strong><c:out value="${1+2+3}"/></strong></div>
<p class="text-muted small mt-3 mb-0">Con <code>value="1+2+3"</code> se imprime el texto tal cual; con una expresión EL <code>&#36;{1+2+3}</code> se evalúa la suma.</p>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
