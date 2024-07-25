package com.proj;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;
import com.proj.dto.MembrTestDto;
import com.proj.svc.MemberTestSvcIf;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class MemberTestController {
@Autowired
private MemberTestSvcIf memberTestSvcIf;
@RequestMapping("/login")
public String log() {
	return "login";
}


@RequestMapping(value="/userlogin" , method = RequestMethod.POST)

public String loging(HttpServletRequest request) {

String uid = request.getParameter("uid");
request.setAttribute("daoMemberList",memberTestSvcIf.svcMemberList(uid));

return "main";

	

}


}
