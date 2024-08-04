package com.proj.dto;

import lombok.Data;

@Data
public class UserVO {

	//회원 id
		private String memberId;
		
		//회원 비밀번호
		private String memberPw;
		
		//회원 이름
		private String memberName;
		
		//회원 이메일
		private String memberMail;
		
		//회원 우편번호
		private String memberAddr1;
		
		private String memberPhone;

		public String getMemberId() {
			return memberId;
		}

		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

		public String getMemberPw() {
			return memberPw;
		}

		public void setMemberPw(String memberPw) {
			this.memberPw = memberPw;
		}

		public String getMemberName() {
			return memberName;
		}

		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}

		public String getMemberMail() {
			return memberMail;
		}

		public void setMemberMail(String memberMail) {
			this.memberMail = memberMail;
		}

		public String getMemberAddr1() {
			return memberAddr1;
		}

		public void setMemberAddr1(String memberAddr1) {
			this.memberAddr1 = memberAddr1;
		}

		public String getMemberPhone() {
			return memberPhone;
		}

		public void setMemberPhone(String memberPhone) {
			this.memberPhone = memberPhone;
		} 
		
}