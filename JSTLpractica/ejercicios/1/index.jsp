<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 1 · Primer ejemplo con JSTL"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:out"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<p class="text-muted"><code>c:out</code> muestra información en la página; equivale a <code>&lt;%= %&gt;</code>.</p>
<div class="dato"><span>Cadena de caracteres <code>value="1+2+3"</code></span><strong><c:out value="1+2+3"/></strong></div>
<div class="dato"><span>Suma de valores <code>value="&#36;{1+2+3}"</code></span><strong><c:out value="${1+2+3}"/></strong></div>
<div class="dato"><span>Valor por defecto (<code>default</code>)</span><strong><c:out value="${param.nombre}" default="(sin valor)"/></strong></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
