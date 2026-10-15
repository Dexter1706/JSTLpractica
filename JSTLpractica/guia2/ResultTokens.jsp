<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="titulo" value="Ejercicio 8 · Your Tokens"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:forTokens"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:choose>
  <c:when test="${empty param.delimText or empty param.delim}">
    <div class="alert alert-warning">Escribe un texto y un delimitador.</div>
  </c:when>
  <c:otherwise>
    <div class="lista-iter text-center">
      <c:forTokens items="${param.delimText}" delims="${param.delim}" var="myToken">
        <p><c:out value="${myToken}"/></p>
      </c:forTokens>
    </div>
  </c:otherwise>
</c:choose>
<div class="text-center mt-4"><a href="ForTokens.jsp" class="btn btn-outline-secondary rounded-pill"><i class="bi bi-arrow-left"></i> Regresar</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
