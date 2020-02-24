package maeggi.seggi.recipeFavorite;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RecipeFavoriteController {
	@Autowired
	RecipeFavoriteService service;
	
	@RequestMapping(value="/favorite/insert.do", method=RequestMethod.POST)
	public String insertFavorite(RecipeFavoriteVO vo) {
		service.insertFavorite(vo);
		return "forward:/recipe/detailRecipe.do?id=" + vo.getRecipe_id();
	}
	
	@RequestMapping(value="/favorite/delete.do", method=RequestMethod.GET)
	public String deleteFavorite(String recipe_id, String name) {
		System.out.println(recipe_id + "=========================================" + name);
		service.deleteFavorite(recipe_id, name);
		return "forward:/board/recipe_favorite.do";
	}
	
	@RequestMapping(value="/favorite/search.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	public @ResponseBody ArrayList<HashMap<String, String>> mypage_recipefavorite(String name, HttpSession session) {
		//즐겨찾기한 정보가 넘어가야 함.
		String member_id = (String)session.getAttribute("id");
		ArrayList<HashMap<String, String>> listMap = (ArrayList<HashMap<String, String>>)service.selectByRecipeName(member_id, name);
		return listMap;
	}
}
