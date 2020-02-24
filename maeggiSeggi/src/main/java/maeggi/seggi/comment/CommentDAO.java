package maeggi.seggi.comment;

import java.util.List;

public interface CommentDAO {
	List<CommentVO> commentlistall(int comment);	
	int commentinsert(CommentVO comment); //댓글등록
	CommentVO read(String replyno);
	int update(CommentVO replyno);
	int delete(CommentVO replyno);
	void reply(CommentVO replyno);
}
