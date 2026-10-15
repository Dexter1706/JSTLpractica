<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="titulo" value="Ejercicio 2 · Imprimiendo parámetros con JSTL"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:set"/>
<c:set var="nombreCompleto" value="${param.nombre} ${param.apellido1} ${param.apellido2}" scope="request"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="dato"><span>Nombre</span><strong><c:out value="${param.nombre}"/></strong></div>
<div class="dato"><span>Primer apellido</span><strong><c:out value="${param.apellido1}"/></strong></div>
<div class="dato"><span>Segundo apellido</span><strong><c:out value="${param.apellido2}"/></strong></div>
<div class="dato"><span>Nombre completo (guardado con <code>c:set</code>)</span><strong><c:out value="${nombreCompleto}"/></strong></div>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
