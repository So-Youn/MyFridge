package maeggi.seggi.fridge;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fridgeDAO")
public class FridgeDAOImpl implements FridgeDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public List<FridgeVO> selectAllMyFridge(String id) {
		return session.selectList("maeggi.seggi.fridge.selectAllMyFridge", id);
	}
	
	@Override
	public FridgeVO selectMyFridgeByName(String id) {
		return session.selectOne("maeggi.seggi.fridge.selectMyFridgeByName" , id);
	}

	@Override
	public int insertFridge(FridgeVO vo) {
		return session.insert("maeggi.seggi.fridge.insertFridge", vo);
	}
	
	@Override
	public int deleteFridge(FridgeVO vo) {
		return session.delete("maeggi.seggi.fridge.deleteFridge", vo);
	}
	
	@Override
	public int updateMain(FridgeVO vo) {
		return session.update("maeggi.seggi.fridge.updateMain", vo);
	}

}