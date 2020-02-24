package maeggi.seggi.restaurant;

import java.util.ArrayList;
import java.util.List;

public interface RstService {
	ArrayList<searchVO> main(String tit);
	List<weatherVO> weathersearch(String today);
}
