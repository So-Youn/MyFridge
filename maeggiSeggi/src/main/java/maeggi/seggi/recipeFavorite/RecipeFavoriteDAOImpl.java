package maeggi.seggi.recipeFavorite;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("favoriteDAO")
public class RecipeFavoriteDAOImpl implements RecipeFavoriteDAO {
	@Autowired
	SqlSession session;

	@Override
	public int insertFavorite(RecipeFavoriteVO vo) {
		return session.insert("maeggi.seggi.recipeFavorite.insertFavorite", vo);
	}

	@Override
	public int deleteFavorite(String recipe_id, String name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("recipe_id", recipe_id);
		map.put("name", name);
		return session.delete("maeggi.seggi.recipeFavorite.deleteFavorite", map);
	}

	@Override
	public List<HashMap<String, String>> selectAllFavorites(String member_id) {
		return session.selectList("maeggi.seggi.recipeFavorite.selectAllFavorites", member_id);
	}
	
	@Override
	public List<HashMap<String, String>> selectByRecipeName(String member_id, String name) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", member_id);
		map.put("name", name);
		return session.selectList("maeggi.seggi.recipeFavorite.selectByRecipeName", name);
	}

}
