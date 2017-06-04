package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CuentaJdbc;
import modelo.CuentaModelo;

/**
 * Servlet implementation class ControladorCuenta
 */
@WebServlet("/CuentaControlador")
public class CuentaControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CuentaControlador() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CuentaModelo cuenta = CuentaJdbc.seleccionarCuenta(request.getParameter("usuario"), request.getParameter("clave"));
		if(cuenta!=null){
			request.getSession().setAttribute("cuenta",cuenta);
			response.sendRedirect(request.getContextPath()+"/vista/inicio.jsp?");
		}else{
			response.sendRedirect(request.getContextPath()+"/vista/inicioSesion.jsp?mensaje=Usuario o contraseña incorrectos");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
