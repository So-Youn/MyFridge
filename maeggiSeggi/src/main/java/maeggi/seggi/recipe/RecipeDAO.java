package maeggi.seggi.recipe;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;



public interface RecipeDAO {
	//레시피 조회
	
	List<RecipeVO> searchList(String search);
	//List<RecipeVO> listall();
	RecipeVO moveTopopup(String recipe_id);
	public int updatehit(String recipe_id);
	public List<HashMap<String, String>> detail(String recipe_id);
	
	List<RecipeVO> readbyName(String name);
	List<RecipeVO> levellist(String cook_level);
	//레시피 삽입
	
	
	void insert(RecipeVO recipe);
	
	public List<RecipeVO> testlist (@Param("pagenum") int pagenum, @Param("contentnum") int contentnum);
	public int testcount();
	public int testcount2(String recipe_category);
	public int testcount3(String search);
	//public List<RecipeVO> listall(@Param("pagenum") int pagenum, @Param("contentnum") int contentnum);
	public void like(String recipe_id) throws Exception;
	List<RecipeVO> categorySearch(String recipe_category, int pagenum, int contentnum);
	List<RecipeVO> hitlist();
	List<RecipeVO> drunklist();
	List<RecipeVO> freshlist();
	List<weatherVO> weatherList(String today);
	List<RecipeVO> nameSearch(String search, int pagenum, int contentnum);

}
