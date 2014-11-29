package br.com.ufc.es.servlets.control;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import br.com.ufc.es.servlets.dao.ImagemJPADAO;
import br.com.ufc.es.servlets.models.Imagem;

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
	private Part uploadedFile;
	private File file;
       
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
							file = new File(_uploadDir +"/"+ fileItem.getName());
							System.out.println("AbsolutePath Imagem "+file.getAbsolutePath());
							System.out.println("PATH DA IMAGEM "+file.getPath());
							
							criarImagem(file);
								
						} catch (Exception e) {
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
    
    private byte[] getBytesFromFile(File file) throws IOException {  
        InputStream is = null;
        byte[] ret;
        try {  
            long length = file.length();  
            if (length > MAXLENGTH) throw new IllegalArgumentException ("File is too big");  
            ret = new byte [(int) length];  
            is = new FileInputStream (file);  
            is.read (ret);  
        } finally {  
            if (is != null) try { is.close(); } catch (IOException ex) {}  
        }
        return ret;  
    }   
    
    
    public void criarImagem(File file){
    	imagem = new Imagem();
    	imagem.setNameImg(file.getName());
    	imagem.setImagem(file.getPath().getBytes());
    	
    	System.out.println("Nome da nome imagem "+imagem.getNameImg());
    	try {
			persistir(this.imagem);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
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
		process(request, response);
	}
	
	public void persistir( Imagem img) throws FileNotFoundException{
		System.out.println("iniciando a persistencia da imagem");
		imagemDAO.beginTransaction();
		imagemDAO.save(img);
		imagemDAO.commit();
	}

}































