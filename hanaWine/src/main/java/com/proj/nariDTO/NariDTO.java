package com.proj.nariDTO;


import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;



@Data
@NoArgsConstructor // 기본생성자를 자동으로 만들어줌
@ToString	
public class NariDTO {
	
	private String username;
	private String userid;
	private String userpw1;
	private String userpw2;
	private String useremail;
	private String useraddress;
	private int phone;
	private int usernum1;
	private int usernum2;
	private int usercode;
	

}
