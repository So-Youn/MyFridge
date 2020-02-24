package maeggi.seggi.mealPlanner;





import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import maeggi.seggi.loginandcustomer.memberVO;
import maeggi.seggi.mypage.BoardService;
import maeggi.seggi.mypage.PointVO;


@Controller
public class mealPlannerController {
	@Autowired
	mealPlannerService service;
	
	@Autowired
	BoardService pointservice;
	
	@RequestMapping(value = "/mealPlanner/select.do", method = RequestMethod.GET)

	

	public ModelAndView read(mealPlannerVO meal, PointVO point, String today, HttpServletRequest req) {

		ModelAndView mav = new ModelAndView();
		HttpSession ses = req.getSession(false);
		if(ses!=null) {		
			memberVO user=(memberVO) ses.getAttribute("loginuser");

			String DDday = (String)ses.getAttribute("today");

			if(user!=null) {
				meal.setMember_id((user.getMember_id()));//mealPlannerVO에 로그인한 회원의 id를 set.
				point.setMember_id((user.getMember_id()));

				meal.setPlanner_date(DDday);
				

			}
		}
		List<mealPlannerVO> mealplan = service.mealSelect(meal);
		int pointsum = pointservice.pointsum(point);

		int kcalsum = service.kcalsum(meal.getPlanner_date());


		mav.addObject("mealplan", mealplan);
		mav.addObject("pointsum", pointsum);

		mav.addObject("kcalsum", kcalsum);

		mav.setViewName("mypage/main");
		return mav;
	}
	

	//식단에 추가하는 기능
	@RequestMapping(value = "/mealPlanner/insert.do", method = RequestMethod.POST, produces="application/text;charset=UTF-8")
	public void insert(mealPlannerVO meal) {
		int result = service.insert(meal);
	}
}












