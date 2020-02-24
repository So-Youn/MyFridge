package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class FridgeDetailServiceImpl implements FridgeDetailService {
	@Autowired
	@Qualifier("fridgeDetailDAO")
	FridgeDetailDAO dao;
	
	@Override
	public List<HashMap<String, String>> selectAll(String refrigerator_id) {
		return dao.selectAll(refrigerator_id);
	}
	
	@Override
	public int insertFridge(FridgeDetailListVO voList) {
		return dao.insertFridge(voList);
	}
	
	@Override
	public void deletebyId(String id) {
		dao.deletebyId(id);
	}
	
	@Override
	public int deleteFridgeDetail(FridgeDetailListVO voList) {
		return dao.deleteFridgeDetail(voList);
	}
}
