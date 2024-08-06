package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.proj.dao.CartDAO;
import com.proj.dto.CartDTO;
import com.proj.svc.Cartservice;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor


public class CartController {

	 @Autowired
	   private CartDAO cartDAO;
	 
	   private final Cartservice cartservice = new Cartservice();
	   @RequestMapping("/cart")
	   public String cartform() {
	      return "cart";
	   }
	   @RequestMapping("/cartProc")
	   public String cart(@ModelAttribute CartDTO cartDTO) {
		   cartservice.cartpage(cartDTO);
	      return "pay";

	   }
	   @RequestMapping("/pay")
	   public String getPay(HttpServletRequest req, Model model) {

	      try {
	         req.setCharacterEncoding("UTF-8");

	         String productinfo = req.getParameter("productinfo");
	         String price = req.getParameter("price");
	         int quantity = Integer.parseInt(req.getParameter("quantity"));
	         String deliver = req.getParameter("deliver");
	         String delPrice = req.getParameter("delPrice");
	         String total = req.getParameter("total");

	         System.out.println(productinfo);
	         System.out.println(price);
	         System.out.println(quantity);
	         System.out.println(deliver);
	         System.out.println(delPrice);
	         System.out.println(total);

	         cartDAO.cartpage(productinfo, price, quantity, deliver, delPrice, total);

	      } catch (Exception e) {
	         e.getMessage();
	      }

	      return "pay";
	   }

	   @RequestMapping("/payProc")
	   public String pay(@ModelAttribute CartDTO cartDTO) {
	      cartservice.Cartlist(cartDTO);
	      return "redirec:/payProc";
	   }

	   @RequestMapping("/payProcess")
	   public String payProc() {
	      return "/payProc";
	   }

	
	
}
