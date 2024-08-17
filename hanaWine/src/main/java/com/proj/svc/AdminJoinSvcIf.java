package com.proj.svc;

import com.proj.dto.AdminJoin;


import jakarta.servlet.http.HttpSession;

public interface AdminJoinSvcIf {

public void adminJoin(AdminJoin adminJoin) throws Exception;
public boolean isLoggedIn(HttpSession session);

public boolean adminlogin(String admin_id, String admin_password, HttpSession session);

AdminJoin adminJoin(String admin_id);
}
