package maeggi.seggi.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	@Qualifier("commentDao")
	CommentDAO dao;
	
	@Override
	public List<CommentVO> listall() {
		return null;
	}


	@Override
	public CommentVO read(String replyno) {
		return dao.read(replyno);
	}

	@Override
	public int update(CommentVO replyno) {
		return dao.update(replyno);
	}

	@Override
	public int delete(CommentVO replyno) {
		return dao.delete(replyno);
	}

	
	
	@Override
	public void reply(CommentVO replyno) {
		dao.reply(replyno);
		
	}


	@Override
	public int commentinsert(CommentVO comment) {
		return dao.commentinsert(comment);
	}


	@Override
	public List<CommentVO> commentlistall(int comment) {

		return dao.commentlistall(comment);
	}

}
