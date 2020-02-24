package maeggi.seggi.mypage;

import java.util.List;

public interface BoardDAO {
	List<BoardVO> listall(BoardVO board);	//문의사항 전체보기
	List<PointVO> pointListall(PointVO point);	//mypoint 전체보기
	List<BoardVO> list_reply(); //댓글 전체보기
	int pointsum(PointVO point);
	BoardVO updatelist(BoardVO board); // 수정화면 보여주기
	int insert(BoardVO board);
	//BoardVO read(String board_no);
	int update(BoardVO board);
	//BoardVO update_board(BoardVO board); //답변형 게시판
	void reply(BoardVO board);
	BoardVO read(int askno); //1대1문의 글 자세히 보기
	void delete(int askno); //게시글 삭제
	List<BoardVO> admin_asklist(BoardVO board);	
	BoardVO admin_askdetail(int askno);

	
}
