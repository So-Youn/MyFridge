package maeggi.seggi.maeggiSeggi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MaeggiController {
	@RequestMapping("/sub/intro.do")
	public String intro() {
		return "intro";
	}
	
	@RequestMapping("/sub/grade.do")
	public String grade() {
		return "grade";
	}
	
	@RequestMapping("/sub/QnA.do")
	public String QnA() {
		return "QnA";
	}
}
