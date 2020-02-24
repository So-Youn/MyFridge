package maeggi.seggi.recipe;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import maeggi.seggi.ingredient.IngredientVO;

public interface RecipeService {
	
	void insert(RecipeVO recipe);
	List<RecipeVO> searchList(String search);
	List<HashMap<String, String>> detail(String recipe_id);
	List<IngredientVO> detailig(String recipe_id);
	List<RecipeVO> levellist(String cook_level);
	List<RecipeVO> readbyName(String name);
	//파일 업로드
	void upload(ArrayList<MultipartFile> file,String path);

	public List<RecipeVO> testlist(int pagenum, int contentnum);
	public int testcount();
	public int testcount2(String recipe_category);
	public int testcount3(String search);
	RecipeVO moveTopopup(String recipe_id);
	//좋아요
	public void like(String recipe_id) throws Exception;
	List<RecipeVO> recipeList(String recipe_category, int pagenum, int contentnum);
	List<RecipeVO> recipeNameList(String search,int pagenum, int contentnum);
	List<RecipeVO> hitlist();
	List<RecipeVO> drunklist();
	List<RecipeVO> freshlist();
	List<weatherVO> weatherList(String today);

	
}
