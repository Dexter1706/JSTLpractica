<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8"/>
<c:if test="${empty fn:trim(param.nombre)}">
  <c:redirect url="index.jsp"><c:param name="error" value="Nombre obligatorio"/></c:redirect>
</c:if>
<c:if test="${empty fn:trim(param.apellido1)}">
  <c:redirect url="index.jsp"><c:param name="error" value="Primer apellido obligatorio"/></c:redirect>
</c:if>
<c:set var="titulo" value="Ejercicio 3 · Imprimiendo parámetros con JSTL"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:if"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="alert alert-success"><i class="bi bi-check-circle-fill"></i> Datos válidos</div>
<div class="dato"><span>Nombre</span><strong><c:out value="${param.nombre}"/></strong></div>
<div class="dato"><span>Primer apellido</span><strong><c:out value="${param.apellido1}"/></strong></div>
<div class="dato"><span>Segundo apellido</span><strong><c:out value="${param.apellido2}" default="-"/></strong></div>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
