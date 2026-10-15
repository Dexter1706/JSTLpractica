<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicio 8 · c:forTokens Demo"/>
<c:set var="guia" value="Guía 2"/>
<c:set var="etiqueta" value="c:forTokens"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>
<form role="form" name="forTokensForm" action="ResultTokens.jsp" method="post">
  <div class="mb-3"><label class="form-label" for="delimText">Enter some text with delimiter</label><input type="text" class="form-control" name="delimText" id="delimText" placeholder="uno-dos-tres"></div>
  <div class="mb-3"><label class="form-label" for="delim">Enter the delimiter</label><input type="text" class="form-control" id="delim" name="delim" placeholder="-"></div>
  <div class="text-center mt-4"><button type="submit" class="btn btn-primary rounded-pill px-4"><i class="bi bi-scissors"></i> Tokenize</button></div>
</form>
<%@ include file="/WEB-INF/jspf/pie.jspf" %>
