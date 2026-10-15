<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<fmt:requestEncoding value="UTF-8"/>

<%-- 1) Si llegan datos del formulario (POST), se guardan --%>
<c:if test="${pageContext.request.method == 'POST'}">
  <c:set var="nombres" value="${fn:trim(param.nombres)}"/>
  <c:set var="apellido1" value="${fn:trim(param.apellido1)}"/>
  <c:set var="apellido2" value="${fn:trim(param.apellido2)}"/>
  <c:catch var="errEdad"><fmt:parseNumber var="edad" value="${param.edad}" integerOnly="true"/></c:catch>
  <c:if test="${empty nombres or empty apellido1 or not empty errEdad or empty edad}">
    <c:redirect url="Informacion.jsp"><c:param name="error" value="Revisa los datos: nombre, primer apellido y edad (número) son obligatorios"/></c:redirect>
  </c:if>
  <c:catch var="errBD">
    <sql:update var="insertar" dataSource="${empleados}">
      insert into empleados (nombres, apellido1, apellido2, edad) values (?, ?, ?, ?)
      <sql:param value="${nombres}"/>
      <sql:param value="${apellido1}"/>
      <sql:param value="${apellido2}"/>
      <sql:param value="${edad}"/>
    </sql:update>
  </c:catch>
  <%-- Redirigir después de guardar evita que al recargar (F5) se inserte otra vez --%>
  <c:if test="${empty errBD}"><c:redirect url="Procesarinfo.jsp"/></c:if>
</c:if>

<%-- 2) Se listan todos los empleados --%>
<c:if test="${empty errBD}">
  <c:catch var="errBD">
    <sql:query var="result" dataSource="${empleados}">
      select id, nombres, apellido1, apellido2, edad from empleados order by id
    </sql:query>
  </c:catch>
</c:if>

<c:set var="titulo" value="Ejercicio 9 · Empleados registrados"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="sql:update / sql:query"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:choose>
  <c:when test="${not empty errBD}">
    <div class="alert alert-danger"><strong>Error de base de datos:</strong> <c:out value="${errBD}"/></div>
  </c:when>
  <c:otherwise>
    <div class="table-responsive">
      <table id="tablita" class="table table-success table-striped table-hover align-middle">
        <thead><tr><th>Id</th><th>Nombre</th><th>Apellidos</th><th>Edad</th></tr></thead>
        <tbody>
          <c:forEach var="fila" items="${result.rows}">
            <tr>
              <td><c:out value="${fila.id}"/></td>
              <td><c:out value="${fila.nombres}"/></td>
              <td><c:out value="${fila.apellido1}"/> <c:out value="${fila.apellido2}"/></td>
              <td><c:out value="${fila.edad}"/></td>
            </tr>
          </c:forEach>
          <c:if test="${result.rowCount == 0}"><tr><td colspan="4" class="text-center text-muted">Sin registros</td></tr></c:if>
        </tbody>
      </table>
    </div>
  </c:otherwise>
</c:choose>
<div class="text-center mt-3"><a href="Informacion.jsp" class="btn btn-outline-secondary rounded-pill"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
