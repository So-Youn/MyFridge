package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fridgeDetailDAO")
public class FridgeDetailDAOImpl implements FridgeDetailDAO {
	@Autowired
	SqlSession session;
	
	@Override
	public List<HashMap<String, String>> selectAll(String refrigerator_id) {
		return session.selectList("maeggi.seggi.fridge.selectAll", refrigerator_id);
	}

	@Override
	public int insertFridge(FridgeDetailListVO voList) {
		return session.insert("maeggi.seggi.fridge.insertAllFridgeDetail", voList);
	}
	
	@Override
	public void deletebyId(String id) {
		session.delete("maeggi.seggi.fridge.deletebyId", id);
	}
	
	@Override
	public int deleteFridgeDetail(FridgeDetailListVO voList) {
		return session.delete("maeggi.seggi.fridge.deleteFridgeDetail", voList);
	}

}
