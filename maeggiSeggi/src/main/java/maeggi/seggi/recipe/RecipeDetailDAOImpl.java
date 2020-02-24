package maeggi.seggi.recipe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("recipeDetailDao")
public class RecipeDetailDAOImpl implements RecipeDetailDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public void insertdetail(ArrayList<RecipeDetailVO> detail) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("detail", detail);
		
		sqlSession.insert("maeggi.seggi.recipe.insertdetail",map);
	}
}
