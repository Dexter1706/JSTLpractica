<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 7 · Uso de c:forEach"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:forEach"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="lista-iter text-center">
<c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
  <p>
    <c:out value="${hour}"/>
    <c:if test="${status.first}"><strong class="text-primary"> Estoy en uno</strong></c:if>
    <c:if test="${status.count == 5}"><strong class="text-primary"> Estoy en la iteración número 5</strong></c:if>
  </p>
</c:forEach>
</div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
