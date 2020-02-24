package maeggi.seggi.recipeFavorite;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class RecipeFavoriteServiceImpl implements RecipeFavoriteService {
	@Autowired
	@Qualifier("favoriteDAO")
	RecipeFavoriteDAO dao;
	
	@Override
	public int insertFavorite(RecipeFavoriteVO vo) {
		return dao.insertFavorite(vo);
	}
	
	@Override
	public int deleteFavorite(String recipe_id, String name) {
		return dao.deleteFavorite(recipe_id, name);
	}
	
	@Override
	public List<HashMap<String, String>> selectAllFavorites(String member_id) {
		return dao.selectAllFavorites(member_id);
	}
	
	@Override
	public List<HashMap<String, String>> selectByRecipeName(String member_id, String name) {
		return dao.selectByRecipeName(member_id, name);
	}
}
