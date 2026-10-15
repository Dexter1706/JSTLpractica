<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 6 · Uso de c:forEach"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:forEach"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<h3>Del 1 al 24 de 2 en 2</h3>
<div class="lista-iter mb-4">
<c:forEach begin="1" end="24" step="2" var="hora" varStatus="st">
  <p><c:out value="${hora}"/>
    <c:if test="${st.first}"><strong class="text-primary"> Estoy en la primera iteración</strong></c:if>
    <c:if test="${st.count == 5}"><strong class="text-primary"> Estoy en la iteración número 5</strong></c:if>
    <c:if test="${st.last}"><strong class="text-primary"> Última iteración</strong></c:if>
  </p>
</c:forEach>
</div>
<h3>Recorriendo una cadena separada por comas</h3>
<c:set var="lenguajes" value="Java,C++,Perl,Python"/>
<div class="d-flex flex-wrap gap-2"><c:forEach var="l" items="${lenguajes}"><span class="badge text-bg-secondary fs-6"><c:out value="${l}"/></span></c:forEach></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
