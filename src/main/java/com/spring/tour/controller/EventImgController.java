package com.spring.tour.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventImgController {
    
    
    @RequestMapping(value="/upload", method=RequestMethod.GET)
    public String fileupload() {
        return ".auth.EventChange.admin";
    }
    
    @RequestMapping(value="/upload", method=RequestMethod.POST)
    public ModelAndView uploadForm(MultipartFile file, ModelAndView mv,HttpServletRequest req) {
    	String uploadPath = req.getSession().getServletContext().getRealPath("/resources/mainimg");
    	System.out.println(uploadPath);
        String fileName = "이벤트1.png";
        File target = new File(uploadPath, fileName);
        
        //경로 생성
        if ( ! new File(uploadPath).exists()) {
            new File(uploadPath).mkdirs();
        }
        //파일 복사
        try {
            FileCopyUtils.copy(file.getBytes(), target);
            mv.addObject("file", file);
        } catch(Exception e) {
            e.printStackTrace();
            mv.addObject("file", "error");
        }
        //View 위치 설정
        mv.setViewName(".auth.EventChange2.admin");
        return mv;
    }
}