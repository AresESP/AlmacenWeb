package com.web;

import java.io.IOException;
import java.util.List;

import org.feliz.almacen.api.MotorApiServicioNegocio;
import org.feliz.almacen.api.modelo.ICliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindAllClientesServlet
 */
public class FindAllClientesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindAllClientesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MotorApiServicioNegocio api = new MotorApiServicioNegocio();
		List<ICliente> clientes = api.listaClientes();
		if (clientes != null && clientes.size()>0) {
			request.setAttribute("clientes", clientes);
			request.getRequestDispatcher("findAllClientes.jsp").forward(request, response);			
		}
		else {
			response.sendError(503, "El servidor no ha devuelto ningún cliente");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
