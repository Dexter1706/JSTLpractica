<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="titulo" value="Ejercicios JSTL"/>
<c:set var="esInicio" value="${true}"/>
<%@ include file="/WEB-INF/jspf/cabecera.jspf" %>

<section class="hero">
  <h1>Ejercicios JSTL</h1>
  <p class="mb-0">Pr&aacute;ctica de las librer&iacute;as <strong>core</strong>, <strong>fmt</strong> y <strong>sql</strong> de JSTL
     con los ejercicios de las dos gu&iacute;as de la materia. Elige un ejercicio para abrirlo.</p>
</section>

<%-- ===================== GUÍA 1 ===================== --%>
<section class="seccion-guia g1">
  <h2><span class="punto"></span> Guía 1</h2>
  <p class="autores">Guía JSTL · Paula Andrea Hurtado Vega &amp; James Ricardo Amaya Cárdenas</p>
  <div class="row g-3">
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/1/index.jsp"><span class="num">1</span><div><h3>Impresión de datos</h3><p><code>c:out</code> · cadena vs. expresión EL</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/2/index.jsp"><span class="num">2</span><div><h3>Guardar e imprimir datos</h3><p><code>c:set</code> · parámetros de un formulario</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/3/index.jsp"><span class="num">3</span><div><h3>Condicional</h3><p><code>c:if</code> + <code>c:redirect</code> · validación</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/4/index.jsp"><span class="num">4</span><div><h3>Condiciones múltiples</h3><p><code>c:choose</code> / <code>when</code> / <code>otherwise</code></p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/5/index.jsp"><span class="num">5</span><div><h3>Captura de excepciones</h3><p><code>c:catch</code></p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/6/index.jsp"><span class="num">6</span><div><h3>Ciclo forEach</h3><p><code>c:forEach</code> · <code>varStatus</code></p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/7/index.jsp"><span class="num">7</span><div><h3>Separar texto</h3><p><code>c:forTokens</code></p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/8/index.jsp"><span class="num">8</span><div><h3>Base de datos</h3><p><code>sql:update</code> · <code>sql:query</code> (MySQL)</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="ejercicios/9/index.jsp"><span class="num">9</span><div><h3>Internacionalización (extra)</h3><p><code>fmt:setLocale</code> · <code>fmt:message</code></p></div></a></div>
  </div>
</section>

<%-- ===================== GUÍA 2 ===================== --%>
<section class="seccion-guia g2">
  <h2><span class="punto"></span> Guía 2</h2>
  <p class="autores">Guía JSTL en Visual Studio Code · María Juanita Tamayo Marín</p>
  <div class="row g-3">
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/Eje1.jsp"><span class="num">1</span><div><h3>Primer ejercicio</h3><p><code>c:out</code> · Eje1.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/Datos.jsp"><span class="num">2</span><div><h3>Datos</h3><p>Capturar datos · Datos.jsp → ProcesarC.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/set1.jsp"><span class="num">3</span><div><h3>Uso del set</h3><p><code>c:set</code> y sus ámbitos · set1.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/Datosif.jsp"><span class="num">4</span><div><h3>Datos con if</h3><p><code>c:if</code> · Datosif.jsp → Procesarif.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/Lenguaje.jsp"><span class="num">5</span><div><h3>Lenguaje</h3><p><code>c:choose</code> · Lenguaje.jsp → ProcesarC2.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/catch.jsp"><span class="num">6</span><div><h3>Catch</h3><p><code>c:catch</code> · catch.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/foreach.jsp"><span class="num">7</span><div><h3>Foreach</h3><p><code>c:forEach</code> · foreach.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/ForTokens.jsp"><span class="num">8</span><div><h3>ForTokens</h3><p><code>c:forTokens</code> · ForTokens.jsp → ResultTokens.jsp</p></div></a></div>
    <div class="col-md-6 col-lg-4"><a class="ejercicio" href="guia2/Informacion.jsp"><span class="num">9</span><div><h3>Base de datos</h3><p><code>sql</code> · Informacion.jsp → Procesarinfo.jsp</p></div></a></div>
  </div>
</section>

<%@ include file="/WEB-INF/jspf/pie.jspf" %>
