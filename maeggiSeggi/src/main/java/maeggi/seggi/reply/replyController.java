package maeggi.seggi.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class replyController {
	@Autowired
	replyService service;
	
	//maeggi.seggi.comment 패키지로 대체합니다.

	// ======================= 답변형 게시판 =========================
	// 댓글 전체보기

	/*@RequestMapping(value = "/board/title.do", method = RequestMethod.GET)
	public String preUpdate(replyBoardVO replyno) {
		service.update(replyno);
		return "redirect:/board/title.do";
	}

	@RequestMapping(value = "/board/title.do", method = RequestMethod.POST)
	public String updateGrpord(replyBoardVO replyno) {
		service.reply(replyno);
		return "redirect:/board/title.do";
	}*/
	
	/*// 댓글 삭제 GET
	@RequestMapping(value = "/reply/delete.do", method = RequestMethod.GET)
	public ModelAndView replyDeleteView(replyBoardVO replyno, SearchCriteria scri) {
		ModelAndView mav = new ModelAndView();
		service.delete(replyno);
		mav.addAttribute("replyDelete", replyService.selectReply(replyno.getReplyno()));
		mav.setViewName("");
		model.addAttribute("scri", scri);

		return "board/replyDeleteView";
	}

	// 댓글 삭제
	@RequestMapping(value = "/reply/delete.do", method = RequestMethod.POST)
	public String replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {

		replyService.deleteReply(vo);

		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/readView";
	}*/

	/*
	 * //bbsno이 0이고 grpno가 0이 아니면 //reply = insertBoardReply
	 * 
	 * @RequestMapping(value="/board/reply.do", method = RequestMethod.POST) public
	 * ModelAndView reply(replyBoardVO board) { ModelAndView mav = new
	 * ModelAndView(); if(board.getAsk_bbsno()==0) { if(board.getAsk_grpno()!=0) {
	 * service.reply(board); } }
	 * 
	 * return mav; }
	 */

	/*
	 * public void insertBoardReply(BoardReplyVO param) { if (param.getReno() ==
	 * null || "".equals(param.getReno())) { if (param.getReparent() != null) {
	 * BoardReplyVO replyInfo = sqlSession.selectOne("selectBoard6ReplyParent",
	 * param.getReparent()); param.setRedepth(replyInfo.getRedepth());
	 * param.setReorder(replyInfo.getReorder() + 1);
	 * sqlSession.selectOne("updateBoard6ReplyOrder", replyInfo); } else { Integer
	 * reorder = sqlSession.selectOne("selectBoard6ReplyMaxOrder",
	 * param.getBrdno()); param.setReorder(reorder); }
	 * 
	 * sqlSession.insert("insertBoard6Reply", param); } else {
	 * sqlSession.insert("updateBoard6Reply", param); } }
	 */

}
