<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 5 · Captura de excepciones"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:catch"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<p class="text-muted">Pulsa un botón: el valor se convierte a entero dentro de <code>c:catch</code>. Si falla, la página no se cae y se muestra el error.</p>
<c:if test="${param.enviado == '1'}">
  <c:catch var="error01">
    <%
      // variable LOCAL (no <%! ... %>, que sería compartida entre todos los usuarios)
      int valor = Integer.parseInt(request.getParameter("parametro"));
      pageContext.setAttribute("valor", valor);
    %>
  </c:catch>
  <c:choose>
    <c:when test="${not empty error01}">
      <div class="alert alert-danger"><strong>Se produjo un error:</strong> <c:out value="${error01}"/></div>
    </c:when>
    <c:otherwise>
      <div class="alert alert-info"><strong>Valor recibido: <c:out value="${valor}"/></strong></div>
    </c:otherwise>
  </c:choose>
</c:if>
<div class="d-flex flex-wrap gap-2 justify-content-center mt-3">
  <form><input type="hidden" name="enviado" value="1"><input type="hidden" name="parametro" value="prueba"><button class="btn btn-outline-dark rounded-pill">Enviar 'prueba'</button></form>
  <form><input type="hidden" name="enviado" value="1"><input type="hidden" name="parametro" value="1234"><button class="btn btn-outline-success rounded-pill">Enviar '1234'</button></form>
  <form><input type="hidden" name="enviado" value="1"><button class="btn btn-outline-danger rounded-pill">No enviar el parámetro</button></form>
</div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
