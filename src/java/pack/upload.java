/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ibn
 */
public class  upload extends HttpServlet {
private static final String DESTINATION_DIR_PATH = "file";
    private File tmdDir;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try {
        //  HttpSession session = request.getSession(true);
            
              DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        /*
         *Set the size threshold, above which content will be stored on disk.
         */
        fileItemFactory.setSizeThreshold(1 * 1024 * 1024); //1 MB
		/*
         * Set the temporary directory to store the uploaded files of size above threshold.
         */
        fileItemFactory.setRepository(tmdDir);

        ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
        Connection con = null;
        PreparedStatement pstm = null;
        FileInputStream fis = null;
        long size = 0;
        try {
            /*
             * Parse the request
             */
            Random r = new Random();
            int i = r.nextInt(1000-500)+500;
            String k = i+"";
            HttpSession session = request.getSession(true);
                session.setAttribute("nn", k ); 
            
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/querying_value", "root", "root");
            List items = uploadHandler.parseRequest(request);
            Iterator itr = items.iterator();
            String sql = "insert into admin (file,name,id)values(?,?,?)";
            pstm = con.prepareStatement(sql);
          //  while (itr.hasNext()) {

                FileItem item = (FileItem) itr.next();
                            System.out.println("getD "+item.getName());
                pstm.setBinaryStream(1,item.getInputStream());
                pstm.setString(2, item.getName());
                pstm.setString(3, k);
                 pstm.execute();
                 
             System.out.println("Values inserted");
             
              response.sendRedirect("adminpage.jsp");

               // System.out.println(">>>>>"+sql);
                
        //    }
                     //   response.sendRedirect("url.jsp?msg=Uploaded Successfully");

        } catch (Exception ex) {
            ex.printStackTrace();
           // response.sendRedirect("forfile.jsp?msg=Check the field");
        }
            
            
            
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
