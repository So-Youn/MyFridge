package maeggi.seggi.fridge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FridgeDetailController {
	@Autowired
	FridgeDetailService service;
	
	@RequestMapping(value="/fridgeDetail/fd_insert.do", method=RequestMethod.POST)
	public String insertFridgeDetail(FridgeDetailListVO voList) {
		//원래 거 삭제하고 추가
		service.deletebyId(voList.getDetailList().get(0).getRefrigerator_id());
		service.insertFridge(voList);
		return "redirect:/refrigerator/fridge.do";
	}
	
	@RequestMapping(value="/fridgeDetail/fd_delete.do", method=RequestMethod.POST)
	public String deleteFridgeDetail(FridgeDetailListVO voList) {
		service.deleteFridgeDetail(voList);
		return "redirect:/refrigerator/fridge.do";
	}
}
