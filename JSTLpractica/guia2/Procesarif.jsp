<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:if test="${empty param.nombre}">
  <c:redirect url="Datosif.jsp"><c:param name="error" value="Nombre obligatorio"/></c:redirect>
</c:if>
<c:if test="${empty param.apellido1}">
  <c:redirect url="Datosif.jsp"><c:param name="error" value="Primer apellido obligatorio"/></c:redirect>
</c:if>
<c:set var="titulo" value="Ejercicio 4 · Imprimiendo parámetros con JSTL"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:if"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="dato"><span>Nombre</span><strong><c:out value="${param.nombre}"/></strong></div>
<div class="dato"><span>Primer apellido</span><strong><c:out value="${param.apellido1}"/></strong></div>
<div class="dato"><span>Segundo apellido</span><strong><c:out value="${param.apellido2}"/></strong></div>
<div class="text-center mt-4"><a href="Datosif.jsp" class="btn btn-outline-secondary rounded-pill"><i class="bi bi-arrow-left"></i> Volver</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
