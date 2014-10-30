package br.com.ufc.es.servlets.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

/**
 * Servlet implementation class CadastraUsuario
 */
@WebServlet("/CadastraUsuario")
public class CadastraUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String username, password, email;
	private Usuario usuario;
	private UsuarioJPADAO usuarioDAO = new UsuarioJPADAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastraUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username = request.getParameter("nome");
		password = request.getParameter("senha");
		email = request.getParameter("email");
		
		if(username != null && password != null && email != null){
			usuario = new Usuario(username, password, email);
			persistiUsurio(usuario);
			//response.sendRedirect("index.jsp");
		}
		/*else
			response.sendRedirect("login.jsp");*/
		
		
		System.out.println(username + " " + password + " " + email);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void persistiUsurio(Usuario usuario){
		try {
			usuarioDAO.beginTransaction();
			usuarioDAO.save(usuario);
			usuarioDAO.commit();
			
		} catch (Exception e) {
			usuarioDAO.rollback();
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally{
			usuarioDAO.close();
		}
		
	}

}
