package maeggi.seggi.fridge;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import maeggi.seggi.loginandcustomer.memberVO;

@Controller
public class FridgeController {
	@Autowired
	FridgeService service;
	@Autowired
	FridgeDetailService detailService;
	
	@RequestMapping(value="/refrigerator/fridge.do", method=RequestMethod.GET)
	public ModelAndView fridgeContent(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		memberVO user = (memberVO)session.getAttribute("loginuser");
		FridgeVO mainFridge = (FridgeVO)service.selectMyFridgeByName(user.getMember_id());
		ArrayList<HashMap<String, String>> listMap = (ArrayList<HashMap<String, String>>)detailService.selectAll(mainFridge.getRefrigerator_id());
		
		mav.addObject("main", mainFridge);
		mav.addObject("detail", listMap);
		
		mav.setViewName("fridge");
		return mav;
	}
	
	@RequestMapping(value="/refrigerator/ajax_fridge.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<FridgeVO> getUserFridge(String id) {
		ArrayList<FridgeVO> list =  (ArrayList<FridgeVO>)service.selectAllMyFridge(id);
		return list;
	}
	
	@RequestMapping(value="/refrigerator/ajax_fridge_insert.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String insertFridge(FridgeVO vo) {
		int result = service.insertFridge(vo);
		String message = "";
		if(result == 1) {
			message = "냉장고를 저장했습니다!";
		} else {
			message = "냉장고 저장에 실패했습니다.";
		}
		return message;
	}
	
	@RequestMapping(value="/refrigerator/ajax_fridge_delete.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String deleteFridge(FridgeVO vo) {
		int result = service.deleteFridge(vo);
		String message = "";
		if(result == 1) {
			message = "#" + vo.getName() +  " 냉장고를 삭제했습니다";
		} else {
			message = "해당 이름의 냉장고가 없습니다.";
		}
		return message;
	}
	
	@RequestMapping(value="/refrigerator/ajax_update_main.do", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String updateMain(FridgeVO vo) {
		int result = service.updateMain(vo);
		
		String message = "";
		if(result == 1) {
			message = "메인 냉장고를 변경했습니다!";
		} else {
			message = "메인 냉장고 변경에 실패했습니다.";
		}
		return message;
	}

}
