package maeggi.seggi.reply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("replyDao")
public class replyDAOImpl implements replyDAO {
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
	public List<replyBoardVO> list_reply() {
		return sqlSession.selectList("maeggi.seggi.reply.list_reply");
	}

	@Override
	public int insert(replyBoardVO replyno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public replyBoardVO read(String replyno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(replyBoardVO replyno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(replyBoardVO replyno) {
		return sqlSession.delete("maeggi.seggi.reply.delete_reply", replyno);
	}

	@Override
	public void reply(replyBoardVO replyno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<replyBoardVO> listall() {
		// TODO Auto-generated method stub
		return null;
	}
}
