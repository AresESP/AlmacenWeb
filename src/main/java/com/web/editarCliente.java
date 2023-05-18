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
public class editarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final MotorApiServicioNegocio api = new MotorApiServicioNegocio();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editarCliente() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String clienteId = request.getParameter("idCliente");
			//TODO Cambiar MotorASN para que getClientesById devuelva 1 cliente o nulo
			ICliente cliente = api.getClientesById(clienteId).get(0);
			if (cliente == null) {
				response.sendError(505);
			}
			else {
				request.setAttribute("cliente", cliente);
				request.getRequestDispatcher("/WEB-INF/updateCliente.jsp").forward(request, response);
			}
		}
		catch(NumberFormatException e){
			response.sendError(569, "Ningún id como parámetro");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ICliente cliente = new Cliente(
				request.getParameter("idCliente"),
				request.getParameter("nombre"),
				request.getParameter("apellido1"),
				request.getParameter("apellido2"),
				request.getParameter("nif"),
				request.getParameter("telefono")				
				);
		if(api.updateCliente(cliente)) {
			request.setAttribute("clienteActualizado", cliente);
			request.getRequestDispatcher("/WEB-INF/updateCliente.jsp").forward(request, response);
		}
		else {
			response.sendError(509);
		}
		
	}

}
