package maeggi.seggi.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	@Qualifier("boardDao")
	BoardDAO dao;
	
	@Override
	public List<BoardVO> listall(BoardVO board) {
		return dao.listall(board);
	}

	@Override
	public int insert(BoardVO board) {
		return dao.insert(board);
	}

	@Override
	public BoardVO read(int askno) {
		return dao.read(askno);
	}

	@Override
	public int update(BoardVO board) {
		return dao.update(board);
	}

	@Override
	public void delete(int askno) {
		dao.delete(askno);
		System.out.println("==================================================serviceimpl의 askno"+askno);
	}

	
	//======================== 답변형 게시판 ========================
	@Override
	public void reply(BoardVO board) {
		dao.reply(board);
		
	}

	@Override
	public List<BoardVO> list_reply() {
		return dao.list_reply();
	}

	@Override
	public BoardVO read(String board_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardVO updatelist(BoardVO board) {
		return dao.updatelist(board);
	}

	@Override
	public List<PointVO> pointListall(PointVO point) {
		return dao.pointListall(point);
	}

	@Override
	public int pointsum(PointVO point) {
		return dao.pointsum(point);
	}

	
	//======================관리자페이지=============================
	@Override
	public List<BoardVO> admin_asklist(BoardVO board) {
		// TODO Auto-generated method stub
		return dao.admin_asklist(board);
	}

	@Override
	public BoardVO admin_askdetail(int askno) {
		// TODO Auto-generated method stub
		return dao.admin_askdetail(askno);
	}


}
