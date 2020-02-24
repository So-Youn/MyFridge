package maeggi.seggi.recipe;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import maeggi.seggi.ingredient.IngredientVO;

@Controller
public class RecipeController {
	
	@Autowired
	RecipeService service;
	@RequestMapping(value="/recipe/main.do", method=RequestMethod.GET)
	public @ResponseBody ModelAndView wapi() {
		ModelAndView mav = new ModelAndView();
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		String sysdate = date.format (System.currentTimeMillis());
		System.out.println(sysdate);
		String today = "";
		try {
			String nx = "1"; // 
			String ny = "1"; // 
			String baseDate = sysdate; 
			String baseTime = "0500"; 
			String serviceKey = "bFLjSVwZpB%2BomeIbURaEI3jRNcEQ9j9jhqNnd2bDYYvybfq8qGRrA5zrU19E1b2w7TVtaw%2FZ%2BJhA5wZYDewN3g%3D%3D";
			String urlStr = "http://apis.data.go.kr/1360000/VilageFcstInfoService/getVilageFcst?" + "serviceKey="
					+ serviceKey + "&numOfRows=10&pageNo=1&base_date=" + baseDate + "&base_time=" + baseTime + "&nx="
					+ nx + "&ny=" + ny + "&dataType=JSON";
			URL url = new URL(urlStr);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Content-type", "application/json");
			System.out.println("Response code: " + conn.getResponseCode());
			
			BufferedReader bf;
			String line = "";
			String result = "";
			
			bf = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			while ((line = bf.readLine()) != null) {
				result = result.concat(line);
				System.out.println(result);
			}
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(result); 
			JSONObject parse_response = (JSONObject) obj.get("response");
			JSONObject parse_body = (JSONObject) parse_response.get("body");
			JSONObject parse_items = (JSONObject) parse_body.get("items");
			JSONArray parse_item = (JSONArray) parse_items.get("item");
			String category="";
			JSONObject weather;
			String PTY = "";
			String T3H = "";
			for (int i = 0; i < parse_item.size(); i++) {
				weather = (JSONObject) parse_item.get(i);
				String fcst_Value = ((String) weather.get("fcstValue"));
				category = (String) weather.get("category");
				System.out.print(i + "번째");
				System.out.print(" category : " + category);
				System.out.print(" fcst_Value : " + fcst_Value);
				System.out.println();
				if(category.equals("PTY")) {
					PTY = fcst_Value;
					System.out.println(PTY);
				}
				if(category.equals("T3H")) {
					T3H = fcst_Value;
					System.out.println(T3H);
				}
			}
			if(PTY.equals("1")) {
				today = "1";//비
			}else if(PTY.equals("2") || PTY.equals("3")) {
				today = "2";//눈
			}else if(Integer.parseInt(T3H)>30) {
				today = "3";//더울때
				if(PTY.equals("1")) {
					today = "1";
				}
			}else if(Integer.parseInt(T3H)<0) {
				today = "4";//추울때
				if(PTY.equals("1")) {
					today = "1";
				}else if(PTY.equals("2") || PTY.equals("3")) {
					today = "2";
				}
			}else {
				today="5";//전체중 랜덤
			}
			System.out.println(today);
			bf.close();
			conn.disconnect();
	        //System.out.println(result.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		List<weatherVO> wlist = service.weatherList(today);
		List<RecipeVO> rlist = service.readbyName(wlist.get(0).food_keyword);
		List<RecipeVO> rlistt = service.readbyName(wlist.get(1).food_keyword);
		List<RecipeVO> rlisttt = service.readbyName(wlist.get(2).food_keyword);

		mav.addObject("food", wlist.get(0).food_keyword);
		mav.addObject("today", wlist.get(0).weather_kind);
		mav.addObject("rlist", rlist);
		mav.addObject("rlistt", rlistt);
		mav.addObject("rlisttt", rlisttt);
		mav.setViewName("main");
		System.out.println("메인 단입니다.");
		List<RecipeVO> hitList = service.hitlist();
		List<RecipeVO> drunkList = service.drunklist();
		List<RecipeVO> freshList = service.freshlist();
		mav.addObject("hitList",hitList);
		mav.addObject("drunklist",drunkList);
		mav.addObject("freshlist",freshList);
		mav.setViewName("main");
		return mav;
	}
	@RequestMapping("/recipe/themeRecipe.do")
	public String theme() {
		return "theme";
	}

	@RequestMapping("/recipe/detailRecipe.do")
	public ModelAndView detail(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String recipe_id = req.getParameter("id");
		System.out.println(recipe_id);
		ArrayList<HashMap<String, String>> detail = (ArrayList<HashMap<String, String>>)service.detail(recipe_id);
		List<IngredientVO> detailig = (List<IngredientVO>)service.detailig(recipe_id);
		mav.addObject("detail",detail);
		mav.addObject("detailig",detailig);
		mav.setViewName("detail");
		return mav;
	}
	
@RequestMapping("/recipe/searchRecipe.do")
	public ModelAndView recipeList(HttpServletRequest request) {
		PageMaker pageMaker = new PageMaker();
		ModelAndView mav = new ModelAndView();
		
		int pagenum = Integer.parseInt(request.getParameter("pagenum"));
		System.out.println("pagenum=>"+pagenum);
		int contentnum = Integer.parseInt(request.getParameter("contentnum"));
		System.out.println("contentnum=>"+contentnum);
		
		pageMaker.setTotalCount(service.testcount());//전체 게시글 갯수 지정
		pageMaker.setPagenum(pagenum-1);	//현재 페이지를 페이지 객체에 지정, -1을 해야 쿼리에서 사용 가능
		pageMaker.setContentnum(contentnum); //한 페이지에 몇 개씩 게시글을 보여줄 것인
		pageMaker.setCurrentblock(pagenum); //현재 페이지 블록
		pageMaker.setLastblock(pageMaker.getTotalCount()); // 마지막 블록 번호를 전체 게시글 수를 통해 정한다.
		
		pageMaker.prevnext(pagenum);//현재 페이지 번호로 화살표를 나타낼 지 정한다
		pageMaker.setStartPage(pageMaker.getCurrentblock()); //시작 페이지를 페이지 블록번호로 정한다.
		pageMaker.setEndPage(pageMaker.getLastblock(), pageMaker.getCurrentblock()); 
		
		
		System.out.println("==중간과정==");
		if(pageMaker.getPagenum()==1) {
			List<RecipeVO> testlist = service.testlist(pageMaker.getPagenum()*9, pageMaker.getPagenum()*9+pageMaker.getContentnum());
			//List<RecipeVO> test = new ArrayList<RecipeVO>();
			System.out.println(testlist);
			System.out.println(pageMaker.getContentnum());
			mav.addObject("list",testlist);
			mav.addObject("page",pageMaker);
			mav.setViewName("search");
			return mav;
			}else {
				List<RecipeVO> testlist = service.testlist((pageMaker.getPagenum()*9)+1, pageMaker.getPagenum()*9+pageMaker.getContentnum());	
				System.out.println(testlist);
				System.out.println(pageMaker.getContentnum());
				mav.addObject("list",testlist);
				mav.addObject("page",pageMaker);
				mav.setViewName("search");
				return mav;
			}
		}
	
		
/*	삭제 
	public String delete(RecipeVO recipe) {
		return "redirect:/recipe/list.do";
	}*/
	// 레시피을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value="/recipe/recipe_write.do",method=RequestMethod.GET)
	public String write() {
		return "recipe_write";
	}
	//입력한 레시피 실제 db에 저장하는 메소드
	@RequestMapping(value="/recipe/recipe_write.do",method=RequestMethod.POST)
	public String insert(RecipeVO recipe,HttpSession session) throws Exception {
		System.out.println("***"+recipe);
		ArrayList<MultipartFile> file = recipe.getMyphoto();
 		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/upload");
	 	
	 	service.upload(file, path);
	 	// 넣기 전 이미지 경로를 넣어줘야 함
	 	recipe.setImg_url_main("/maeggiSeggi/uploadImages/" + file.get(0).getOriginalFilename());
	 	if(file.size() > 1) {
	 		for (int i = 0; i < recipe.getRecipe_detail().size(); i++) {
				recipe.getRecipe_detail().get(i).setImg_url("/maeggiSeggi/uploadImages/" + file.get(i + 1).getOriginalFilename());
			}
	 	}
	 	
	 	service.insert(recipe);
		return "redirect:/recipe/main.do";
	}

	@RequestMapping(value="/recipe/ajax_searchRecipe.do",method=RequestMethod.GET,produces="application/json;charset=utf-8")	
	//ajax로 통신하면서 클라이언트에게 명시해줄 데이터를 produces에 붙인다.
	public @ResponseBody AjaxPageVO categoryList(String recipe_category,String pagenum,String contentnum) {
		PageMaker pageMaker = new PageMaker();
		int pagenumVal = Integer.parseInt(pagenum);
		int contentnumVal = Integer.parseInt(contentnum);
		System.out.println("중간점검"+pagenum+","+contentnum);
		pageMaker.setTotalCount(service.testcount2(recipe_category));//전체 게시글 갯수 지정
		pageMaker.setPagenum(pagenumVal);	//현재 페이지를 페이지 객체에 지정, -1을 해야 쿼리에서 사용 가능
		pageMaker.setContentnum(contentnumVal); //한 페이지에 몇 개씩 게시글을 보여줄 것인
		pageMaker.setCurrentblock(pagenumVal); //현재 페이지 블록
		pageMaker.setLastblock(pageMaker.getTotalCount()); // 마지막 블록 번호를 전체 게시글 수를 통해 정한다.
		
		pageMaker.prevnext(pagenumVal);//현재 페이지 번호로 화살표를 나타낼 지 정한다
		pageMaker.setStartPage(pageMaker.getCurrentblock()); //시작 페이지를 페이지 블록번호로 정한다.
		pageMaker.setEndPage(pageMaker.getLastblock(), pageMaker.getCurrentblock()); 
		
		System.out.println("==중간과정==");
		ArrayList<RecipeVO> recipeList = null;
		if(pageMaker.getPagenum()==1) {
			recipeList = (ArrayList<RecipeVO>)service.recipeList(recipe_category,pageMaker.getPagenum()*9, pageMaker.getPagenum()*9+pageMaker.getContentnum());
			//List<RecipeVO> test = new ArrayList<RecipeVO>();
		}else {
			recipeList = (ArrayList<RecipeVO>)service.recipeList(recipe_category,(pageMaker.getPagenum()*10)+1, pageMaker.getPagenum()*10+pageMaker.getContentnum());	
		}
		AjaxPageVO apv = new AjaxPageVO(recipeList, pageMaker);
		System.out.println(apv);
		return apv;
	}
	@RequestMapping(value="/recipe/ajax_SearchName.do",method=RequestMethod.GET,produces="application/json;charset=utf-8")	
	//ajax로 통신하면서 클라이언트에게 명시해줄 데이터를 produces에 붙인다.
	public @ResponseBody AjaxPageVO SearchbyName(String search,String pagenum,String contentnum) {
		PageMaker pageMaker = new PageMaker();
		int pagenumVal = Integer.parseInt(pagenum);
		int contentnumVal = Integer.parseInt(contentnum);
		System.out.println("중간점검"+pagenum+","+contentnum);
		pageMaker.setTotalCount(service.testcount3(search));//전체 게시글 갯수 지정
		pageMaker.setPagenum(pagenumVal);	//현재 페이지를 페이지 객체에 지정, -1을 해야 쿼리에서 사용 가능
		pageMaker.setContentnum(contentnumVal); //한 페이지에 몇 개씩 게시글을 보여줄 것인
		pageMaker.setCurrentblock(pagenumVal); //현재 페이지 블록
		pageMaker.setLastblock(pageMaker.getTotalCount()); // 마지막 블록 번호를 전체 게시글 수를 통해 정한다.
		
		pageMaker.prevnext(pagenumVal);//현재 페이지 번호로 화살표를 나타낼 지 정한다
		pageMaker.setStartPage(pageMaker.getCurrentblock()); //시작 페이지를 페이지 블록번호로 정한다.
		pageMaker.setEndPage(pageMaker.getLastblock(), pageMaker.getCurrentblock()); 
		
		System.out.println("==중간과정==");
		ArrayList<RecipeVO> recipeNameList = null;
		recipeNameList = (ArrayList<RecipeVO>)service.recipeNameList(search,pageMaker.getPagenum()*9, pageMaker.getPagenum()*9+pageMaker.getContentnum());
			//List<RecipeVO> test = new ArrayList<RecipeVO>();
			System.out.println(recipeNameList);
			System.out.println(pageMaker.getContentnum());

		AjaxPageVO apv = new AjaxPageVO(recipeNameList, pageMaker);
		
		System.out.println(apv);
		return apv;
	}
	@RequestMapping(value="/recipe/levelRecipe.do", method=RequestMethod.GET)
	public ModelAndView levelView(String cook_levelb, String cook_leveln, String cook_levelh) {
		System.out.println(cook_levelb+"////////////////"+cook_leveln+"//////////////"+cook_levelh);
		System.out.println("====================================================================================");
		ModelAndView mav = new ModelAndView();
		List<RecipeVO> listb = service.levellist(cook_levelb);
		List<RecipeVO> listn = service.levellist(cook_leveln);
		List<RecipeVO> listh = service.levellist(cook_levelh);
		System.out.println("b:"+listb);
		System.out.println("n:"+listn);
		System.out.println("h:"+listh);
		mav.addObject("levellistb", listb);
		mav.addObject("levellistn", listn);
		mav.addObject("levellisth", listh);
		mav.setViewName("level");
		return mav;
	}

	@RequestMapping(value="recipe/ajax_levellist.do",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody List<RecipeVO> recipeList(String cook_level){
		System.out.println(cook_level);
		List<RecipeVO> recipelist = service.levellist(cook_level);
		System.out.println("----------------------"+recipelist.size());
		return recipelist;
	}
	
	@RequestMapping(value ="/recipe/addPlanner.do" , method=RequestMethod.GET)
	public ModelAndView moveTopopup(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String recipe_id = req.getParameter("id");
		System.out.println("팝업창으로 전달하고 싶은 recipe_id: "+ recipe_id);
		RecipeVO mealinfo = service.moveTopopup(recipe_id);
		mav.addObject("mealinfo", mealinfo);
		mav.setViewName("add");
		System.out.println("컨트롤러를 거친 recipe_id: "+ mealinfo);
		return mav;
	}
	
	@RequestMapping(value ="/recipe/like.do", method=RequestMethod.GET)
	public String like(HttpServletRequest reqest) throws Exception{
		String recipe_id = reqest.getParameter("id");
		service.like(recipe_id);
		
		return "forward:/recipe/detailRecipe.do";
	}
}
