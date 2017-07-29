package com.java.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.java.entity.Picture;
import com.java.service.PictureService;
import com.java.utils.HttpsUtil;

/**
 *图片相册主要Controller
 * @author lailai
 *
 */
@Controller
public class MainController {

	Logger logger=LoggerFactory.getLogger(this.getClass());
	@Autowired
	private PictureService pictureService;
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public String index(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
		List<Picture> pictures=pictureService.getAllPicture();
		if(pictures!=null && pictures.size()>0){
			model.addAttribute("pictures", pictures);
		}
		return "index";
	}
	
	@RequestMapping(value="/uploadPicture.html",method=RequestMethod.GET)
	public String uploadHtml(HttpServletRequest request,HttpServletResponse response) throws Exception{
		return "upload";
	}
	/**
	 * 上传图片
	 * @param file
	 * @param content
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/upload.action",method=RequestMethod.POST)
	public void uploadPicture(@RequestParam("file") CommonsMultipartFile file,@RequestParam("content") String content,
			HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
		try {
			HttpSession session=request.getSession();
			String path=(HttpsUtil.getConfig("upload")).replace("/", File.separator);
			String abpath=session.getServletContext().getRealPath(path);
			String picname=new Date().getTime()+".jpg";
			String aburl=(abpath+"/img/"+picname).replace("/", File.separator);
			if(!file.isEmpty()){
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(aburl));
			}else if(content==null){
				content="";
			}
			int num=pictureService.InsertPicture(request.getContextPath()+"/upload/img/"+picname, content);
			if(num==1){
				/*List<Picture> pictures=pictureService.getAllPicture();
				if(pictures!=null && pictures.size()>0){
					model.addAttribute("pictures", pictures);
				}*/
				response.sendRedirect(request.getContextPath()+"/index.html");
			}else{
				response.sendRedirect(request.getContextPath()+"/index.html");
			}
		} catch (Exception e) {
			//e.printStackTrace();
			logger.error(e.getMessage(), e);
			request.getRequestDispatcher("/404.html").forward(request, response);
		}
	}
	/**
	 * 返回404页面
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/404.html",method=RequestMethod.GET)
	public String Html404(HttpServletRequest request,HttpServletResponse response,Model model) throws Exception{
		return "404";
	}
}
