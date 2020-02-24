package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("recipeDao")
public class RecipeDAOImpl implements RecipeDAO {
	@Autowired
	SqlSession sqlSession;
	

/*	@Override
	public List<RecipeVO> listall() {
		return sqlSession.selectList("maeggi.seggi.recipe.listall");
	}*/


	@Override
	public List<RecipeVO> testlist(int pagenum, int contentnum) {
		Map<String, Integer> map = new HashMap<String,Integer>();
		map.put("pagenum", pagenum);
		map.put("contentnum", contentnum); 
		List<RecipeVO> result = sqlSession.selectList("maeggi.seggi.recipe.testlist",map);
		System.out.println(result);
		return result;
	}

	@Override
	public void insert(RecipeVO recipe) {
		sqlSession.insert("maeggi.seggi.recipe.insert",recipe);
	}
	@Override
	public List<RecipeVO> categorySearch(String recipe_category,int pagenum, int contentnum) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("pagenum", Integer.toString(pagenum));
		map.put("contentnum", Integer.toString(contentnum));
		map.put("recipe_category", recipe_category);
		List<RecipeVO> list = sqlSession.selectList("maeggi.seggi.recipe.categoryRecipe", map);
		System.out.println(recipe_category + " : " + list.size());
		return list;
	}
	@Override
	public List<RecipeVO> nameSearch(String search, int pagenum, int contentnum) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("pagenum", Integer.toString(pagenum));
		map.put("contentnum", Integer.toString(contentnum));
		map.put("search", search);
		List<RecipeVO> listname = sqlSession.selectList("maeggi.seggi.recipe.recipeNameSearch", map);
		System.out.println(search + listname.size());
		return listname;
	}
	@Override
	public List<RecipeVO> searchList(String search) {
		System.out.println(search);
		List<RecipeVO> recipeList = sqlSession.selectList("maeggi.seggi.recipe.recipeNameSearch",search);
		System.out.println("dao=>"+recipeList.size());
		return recipeList;
	}
	@Override
	public int updatehit(String recipe_id) {
		return sqlSession.update("maeggi.seggi.recipe.updatehit",recipe_id);
	}
	@Override
	public List<HashMap<String, String>> detail(String recipe_id) {
		List<HashMap<String, String>> list = sqlSession.selectList("maeggi.seggi.recipe.detail",recipe_id);
		return list;
	}
	@Override
	public List<RecipeVO> readbyName(String name) {
		List<RecipeVO> mapSearch = sqlSession.selectList("maeggi.seggi.recipe.recipeSearch",name);
		return mapSearch;
	}

	@Override
	public List<RecipeVO> levellist(String cook_level) {
		return sqlSession.selectList("maeggi.seggi.recipe.levelRecipe", cook_level);
	}

	@Override
	public int testcount() {
		return sqlSession.selectOne("maeggi.seggi.recipe.testcount");
	}
	
	@Override
	public int testcount2(String recipe_category) {
		return sqlSession.selectOne("maeggi.seggi.recipe.testcount2", recipe_category);
	}
	@Override
	public int testcount3(String search) {
		return sqlSession.selectOne("maeggi.seggi.recipe.testcount3", search);
	}

	@Override
	public RecipeVO moveTopopup(String recipe_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("maeggi.seggi.recipe.moveTopopup", recipe_id);
	}

	@Override
	public void like(String recipe_id) throws Exception {
		sqlSession.update("maeggi.seggi.recipe.like",recipe_id);
		
	}

	@Override
	public List<weatherVO> weatherList(String today) {
		return sqlSession.selectList("maeggi.seggi.recipe.recipeweather", today);
	}

	@Override
	public List<RecipeVO> hitlist() {
		return sqlSession.selectList("maeggi.seggi.recipe.hitRecipe");
	}

	@Override
	public List<RecipeVO> drunklist() {
		List<RecipeVO> drunklist = sqlSession.selectList("maeggi.seggi.recipe.drunkRecipe");
		return drunklist;
	}

	@Override
	public List<RecipeVO> freshlist() {
		List<RecipeVO> freshlist = sqlSession.selectList("maeggi.seggi.recipe.freshRecipe");
		return freshlist;
	}






}

