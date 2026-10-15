<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${param.lang == 'es_CO' or param.lang == 'en_US'}"><c:set var="idioma" value="${param.lang}" scope="session"/></c:if>
<c:if test="${empty sessionScope.idioma}"><c:set var="idioma" value="es_CO" scope="session"/></c:if>
<fmt:setLocale value="${sessionScope.idioma}"/>
<%-- Los textos están en WEB-INF/classes/mensajes.properties y mensajes_en.properties --%>
<fmt:setBundle basename="mensajes"/>
<jsp:useBean id="ahora" class="java.util.Date"/>
<c:set var="titulo" value="Ejercicio 9 · Internacionalización"/>
<c:set var="guia" value="Guía 1 · extra"/>
<c:set var="etiqueta" value="fmt"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="d-flex gap-2 justify-content-end mb-3">
  <a class="btn btn-sm rounded-pill ${sessionScope.idioma == 'es_CO' ? 'btn-dark' : 'btn-outline-dark'}" href="?lang=es_CO">Español</a>
  <a class="btn btn-sm rounded-pill ${sessionScope.idioma == 'en_US' ? 'btn-dark' : 'btn-outline-dark'}" href="?lang=en_US">English</a>
</div>
<h3><fmt:message key="titulo"/></h3>
<p class="lead"><fmt:message key="saludo"><fmt:param value="Juanita"/></fmt:message></p>
<div class="dato"><span><fmt:message key="idioma.actual"/></span><strong><c:out value="${sessionScope.idioma}"/></strong></div>
<div class="dato"><span><fmt:message key="precio"/></span><strong><fmt:formatNumber value="1234567.89" type="currency"/></strong></div>
<div class="dato"><span><fmt:message key="fecha"/></span><strong><fmt:formatDate value="${ahora}" type="both" dateStyle="full" timeStyle="short"/></strong></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
