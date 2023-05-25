package com.web;

import java.io.IOException;

import org.feliz.almacen.api.dao.IClienteDAO;
import org.feliz.almacen.api.dao.ProducerAbstractFactoryDAO;
import org.feliz.almacen.api.dao.mariadb.ClienteDAO;
import org.feliz.almacen.api.modelo.Cliente;
import org.feliz.almacen.api.modelo.ICliente;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NuevoUsuarioServlet
 */
public class NuevoUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NuevoUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		IClienteDAO clienteDAO = ProducerAbstractFactoryDAO.getFactoryDAO().getClienteDAO();
		ICliente cliente = 
				new Cliente(
						null,
						request.getParameter("nombre").toString(), 
						request.getParameter("apellido1").toString(),
						request.getParameter("apellido2").toString(), 
						request.getParameter("nif").toString(), 
						request.getParameter("telefono").toString()
						);
		cliente.setClienteId(String.valueOf(clienteDAO.save(cliente)));
		request.setAttribute("cliente", cliente);
		request.getRequestDispatcher("addCliente.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
