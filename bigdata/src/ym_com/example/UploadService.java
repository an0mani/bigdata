package ym_com.example;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import ym_com.DAO.FileDAO;
@WebServlet("/UploadService")
public class UploadService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext context = getServletContext();
		String saveDir = context.getRealPath("upload");
		int maxSize =  30*1024*1024;//30MB
		String encoding = "euc-kr";
		
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		if(isMulti) {
			MultipartRequest multi = new MultipartRequest(request, saveDir,maxSize,encoding,new DefaultFileRenamePolicy() );//(request,saveDir 저장위치,maxSize 크기,encoding 한글처리되게 인코딩,new DefaultFileRenamePolicy() 동일한 이름일경우 파일이름 중복안되게 변경
			FileDAO dao = FileDAO.getInstance();
			
			String id = multi.getParameter("id");
			String title = multi.getParameter("title");
			String text = multi.getParameter("text");
			
			String file = multi.getFilesystemName("file");
			System.out.println(id);
			System.out.println(title);
			System.out.println(text);
			
			System.out.println(file);
			try {
				int cnt = dao.uploadFile(id, title, text, file);
				String moveUrl = "";
				if(cnt>0) {
					System.out.println("저장완료");
					moveUrl = "SelectService";
				}else {
					System.out.println("저장실패");
					moveUrl = "folder/usedArticle/ym_writing.jsp";
				}
				response.sendRedirect(moveUrl);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			System.out.println("일반전송 form입니다.");
		}
	
		
	}

}
