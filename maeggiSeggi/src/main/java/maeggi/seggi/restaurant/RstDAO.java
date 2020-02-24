package maeggi.seggi.restaurant;

import java.util.List;

public interface RstDAO {
	List<weatherVO> weathersearch(String today);
}
