package maeggi.seggi.comment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDAOImpl implements CommentDAO {
	@Autowired
	SqlSession sqlSession;
	//============================= 답변형 게시판 ===========================
	/*@Override
	public void reply(BoardVO board) {
		//transaction처리
		//update
		sqlSession.update("maeggi.seggi.mypage.updateGrpord_board", board);
		//insert
		sqlSession.insert("maeggi.seggi.mypage.reply", board);
		
		
	}
	//댓글 전체 목록
	@Override
	public List<BoardVO> list_reply() {
		return sqlSession.selectList("maeggi.seggi.mypage.list_reply");
	}*/

	@Override
	public List<CommentVO> commentlistall(int comment) {
		return sqlSession.selectList("maeggi.seggi.comment.listall_comment", comment);
	}



	@Override
	public CommentVO read(String replyno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(CommentVO replyno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(CommentVO replyno) {
		return 0;
	}

	@Override
	public void reply(CommentVO replyno) {
		// TODO Auto-generated method stub
		
	}

	


	@Override
	public int commentinsert(CommentVO comment) {
		return sqlSession.insert("maeggi.seggi.comment.insert_comment", comment);
	}
}
