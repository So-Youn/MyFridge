package maeggi.seggi.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BoardVO> listall(BoardVO board) {
		return sqlSession.selectList("maeggi.seggi.mypage.listall",board);
	}

	@Override
	public int insert(BoardVO board) {
		return sqlSession.insert("maeggi.seggi.mypage.insert",board);
	}

	@Override
	public BoardVO read(int askno) {
		return sqlSession.selectOne("maeggi.seggi.mypage.read", askno);
	}

	@Override
	public int update(BoardVO board) {
		return sqlSession.update("maeggi.seggi.mypage.update", board);
	}
	
	/*//답변형 게시판
	@Override
	public BoardVO update_board(BoardVO board) {
		return sqlSession.update(statement, parameter)
	}*/
	
	@Override
	public void delete(int askno) {
		sqlSession.delete("maeggi.seggi.mypage.delete",askno);
		System.out.println("==================================================daoimpl의 askno"+askno);
	}

	//============================= 답변형 게시판 ===========================
	@Override
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
	}

	@Override
	public BoardVO updatelist(BoardVO board) {
		return sqlSession.selectOne("maeggi.seggi.mypage.updatelist", board);
	}
	
	//mypoint 전체보기
	@Override
	public List<PointVO> pointListall(PointVO point) {
		return sqlSession.selectList("maeggi.seggi.mypage.pointListall", point);
	}

	@Override
	public int pointsum(PointVO point) {
		return sqlSession.selectOne("maeggi.seggi.mypage.pointSum", point);
	}

	
	//================관리자================
	
	public List<BoardVO> admin_asklist(BoardVO board) {
		return sqlSession.selectList("maeggi.seggi.mypage.admin_asklist",board);
		
	}
	@Override
	public BoardVO admin_askdetail(int askno) {
		return sqlSession.selectOne("maeggi.seggi.mypage.admin_askdetail",askno);
	}


}
