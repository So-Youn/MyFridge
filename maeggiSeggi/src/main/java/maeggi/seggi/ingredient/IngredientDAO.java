package maeggi.seggi.ingredient;

import java.util.ArrayList;
import java.util.List;

public interface IngredientDAO {
	List<IngredientVO> selectAllByCategory(String category);
	List<IngredientVO> selectAllByName(String category, String name);
	List<IngredientVO> selectRecipeIg(String recipe_id);
	void insertigdetail(ArrayList<IngredientVO> igdetail);
}