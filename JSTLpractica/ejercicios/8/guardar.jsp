<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<fmt:requestEncoding value="UTF-8"/>
<c:if test="${empty fn:trim(param.nombres) or empty fn:trim(param.apellido1)}">
  <c:redirect url="index.jsp"><c:param name="error" value="Nombre y primer apellido son obligatorios"/></c:redirect>
</c:if>
<c:catch var="errEdad"><fmt:parseNumber var="edadNum" value="${param.edad}" integerOnly="true"/></c:catch>
<c:if test="${not empty errEdad or empty edadNum}">
  <c:redirect url="index.jsp"><c:param name="error" value="La edad debe ser un número"/></c:redirect>
</c:if>
<c:catch var="errBD">
  <%-- sql:param evita comillas rotas e inyección SQL --%>
  <sql:update dataSource="${empleados}">
    INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES (?, ?, ?, ?)
    <sql:param value="${param.nombres}"/>
    <sql:param value="${param.apellido1}"/>
    <sql:param value="${param.apellido2}"/>
    <sql:param value="${edadNum}"/>
  </sql:update>
</c:catch>
<%-- Redirigir tras guardar evita que F5 inserte el registro otra vez --%>
<c:if test="${empty errBD}"><c:redirect url="listar.jsp"/></c:if>
<c:set var="titulo" value="Ejercicio 8 · Error al guardar"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="sql:update"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<div class="alert alert-danger"><strong>No se pudo guardar:</strong> <c:out value="${errBD}"/></div>
<div class="text-center mt-4"><a class="btn btn-outline-secondary rounded-pill" href="index.jsp"><i class="bi bi-arrow-left"></i> Atrás</a></div>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
