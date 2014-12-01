package br.com.ufc.es.servlets.control;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

import br.com.ufc.es.servlets.dao.ImagemJPADAO;
import br.com.ufc.es.servlets.models.Imagem;
import br.com.ufc.es.servlets.persistencia.PersistirArquivoBanco;
import br.com.ufc.es.servlets.persistencia.RecuperarArquivoBanco;

/**
 * Servlet implementation class ControladorImagens
 */
@WebServlet("/ControladorImagens")
public class ControladorImagens extends HttpServlet {
	private static final int MAXLENGTH = 100000000;
	private static final long serialVersionUID = 1L;
	private List<Imagem> imagens;
	private ImagemJPADAO imagemDAO;
	private Imagem imagem;
	private File file;
	private PersistirArquivoBanco persistir = new PersistirArquivoBanco();
	private RecuperarArquivoBanco recuperar = new RecuperarArquivoBanco();
	String img;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorImagens() {
        super();
        imagens = new ArrayList<Imagem>();
        
    }
    
    private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(true);
    	
    	List arquivos = (List) session.getAttribute("arquivos");
    	if (arquivos == null) {
    		arquivos = new ArrayList();
    	}
    	
    	List fileItemsList = null;
    	float filesize = 0;
    	String _fileLink;
    	String _fileName = null;
    	String _uploadDir = getServletContext().getRealPath("/upload/");
    	//Change upload with your directory
    	
    	try {
    	 if (ServletFileUpload.isMultipartContent(request)) {
    	 ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
    	       try {
    	        fileItemsList = servletFileUpload.parseRequest(request);
    	       } catch (FileUploadException ex) {
    	        Logger.getLogger(ControladorImagens.class.getName()).log(Level.SEVERE, null, ex);
    	        //Change above line replace FileUploadExample with your file name
    	           }
    	           String optionalFileName = "";
    	           FileItem fileItem = null;

    	           Iterator it = fileItemsList.iterator();
				while (it.hasNext()) {
					FileItem fileItemTemp = (FileItem) it.next();
					if (fileItemTemp.isFormField()) {
						if (fileItemTemp.getFieldName().equals("filename")) {
							optionalFileName = fileItemTemp.getString();
						}
						
					} else {
						fileItem = fileItemTemp;
						
						try {
							 String itemName = fileItemTemp.getName();
	                         itemName = FilenameUtils.getName(itemName);
	                         File savedFile = new File(new File(_uploadDir + "/"), itemName);
	                         fileItemTemp.write(savedFile);
	                         
	                         System.out.println("PATH DA IMAGEM "+savedFile.getPath());
	                         
							if(persistir.insertFile(savedFile)){
								System.out.println("SUCESSO !!!!!");
							}else
								System.out.println("FALHAAAAAA !!!!!");
								
						} catch (Exception e) {
							e.printStackTrace();
							System.out.println(e.getMessage());
						}
						
						arquivos.add(fileItem);
					}
				}
							
					System.out.println("quantidade de arquivos: " + arquivos.size());
					session.setAttribute("arquivos", arquivos);
								
    	      }
    	        } catch (Exception e) {
    	            e.printStackTrace();
    	        }
    	
    	
    	RequestDispatcher dispatcher = request.getRequestDispatcher("upload.jsp");
		dispatcher.forward(request, response);
    	
    }
    
    public void criarImagem(File file){
    	imagem = new Imagem();
    	imagem.setNameImg(file.getName());
    	imagem.setImagem(file.getPath().getBytes());
    	
    	System.out.println("Nome da nome imagem "+imagem.getNameImg());
    	try {
			persistir(this.imagem);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} 
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idImagem = request.getParameter("imagem");
		
		if(idImagem != ""){
		
		int id = Integer.parseInt(idImagem);
		
		System.out.println("ID " + id);
		
		try {
			File arquivo = recuperar.getFile(id);
			if(!arquivo.equals(null)){
				System.out.println("Nome do arquivo "+arquivo.getName());
				System.out.println("Path do arquivo "+arquivo.getPath());
				
				img = arquivo.getPath();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("img", img);
		RequestDispatcher dispatcher = request.getRequestDispatcher("upload.jsp");
		dispatcher.forward(request, response);
		
	}else{
		request.setAttribute("erro", "O campo É obrigatório!");
		RequestDispatcher dispatcher = request.getRequestDispatcher("upload.jsp");
		dispatcher.forward(request, response);
	}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	public void persistir( Imagem img) throws FileNotFoundException{
		System.out.println("iniciando a persistencia da imagem");
		imagemDAO.beginTransaction();
		imagemDAO.save(img);
		imagemDAO.commit();
	}
	
}































