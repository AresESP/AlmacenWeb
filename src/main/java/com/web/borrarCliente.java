package com.web;

import java.io.IOException;

import org.feliz.almacen.api.MotorApiServicioNegocio;
import org.feliz.almacen.api.modelo.Cliente;
import org.feliz.almacen.api.modelo.ICliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editarCliente
 */
public class borrarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final MotorApiServicioNegocio api = new MotorApiServicioNegocio();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public borrarCliente() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			MotorApiServicioNegocio api = new MotorApiServicioNegocio();
			String idCliente = request.getParameter("idCliente");
			if(idCliente != null) {
				if (api.borrarCliente(idCliente)) {
					response.sendRedirect(request.getContextPath()+"/clientes");
				}
				else {
					response.sendError(500);
				}
			}
			else {
				response.sendError(404);
			}			
		} catch (Exception e) {
			response.sendError(500);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
