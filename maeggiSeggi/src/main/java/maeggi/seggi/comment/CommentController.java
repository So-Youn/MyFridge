package maeggi.seggi.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommentController {
	@Autowired
	CommentService service;

	@RequestMapping(value = "/comment/insert.do" , method = RequestMethod.POST)
	public String commentInsert(CommentVO comment) {
		service.commentinsert(comment);
		return "redirect:/board/read.do?askno="+comment.getBoard_no();
	}
	
	
		
		
		
	

}
