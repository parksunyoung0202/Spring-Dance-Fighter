package com.spring.dance;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.entity.DancerVO;
import com.spring.entity.rankingVO;
import com.spring.entity.sabbingVO;
import com.spring.mapper.DancerMapper;
@Controller
public class danceController {
	
	@Autowired
	private DancerMapper mapper;
	
	// ========== 로그인 페이지 이동 ==========
	@RequestMapping("/login.do")
	public void login() {
	}
	
	// ========== 메인 페이지 이동 ==========
	@RequestMapping("/main.do")
	public void main() {	
	}
	// ========== 메인 페이지 이동 ==========
	@RequestMapping("/mypage.do")
	public void mypage() {	
	}
	// ========== 메인 페이지 이동 ==========
	@RequestMapping("/ranking.do")
	public void ranking() {	
	}
	// ========== 연습 페이지 이동 ==========
	@RequestMapping("/practice.do")
	public void practice() {	
	}
	
	// ========== 새삥 페이지 이동 ==========
	@RequestMapping("/sabbing.do")
	public void sabbing() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/guide.do")
	public void guide() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/guide2.do")
	public void guide2() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/loading.do")
	public void loading() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/zerotwo.do")
	public void zerotwo() {	
	}
		
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/danceResult.do")
	public void danceResult() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/step1.do")
	public void step1() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/step2.do")
	public void step2() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/step3.do")
	public void step3() {	
	}
	// ========== 가이드 페이지 이동 ==========
	@RequestMapping("/practiceResult.do")
	public void practiceResult() {	
	}	
		
	// ========== 한줄평 리스트 불러오기 ==========
	@RequestMapping("/sabbingComments.do")
	public String sabbingComments(Model model) {
		List<sabbingVO> list = mapper.sabbingComments();
		model.addAttribute("list",list);
		return "sabbing";
		
	}	
	
	// =========== 한줄평 등록 ==============
	@RequestMapping("/commentInsert.do")
	public String commentInsert(sabbingVO vo) {
		mapper.commentInsert(vo);
		return "redirect:/sabbingComments.do";
	}
	
	// ========== 한줄평 리스트 불러오기 ==========
	@RequestMapping("/rankingList.do")
	public String rankingList(Model model,String idx) {
		
		System.out.println("넘어온 idx값: "+idx);
		if (idx.equals("1")) {
			List<rankingVO> sappingRank = mapper.sappingRank();
			model.addAttribute("ranklist",sappingRank);
		} else if (idx.equals("2")) {
			List<rankingVO> zerotwoRank = mapper.zerotwoRank();
			model.addAttribute("ranklist",zerotwoRank);
		} else {
			List<rankingVO> sappingRank = mapper.sappingRank();
			model.addAttribute("ranklist",sappingRank);
		}
		
		return "ranking";
	}
	
	
	// ========== 회원가입 ==========
	@RequestMapping("/join.do")
	public String join(DancerVO vo) {
		mapper.dancerInsert(vo);
		return "redirect:/main.do";
	}
	
	// ========== 로그인  ==========
	@RequestMapping("/dancerLogin.do")
	public String dancerLogin(DancerVO vo,HttpSession session) {
		DancerVO loginVO = mapper.dancerLogin(vo);
		
		if (loginVO.getId() != null) {
			System.out.println(loginVO.getId()+"님 로그인성공");
		}
		
		session.setAttribute("loginVO",loginVO);
		return "redirect:/main.do";
	}
	
	// ========== 로그아웃  ==========
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("loginVO");
		System.out.println("로그아웃 요청");
		return "redirect:/main.do";
	}
	
	
	
}