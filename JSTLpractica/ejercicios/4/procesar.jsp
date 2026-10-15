<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="titulo" value="Ejercicio 4 · Resultado"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:choose"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:choose>
  <c:when test="${param.lenguaje == 'Java'}"><div class="alert alert-primary"><strong>Java:</strong> El rey de los lenguajes orientados a objetos</div></c:when>
  <c:when test="${param.lenguaje == 'C++'}"><div class="alert alert-primary"><strong>C++:</strong> Ideal para aprender</div></c:when>
  <c:when test="${param.lenguaje == 'Perl'}"><div class="alert alert-primary"><strong>Perl:</strong> Lenguaje de scripting muy potente</div></c:when>
  <c:otherwise><div class="alert alert-warning">No se seleccionó ninguno</div></c:otherwise>
</c:choose>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
