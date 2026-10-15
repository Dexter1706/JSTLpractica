<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 6 · Uso de etiqueta catch"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:catch"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<%-- Solo intentamos convertir cuando se pulsó uno de los botones --%>
<c:if test="${not empty param.boton}">
  <c:catch var="error01">
    <%
      int valor = Integer.parseInt(request.getParameter("parametro"));
      pageContext.setAttribute("valor", valor);
    %>
  </c:catch>
  <c:if test="${not empty error01}">
    <div class="alert alert-danger"><strong>Se produjo un error:</strong><br>${error01}</div>
  </c:if>
  <c:if test="${empty error01}">
    <div class="alert alert-info"><strong>Valor recibido: ${valor}</strong></div>
  </c:if>
</c:if>
<div class="d-grid gap-2 col-sm-8 mx-auto">
  <form role="form"><input type="hidden" name="boton" value="1"><input type="hidden" name="parametro" value="prueba"><button type="submit" class="btn btn-secondary w-100">Enviar 'prueba'</button></form>
  <form role="form"><input type="hidden" name="boton" value="1"><input type="hidden" name="parametro" value="1234"><button type="submit" class="btn btn-secondary w-100">Enviar '1234'</button></form>
  <form role="form"><input type="hidden" name="boton" value="1"><button type="submit" class="btn btn-secondary w-100">No enviar el parámetro</button></form>
</div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
