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

import br.com.ufc.es.servlets.models.Cliente;

/**
 * Servlet implementation class Formulario
 */
@WebServlet("/Formulario")
public class Formulario extends HttpServlet implements Runnable{
	private static final long serialVersionUID = 1L;
	private Cliente cliente;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Formulario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String nascimento = request.getParameter("data");
		String nomePAI = request.getParameter("nomePai");
		String nomeMAE = request.getParameter("nomeMae");
		String endereco = request.getParameter("endereco");
		String bairro = request.getParameter("bairro");
		String estado = request.getParameter("estado");
		String complemento = request.getParameter("complemento");
		String cep = request.getParameter("cep");
		String cpf = request.getParameter("cpf");
		
		if(nome == "" || email == ""){
			request.setAttribute("erro", "Os campos são obrigatórios!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("formulario.jsp");
			dispatcher.forward(request, response);
			
		}else{

			System.out.println(nome);
			System.out.println(email);
			System.out.println(nascimento);
			System.out.println(nomePAI);
			System.out.println(nomeMAE);
			System.out.println(endereco);
			System.out.println(bairro);
			System.out.println(estado);
			System.out.println(complemento);
			System.out.println(cep);
			System.out.println(cpf);
			
			request.setAttribute("sucesso", "Sucesso!!!!!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("formulario.jsp");
			dispatcher.forward(request, response);
		}
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		
	}

}
