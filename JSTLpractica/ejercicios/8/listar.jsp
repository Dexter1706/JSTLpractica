<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<c:set var="titulo" value="Ejercicio 8 · Empleados registrados"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="sql:query"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<c:catch var="errBD">
  <sql:query var="result" dataSource="${empleados}">
    SELECT id, nombres, apellido1, apellido2, edad FROM empleados ORDER BY id
  </sql:query>
</c:catch>
<c:choose>
  <c:when test="${not empty errBD}">
    <div class="alert alert-danger mt-3"><strong>Error de base de datos:</strong> <c:out value="${errBD}"/></div>
  </c:when>
  <c:otherwise>
    <div class="table-responsive">
      <table class="table table-striped table-hover align-middle">
        <thead class="table-dark"><tr><th>Id</th><th>Nombre</th><th>Apellidos</th><th>Edad</th></tr></thead>
        <tbody>
          <c:forEach var="fila" items="${result.rows}">
            <tr>
              <td><c:out value="${fila.id}"/></td>
              <td><c:out value="${fila.nombres}"/></td>
              <td><c:out value="${fila.apellido1}"/> <c:out value="${fila.apellido2}"/></td>
              <td><c:out value="${fila.edad}"/></td>
            </tr>
          </c:forEach>
          <c:if test="${result.rowCount == 0}"><tr><td colspan="4" class="text-center">Sin registros</td></tr></c:if>
        </tbody>
      </table>
    </div>
  </c:otherwise>
</c:choose>
<div class="text-center mt-3"><a class="btn btn-primary rounded-pill" href="index.jsp"><i class="bi bi-person-plus"></i> Registrar otro</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
