package jy_com.example;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jy_com.DAO.FileDAO;

@WebServlet("/UploadService")
public class UploadService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String file = request.getParameter("file");
		
		System.out.println(writer + " " + title + " " + file);*/
		
		// �������� Form������ üũ.
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		
		ServletContext context = getServletContext();		// ������ context��� ��ü�� ���� ��.
		String saveDir = context.getRealPath("Upload");
		//System.out.println("������ : " + saveDir);
		int maxSize = 3*1024*1024;		// 3MB
		String encoding = "euc-kr";
		MultipartRequest multi = null;
		
		if (isMulti) {
			//(request, �����ϰ��� �ϴ� ��ġ(���ϰ��), ���� ������(�뷮), �ѱ�(���ڵ�), �̸��ߺ�������ü)
			multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			System.out.println("�������� form �Դϴ�.");
			FileDAO dao = new FileDAO();
			
			String name = multi.getParameter("name");
			String title = multi.getFilesystemName("title");
			String message = multi.getParameter("message");
			String date = multi.getParameter("date");
			String file = multi.getFilesystemName("file");
			
			try {
				int cnt = dao.uploadFile(name, title, message, date, file);
				String moveUrl = "";
				
				if (cnt > 0) {
					System.out.println("���� �Ϸ�");
					moveUrl = "SelectService";
				}else {
					System.out.println("���� ����");
					moveUrl = "Upload.html";
				}
				
				response.sendRedirect(moveUrl);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else {
			System.out.println("�Ϲ����� form �Դϴ�.");
		}

	}

}
