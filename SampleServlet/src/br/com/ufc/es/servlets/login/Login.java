package br.com.ufc.es.servlets.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import br.com.ufc.es.servlets.models.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VerificaUsuario verifica;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		
		if(username == "" || password == ""){
			
			request.setAttribute("erro", "Os campos são obrigatórios!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
			
		}else{
			
			verifica = new VerificaUsuario();
			
			Usuario u = new Usuario(username, password);
			
			if(verifica.valida(u)){
				System.out.println("Login valido");
				
				if(session == null){
					session = request.getSession(true);
				}
				
				session.setAttribute("username", username);
				session.setMaxInactiveInterval(30*60);
				
				Cookie userName = new Cookie("username", username);
				userName.setMaxAge(30*60);
				response.addCookie(userName);
				
				response.sendRedirect("index.jsp");
				request.setAttribute("username", username);
				getServletContext().setAttribute("username", username);
			}else{
				
				if(session != null){
					session.invalidate();
				}
				
				response.sendRedirect("login.jsp");
				System.out.println("Usuario e senha incorretas");
			}
		}
		
		System.out.println(username);
		System.out.println(password);
	}

}
