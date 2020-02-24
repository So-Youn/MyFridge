package maeggi.seggi.restaurant;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RecipeControllerT {
	@Autowired
	RestaurantService service;
	@RequestMapping(value="/restaurant/add.do", method=RequestMethod.POST)
	public String insert(RecipePlannerAddTVO addlist, String member_id) {
		System.out.println(addlist);
		/*int result = service.insert(add);
		System.out.println("########################"+result);*/
		ArrayList<RecipePlannerAddVO> list = addlist.getAddlist();
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getIngredient_id() != null) {
				list.get(i).setMember_id(member_id);
				int result = service.insert(list.get(i));
				System.out.println("~~~~~~~~~~~~~~~~~"+result);
				System.out.println(member_id);
			}
			/*int result = service.insert(list.get(i));
			System.out.println("~~~~~~~~~~~~~~~~~"+result);
			System.out.println(member_id);*/
		}
		return "redirect:/recipe/addPlanner.do";
	}
}