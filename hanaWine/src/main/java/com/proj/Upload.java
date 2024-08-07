package com.proj;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proj.dto.TestDto;
import com.proj.dto.UploadDto;
import com.proj.svc.UploadSvcIf;

@Controller
public class Upload {
	@Autowired
	private UploadSvcIf uploadSvcIf;

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	String upload() {
		return "Upload";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(@RequestParam(value = "wineKrName") String wineKrName,
			@RequestParam(value = "wineEgName") String wineEgName,
			@RequestParam(value = "typeOfWine") String typeOfWine, @RequestParam(value = "nation") String nation,
			@RequestParam(value = "region") String region, @RequestParam(value = "grape") String grape,
			@RequestParam(value = "price") double price, @RequestParam(value = "alcohol") double alcohol,
			@RequestParam(value = "sweetness") double sweetness, @RequestParam(value = "acidity") double acidity,
			@RequestParam(value = "body") double body, @RequestParam(value = "goodsImg") MultipartFile goodsImg,
			@RequestParam(value = "recipe") MultipartFile recipe,
			@RequestParam(value = "goodsInfo") MultipartFile goodsInfo,
			@RequestParam(value = "foodIdx") List<Integer> foodIdxList, Model model) {

		try {
		
			String uploadDir = "C:\\Users/us000/OneDrive/바탕 화면/hanaWine/hanaWine/hanaWine/src/main/resources/static/wineimg/";
			String goodsImgName = UUID.randomUUID() + "_" + goodsImg.getOriginalFilename();
			String recipeName = UUID.randomUUID() + "_" + goodsImg.getOriginalFilename();
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
			model.addAttribute("message", "등록이 완료 되었습니다.");

			return "Upload";
		} catch (Exception e) {
			 model.addAttribute("error", e.getMessage());
			return "error";
		}
	}

	private void saveFile(MultipartFile file, String filePath) throws IOException {
	    if (file.isEmpty()) {
	        throw new IOException("업로드할 파일이 비어 있습니다.");
	    }

	    File targetFile = new File(filePath);
	    
	    try (InputStream inputStream = file.getInputStream();
	         FileOutputStream outputStream = new FileOutputStream(targetFile)) {
	        byte[] buffer = new byte[1024];
	        int bytesRead;
	        while ((bytesRead = inputStream.read(buffer)) != -1) {
	            outputStream.write(buffer, 0, bytesRead);
	        }
	    } catch (FileNotFoundException e) {
	        throw new IOException("파일을 저장할 수 없습니다: " + filePath, e);
	    } catch (IOException e) {
	        throw new IOException("파일 저장 중 오류가 발생했습니다: " + filePath, e);
	    }
	}
}