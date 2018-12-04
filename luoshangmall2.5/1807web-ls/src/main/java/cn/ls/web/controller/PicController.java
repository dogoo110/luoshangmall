package cn.ls.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.ls.common.vo.PicUploadResult;
import cn.ls.web.service.PicService;

@Controller
public class PicController {
	@Autowired
	private PicService picService;
	//上传图片的逻辑
	@RequestMapping("/pic/upload")
	@ResponseBody
	public PicUploadResult uploadPic(MultipartFile uploadFile){
		PicUploadResult result=picService.uploadPic(uploadFile);
		return result;
	}
}









