<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="titulo" value="Ejercicio 5 · Resultado"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:choose / c:when / c:otherwise"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:choose>
  <c:when test="${param.lenguaje == 'Java'}"><p class="fs-5"><span class="text-primary fw-semibold">Java</span> El rey de los lenguajes orientados a objetos</p></c:when>
  <c:when test="${param.lenguaje == 'C++'}"><p class="fs-5"><span class="text-primary fw-semibold">C++</span> Ideal para aprender</p></c:when>
  <c:when test="${param.lenguaje == 'Perl'}"><p class="fs-5"><span class="text-primary fw-semibold">Perl</span> Lenguaje de scripting muy potente</p></c:when>
  <c:otherwise><p class="fs-5 text-muted">No se seleccionó ninguno</p></c:otherwise>
</c:choose>
<div class="text-center mt-4"><a href="Lenguaje.jsp" class="btn btn-outline-secondary rounded-pill"><i class="bi bi-arrow-left"></i> Volver</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
