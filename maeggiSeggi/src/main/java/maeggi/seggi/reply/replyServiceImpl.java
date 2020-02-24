package maeggi.seggi.reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class replyServiceImpl implements replyService {
	@Autowired
	@Qualifier("replyDao")
	replyDAO dao;
	
	@Override
	public List<replyBoardVO> listall() {
		return dao.listall();
	}

	@Override
	public int insert(replyBoardVO replyno) {
		return dao.insert(replyno);
	}

	@Override
	public replyBoardVO read(String replyno) {
		return dao.read(replyno);
	}

	@Override
	public int update(replyBoardVO replyno) {
		return dao.update(replyno);
	}

	@Override
	public int delete(replyBoardVO replyno) {
		return dao.delete(replyno);
	}

	
	
	@Override
	public void reply(replyBoardVO replyno) {
		dao.reply(replyno);
		
	}

	@Override
	public List<replyBoardVO> list_reply() {
		return dao.list_reply();
	}

}
