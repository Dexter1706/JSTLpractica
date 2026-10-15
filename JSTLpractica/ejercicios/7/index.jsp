<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 7 · c:forTokens Demo"/>
<c:set var="guia" value="Guía 1"/>
<c:set var="etiqueta" value="c:forTokens"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<form action="procesar.jsp" method="post">
  <div class="mb-3"><label class="form-label" for="delimText">Introduzca un texto con delimitador</label><input class="form-control" id="delimText" name="delimText" placeholder="manzana,pera;uva"></div>
  <div class="mb-3"><label class="form-label" for="delim">Introduzca el delimitador</label><input class="form-control" id="delim" name="delim" placeholder=",;"></div>
  <div class="text-center mt-4"><button class="btn btn-primary rounded-pill px-4" type="submit"><i class="bi bi-scissors"></i> Tokenize</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
