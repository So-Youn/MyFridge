package maeggi.seggi.reply;

import java.util.List;

public interface replyDAO {
	List<replyBoardVO> listall();	//문의사항 전체보기
	List<replyBoardVO> list_reply(); //댓글 전체보기
	int insert(replyBoardVO replyno);
	replyBoardVO read(String replyno);
	int update(replyBoardVO replyno);
	int delete(replyBoardVO replyno);
	//BoardVO update_board(BoardVO board); //답변형 게시판
	void reply(replyBoardVO replyno);
}
