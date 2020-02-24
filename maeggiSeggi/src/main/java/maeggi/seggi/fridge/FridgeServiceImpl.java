package maeggi.seggi.fridge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FridgeServiceImpl implements FridgeService {
	@Autowired
	FridgeDAO dao;
	
	@Override
	public List<FridgeVO> selectAllMyFridge(String id) {
		return dao.selectAllMyFridge(id);
	}
	
	@Override
	public FridgeVO selectMyFridgeByName(String id) {
		return dao.selectMyFridgeByName(id);
	}
	
	@Override
	public int insertFridge(FridgeVO vo) {
		return dao.insertFridge(vo);
	}
	
	@Override
	public int deleteFridge(FridgeVO vo) {
		return dao.deleteFridge(vo);
	}
	
	@Override
	public int updateMain(FridgeVO vo) {
		return dao.updateMain(vo);
	}
}

