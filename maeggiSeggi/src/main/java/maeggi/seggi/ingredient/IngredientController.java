package maeggi.seggi.ingredient;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IngredientController {
	@Autowired
	IngredientService service;
	
	@RequestMapping(value="/ajax_ingredient.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<IngredientVO> selectAllIngredientByCategory(String category) {
		ArrayList<IngredientVO> list = (ArrayList<IngredientVO>)service.selectAllByCategory(category);
		return list;
	}
	
	@RequestMapping(value="/ajax_ingredientbyname.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<IngredientVO> selectAllIngredientByName(String category, String name) {
		ArrayList<IngredientVO> list = (ArrayList<IngredientVO>)service.selectAllByName(category, name);
		return list;
	}
}
