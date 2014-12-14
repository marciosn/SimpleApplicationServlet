package br.com.ufc.es.servlets.login;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class LoginFilter implements Filter{
	private ServletContext context;
	private Date date;

	@Override
	public void destroy() {
	}

	@SuppressWarnings("deprecation")
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,	FilterChain chain) throws IOException, ServletException {
		 HttpServletRequest req = (HttpServletRequest) request;
	     HttpServletResponse res = (HttpServletResponse) response;
	     
	     date = new Date();
	     
	     String path = req.getRequestURI();
	     StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(date.getHours());
		stringBuilder.append(":");
		stringBuilder.append(date.getMinutes());
		stringBuilder.append("--> LOG SampleServlet :: URI = ");
		stringBuilder.append(path);
		System.out.println(stringBuilder.toString());

	     HttpSession session = req.getSession(false);
	     
			if(session == null && !(path.endsWith("jsp") || path.contains("/SampleServlet/resources/"))){
				System.out.println("Accesso nao autorizado");
				res.sendRedirect("login.jsp");	
				}else{
					chain.doFilter(request, response);
				}
		}

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.context = config.getServletContext();
		this.context.log("Autenticação inicializada...");
		System.out.println("Filter inicializado...");
	}

}
