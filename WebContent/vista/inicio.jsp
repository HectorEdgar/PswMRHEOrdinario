<%@page import="psw.ControladorCuenta"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
<%@ include file="../jsp/librerias.jsp"%>
</head>
<body>
	<div class="container">
		<jsp:useBean id="cuentaBean" class="modelo.CuentaBean" scope="session" />
		<jsp:include page="encabezado.jsp">
			<jsp:param value="inicio" name="activo" />
		</jsp:include>
		<%
			ControladorCuenta.verificarCuenta(response, session);
		%>
		<div class="clearfix"></div>
		<div class="clearfix"></div>
		<div class="col-md-6">
			<h2>Bienvenido al restaurant IS6A</h2>
			<p>
				El restaurant IS6A ofrece distintos tipos de comidas: <br>
				Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus
				ullamcorper velit eu ipsum. Ut pellentesque, est in volutpat cursus,
				risus mi viverra augue, at pulvinar turpis leo sed orci. Donec
				ipsum. Curabitur felis dui, ultrices ut, sollicitudin vel, rutrum
				at, tellus.
			</p>
			<p>
				<a class="btn btn-default" href="#" role="button">Ver detalles »</a>
			</p>
		</div>
		<div class="col-md-6">
			<h2>Ubicación</h2>
			<p>
				El restaurant IS6A se encuentra ubicado en: <br> Lorem ipsum
				dolor sit amet, consectetuer adipiscing elit. Phasellus ullamcorper
				velit eu ipsum. Ut pellentesque, est in volutpat cursus, risus mi
				viverra augue, at pulvinar turpis leo sed orci. Donec ipsum.
				Curabitur felis dui, ultrices ut, sollicitudin vel, rutrum at,
				tellus.
			</p>
			<p>
				<a class="btn btn-default" href="#" role="button">Ver detalles »</a>
			</p>
		</div>
	</div>


</body>
</html>