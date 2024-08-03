package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@PostMapping("/insert")
	public String upload(@RequestParam(value = "wineKrName")String wineKrName,
			@RequestParam(value = "wineEgName")String wineEgName,
			@RequestParam(value = "typeOfWine")String typeOfWine,
			@RequestParam(value = "nation")String nation,
			@RequestParam(value = "region")String region,
			@RequestParam(value = "grape")String grape,
			@RequestParam(value = "price")double price,
			@RequestParam(value = "alcohol")double alcohol,
			@RequestParam(value = "sweetness")double sweetness,
			@RequestParam(value = "acidity")double acidity,
			@RequestParam(value = "body")double body,
		    @RequestParam(value = "goodsImg")String goodsImg,
			@RequestParam(value = "recipe")String recipe,
			@RequestParam(value = "goodsInfo")String goodsInfo,
			RedirectAttributes redirectAttributes) {
		try{
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
			uploadDto.setGoodsImg(goodsImg);
			uploadDto.setRecipe(recipe);
			uploadDto.setGoodsInfo(goodsInfo);
			
			uploadSvcIf.upload(uploadDto);
			redirectAttributes.addFlashAttribute("message", "등록이 완료 되었습니다.");
			return "redirect:/";
		}catch(Exception e) {
			redirectAttributes.addFlashAttribute("error",e.getMessage());
			return "redirect:/insert";
		}
}
}