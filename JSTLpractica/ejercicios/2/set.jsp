<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="variableDePagina" scope="page" value="Esta información se guarda en la página"/>
<c:set var="variableDeSesion" scope="session" value="Esta información se guarda en la sesión"/>
<c:set var="variableDeAplicacion" scope="application" value="Esta información se guarda en la aplicación"/>
<c:set var="titulo" value="Ejercicio 2 · Ámbitos de c:set"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:set"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="dato"><span>page</span><strong><c:out value="${variableDePagina}"/></strong></div>
<div class="dato"><span>session</span><strong><c:out value="${variableDeSesion}"/></strong></div>
<div class="dato"><span>application</span><strong><c:out value="${variableDeAplicacion}"/></strong></div>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
