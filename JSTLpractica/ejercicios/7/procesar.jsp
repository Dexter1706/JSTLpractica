<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="titulo" value="Ejercicio 7 · Tus tokens"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:forTokens"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:choose>
  <c:when test="${empty param.delimText or empty param.delim}">
    <div class="alert alert-warning">Debes escribir un texto y al menos un delimitador.</div>
  </c:when>
  <c:otherwise>
    <div class="lista-iter">
    <c:forTokens items="${param.delimText}" delims="${param.delim}" var="tok" varStatus="st">
      <p><span class="badge text-bg-primary me-2"><c:out value="${st.count}"/></span><c:out value="${tok}"/></p>
    </c:forTokens>
    </div>
  </c:otherwise>
</c:choose>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Regresar</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
