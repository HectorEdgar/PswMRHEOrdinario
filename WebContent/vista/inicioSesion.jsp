<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iniciar Sesión</title>
<%-- <%@ include "librerias.jsp"%> --%>
<jsp:include page="../utilerias/librerias.jsp"></jsp:include>
</head>
<body>

	<div class="container">
		<%
			modelo.CuentaBean bean = (modelo.CuentaBean) session.getAttribute("cuentaBean");
			if (bean != null) {
				if (!bean.getPassword().equals("") && !bean.getUsuario().equals("")) {
					bean.cerrarSesion();
					session.removeAttribute("cuentaBean");

				}
			}
		%>
		<%@page import="psw.ControladorCuenta"%>
		<jsp:include page="encabezado.jsp">
			<jsp:param value="inicio" name="activo" />
		</jsp:include>
		<!-- 		<div class="clearfix">&nbsp</div> -->
		<!-- 		<div class="clearfix">&nbsp</div> -->
		<!-- 		<div class="clearfix">&nbsp</div> -->

		<jsp:useBean id="cuentaBean" class="modelo.CuentaBean" scope="session" />


		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Inicio de Sesión</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px"
						class="">
						<a href="#">¿Olvidaste tu contraseña?</a>
					</div>
				</div>
				<div class="panel-body">
					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>
					<form
						action="<%=request.getContextPath() + "/vista/inicioSesion.jsp"%>"
						class="form-horizontal">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" id="usuario" name="usuario"
								placeholder="Usuario">
						</div>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="******">
						</div>

						<div class="form-group text-center">

							<div class="">
								<input type="submit" value="Iniciar Sesión"
									class="btn btn-primary">
							</div>
						</div>

					</form>
					<div class="col-md-12 footer">
						<br> ¿Aun no tienes una cuenta? <a class=""
							href="<%=request.getContextPath()+"/registrarUsuario"%>">Registrate</a>

					</div>

				</div>
			</div>
		</div>
</div>
		<%
			String usuario = (request.getParameter("usuario")) != null ? request.getParameter("usuario") : "";
			String password = (request.getParameter("password")) != null ? request.getParameter("password") : "";

			if (!usuario.equals("") && !password.equals("")) {
				if (usuario.equals("root") && password.equals("root")) {
		%>

		<jsp:setProperty property="usuario" name="cuentaBean"
			value="<%=usuario%>" />
		<jsp:setProperty property="password" name="cuentaBean"
			value="<%=password%>" />


		<jsp:forward page="inicio.jsp">
			<jsp:param value="inicio" name="activo" />
		</jsp:forward>
		<%
			}
			}
		%>
	
</body>
</html>