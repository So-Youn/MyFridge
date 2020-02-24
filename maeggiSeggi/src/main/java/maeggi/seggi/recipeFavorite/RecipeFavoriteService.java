package maeggi.seggi.recipeFavorite;

import java.util.HashMap;
import java.util.List;

public interface RecipeFavoriteService {
	int insertFavorite(RecipeFavoriteVO vo);
	int deleteFavorite(String recipe_id, String name);
	List<HashMap<String, String>> selectAllFavorites(String member_id);
	List<HashMap<String, String>> selectByRecipeName(String member_id, String name);
}
