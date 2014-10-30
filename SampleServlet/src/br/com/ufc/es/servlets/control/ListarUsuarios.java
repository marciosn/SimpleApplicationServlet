package br.com.ufc.es.servlets.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

/**
 * Servlet implementation class ListarUsuarios
 */
@WebServlet("/ListarUsuarios")
public class ListarUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Usuario> usuarios;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarUsuarios() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*UsuarioJPADAO usuarioDAO = new UsuarioJPADAO();
		List<Usuario> usuarios = usuarioDAO.find();
		for(Usuario u: usuarios){
			System.out.println("Nome: " + u.getNome());
			System.out.println("Senha: " + u.getSenha());
			System.out.println("Email: " + u.getNome());
			System.out.println("=========================");
		}
		usuarioDAO.close();
*/		
		String nome = request.getParameter("nome");
		System.out.println(nome);
		String json = null;
		json = new Gson().toJson(adicionarUsuariosNaLista(nome));
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
		
	}
	
	public Usuario adicionarUsuariosNaLista(String nome){
		Usuario usuario = null;
		usuarios = new ArrayList<Usuario>();
		usuarios.add(new Usuario("pedro", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("marcio", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("eduardo", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("jose", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("joao", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("karen", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("egila", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("paula", "123456", "usu@gmail.com"));
		usuarios.add(new Usuario("natalia", "123456", "usu@gmail.com"));
		
		for(Usuario u : usuarios){
			if(u.getNome().contains(nome)){
				usuario = new Usuario(u.getNome(), u.getSenha(), u.getEmail());
			}
		}
		return usuario;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
