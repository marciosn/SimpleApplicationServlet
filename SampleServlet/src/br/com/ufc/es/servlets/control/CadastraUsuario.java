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
public class CadastraUsuario extends HttpServlet {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		username = request.getParameter("nome");
		password = request.getParameter("senha");
		email = request.getParameter("email");
		
		if(username == "" || password == "" || email == ""){
			request.setAttribute("erro", "Os campos s�o obrigat�rios!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("insereUsuario.jsp");
			dispatcher.forward(request, response);
		}else{
			usuario = new Usuario(username, password, email);
			persistiUsurio(usuario);
			response.sendRedirect("ListaPessoas.jsp");
		}
		
		System.out.println(username + " " + password + " " + email);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dados = ArrayToJSON(listarDoBanco());
		System.out.println(dados);
		response.setContentType("application/json"); 
		response.setCharacterEncoding("utf-8"); 
		response.getWriter().write(dados);
		//response.sendRedirect("ListaPessoas.jsp");
	}
	
	public String ArrayToJSON(List<Usuario> usu){
		String usuarios;
		Gson gson = new Gson();
		usuarios = gson.toJson(usu);
		return usuarios;
		
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
	public List<Usuario> listarDoBanco(){
		usus = usuarioDAO.find();
		return usus;
		
	}

}
