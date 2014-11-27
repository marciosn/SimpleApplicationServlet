package br.com.ufc.es.servlets.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

/**
 * Servlet implementation class CadastraUsuario
 */
@WebServlet("/CadastraUsuario")
public class CadastraUsuario extends HttpServlet implements Runnable{
	private static final long serialVersionUID = 1L;
	private String username, password, email;
	private Usuario usuario;
	private UsuarioJPADAO usuarioDAO = new UsuarioJPADAO();
	private List<Usuario> usus = new ArrayList<Usuario>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastraUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		username = request.getParameter("nome");
		password = request.getParameter("senha");
		email = request.getParameter("email");
		
		if(username == "" || password == "" || email == ""){
			request.setAttribute("erro", "Os campos são obrigatórios!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("insereUsuario.jsp");
			dispatcher.forward(request, response);
		}else{
			usuario = new Usuario(username, password, email);
			run();
			RequestDispatcher dispatcher = request.getRequestDispatcher("ListaPessoas.jsp");
			dispatcher.forward(request, response);
		}
		
		System.out.println(username + " " + password + " " + email);
		
	}

	@Override
	public void run() {
		try {
			usuarioDAO.beginTransaction();
			usuarioDAO.save(this.usuario);
			usuarioDAO.commit();
			
		} catch (Exception e) {
			usuarioDAO.rollback();
			e.printStackTrace();
			System.out.println("Exception durante persistencia "+e.getMessage());
		}
		
	}

}
