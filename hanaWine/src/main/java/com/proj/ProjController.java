package com.proj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjController {

	@RequestMapping("/subpage1")
	public String root_test() throws Exception {
		return "subpage1";

	}

	@RequestMapping("/subpage1/{cate}")
	public String subCate(@PathVariable("cate") String cate) throws Exception {
		

		return "subpage1";

	}

	@RequestMapping("/productPage")
	public String productPage() {
		return "productPage";

	}
}
