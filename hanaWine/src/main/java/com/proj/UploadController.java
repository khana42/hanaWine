package com.proj;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.dto.UploadDto;
import com.proj.svc.UploadSvcIf;

@Controller
public class UploadController {

	
	@Autowired
	private UploadSvcIf uploadSvcIf;
	@RequestMapping("/upload")
	public String upload() {
		return "Upload";
	}
	
	@RequestMapping(value="/insert", method = {RequestMethod.GET, RequestMethod.POST})
//	@PostMapping("/insert")
	public String upload(@RequestParam("wineKrName")String wineKrName,
			@RequestParam("wineEgName")String wineEgName,
			@RequestParam("typeOfWine")String typeOfWine,
			@RequestParam("nation")String nation,
			@RequestParam("region")String region,
			@RequestParam("grape")String grape,
			@RequestParam("price")double price,
			@RequestParam("alcohol")double alcohol,
			@RequestParam("sweetness")double sweetness,
			@RequestParam( "acidity")double acidity,
			@RequestParam("body")double body,
		    @RequestParam("goodsImg")MultipartFile  goodsImg,
			@RequestParam("recipe")MultipartFile  recipe,
			@RequestParam("goodsInfo")MultipartFile  goodsInfo,
			@RequestParam("foodIdx") List<Integer> foodIdxList,
			RedirectAttributes redirectAttributes) {
		try{
			
			String uploadDir = "/hanawine/src/main/resources/static/wineimg/";
			 String goodsImgName = UUID.randomUUID() + "_" + goodsImg.getOriginalFilename();
		        String recipeName = UUID.randomUUID() + "_" + recipe.getOriginalFilename();
		        String goodsInfoName = UUID.randomUUID() + "_" + goodsInfo.getOriginalFilename();
	        
		        saveFile(goodsImg, uploadDir + goodsImgName);
		        saveFile(recipe, uploadDir + recipeName);
		        saveFile(goodsInfo, uploadDir + goodsInfoName);
			UploadDto uploadDto = new UploadDto();
			uploadDto.setWineKrName(wineKrName);
			uploadDto.setWineEgName(wineEgName);
			uploadDto.setTypeOfWine(typeOfWine);
			uploadDto.setNation(nation);
			uploadDto.setRegion(region);
			uploadDto.setGrape(grape);
			uploadDto.setPrice(price);
			uploadDto.setAlcohol(alcohol);
			uploadDto.setSweetness(sweetness);
			uploadDto.setAcidity(acidity);
			uploadDto.setBody(body);
			uploadDto.setGoodsImg(goodsImgName);
			uploadDto.setRecipe(recipeName);
			uploadDto.setGoodsInfo(goodsInfoName);
			
			uploadSvcIf.upload(uploadDto);
			for (int foodIdx : foodIdxList) {
	            uploadSvcIf.uploadWineAndFood(uploadDto, foodIdx); // foodIdx도 전달
	        }
			redirectAttributes.addFlashAttribute("message", "등록이 완료 되었습니다.");
			return "redirect:/";
		}catch(Exception e) {
			redirectAttributes.addFlashAttribute("error",e.getMessage());
			return "redirect:/insert";
		}
}
	private void saveFile(MultipartFile file, String filePath) throws IOException {
	    try (InputStream inputStream = file.getInputStream();
	         FileOutputStream outputStream = new FileOutputStream(new File(filePath))) {
	        byte[] buffer = new byte[1024];
	        int bytesRead;
	        while ((bytesRead = inputStream.read(buffer)) != -1) {
	            outputStream.write(buffer, 0, bytesRead);
	        }
	
}
	}}