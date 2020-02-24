package maeggi.seggi.fridge;

import java.util.HashMap;
import java.util.List;

public interface FridgeDetailDAO {
	List<HashMap<String, String>> selectAll(String refrigerator_id);
	int insertFridge(FridgeDetailListVO voList);
	void deletebyId(String id);
	int deleteFridgeDetail(FridgeDetailListVO voList);
}
