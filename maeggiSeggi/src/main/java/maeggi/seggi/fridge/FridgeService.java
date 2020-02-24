package maeggi.seggi.fridge;

import java.util.List;

public interface FridgeService {
	List<FridgeVO> selectAllMyFridge(String id);
	FridgeVO selectMyFridgeByName(String id);
	int insertFridge(FridgeVO vo);
	int deleteFridge(FridgeVO vo);
	int updateMain(FridgeVO vo);
}
