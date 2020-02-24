package maeggi.seggi.recipe;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import maeggi.seggi.ingredient.IngredientDAO;
import maeggi.seggi.ingredient.IngredientVO;
@Service
public class RecipeServiceImpl implements RecipeService {
	@Autowired
	@Qualifier("recipeDao")
	RecipeDAO dao;
	@Autowired
	@Qualifier("ingredientDAO")
	IngredientDAO daoig;
	@Autowired
	@Qualifier("recipeDetailDao")
	RecipeDetailDAO daodt;
	
	FileOutputStream fos;
	@Override
	public List<RecipeVO> recipeList(String recipe_category, int pagenum, int contentnum) {
		List<RecipeVO> list = null;
		System.out.println("recipe_category : " + recipe_category);
		if(recipe_category!=null) {
			if(recipe_category.equals("all")) {
				list=dao.testlist(pagenum, contentnum);			
			}else {
				list=dao.categorySearch(recipe_category, pagenum,contentnum);
				System.out.println("dao의 list size : " + list.size());
				//System.out.println(Integer.toString(pagenum)+","+Integer.toString(contentnum));
			}
		}
		return list;
	}
	@Override
	public List<RecipeVO> recipeNameList(String search, int pagenum, int contentnum) {
		// TODO Auto-generated method stub
		return dao.nameSearch(search,pagenum,contentnum);
	}

	@Override
	public void insert(RecipeVO recipe) {
	
		for (int i = 0; i < recipe.getRecipe_detail().size(); i++) {
			recipe.getRecipe_detail().get(i);
		}
		for (int i = 0; i < recipe.getIg_detail().size(); i++) {
			recipe.getIg_detail().get(i);
		}
		dao.insert(recipe);												//insert into recipe values()
		daodt.insertdetail(recipe.getRecipe_detail());			// insert into recipe_detail values(#{id}, #{dsd},..... )
		daoig.insertigdetail(recipe.getIg_detail());			//insert into ingredients values(#{id}, #{dsd},..... )
		
	}

	@Override
	public List<RecipeVO> searchList(String search) {
		return dao.searchList(search);
	}


/*	@Override
	public List<RecipeVO> listall() {
		return dao.listall();
	}*/


	@Override
	public List<HashMap<String, String>> detail(String recipe_id) {
		
		//조회수 업데이트
		
		dao.updatehit(recipe_id);
		return dao.detail(recipe_id);
	}


	@Override
	public List<RecipeVO> readbyName(String name) {
		return dao.readbyName(name);
	}

	@Override
	public List<RecipeVO> levellist(String cook_level) {
		List<RecipeVO> list = dao.levellist(cook_level);
		return list;
	}

	@Override
	public void upload(ArrayList<MultipartFile> file, String path) {
		for (int i = 0; i < file.size(); i++) {
			String fileName = file.get(i).getOriginalFilename();
			try {
				byte[] data = file.get(i).getBytes();
				fos = new FileOutputStream(path+File.separator+fileName);
				fos.write(data);
			}catch (IOException e) {
				e.printStackTrace();
			}finally {
				try {
					if(fos!=null)fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
@Override
	public RecipeVO moveTopopup(String recipe_id) {
		return dao.moveTopopup(recipe_id);
	}

	@Override
	public List<RecipeVO> testlist(int pagenum, int contentnum) {
		// TODO Auto-generated method stub
		return dao.testlist(pagenum, contentnum);
	}
	@Override
	public int testcount() {
		
		return dao.testcount();
	}
	@Override
	public int testcount2(String recipe_category) {
		return dao.testcount2(recipe_category);
	}

	@Override
	public int testcount3(String search) {
		return dao.testcount3(search);
	}
	@Override
	public void like(String recipe_id) throws Exception {
		dao.like(recipe_id);
	}


	@Override
	public List<weatherVO> weatherList(String today) {
		List<weatherVO> wlist = dao.weatherList(today);
		return wlist;
	}


	@Override
	public List<RecipeVO> hitlist() {
		return dao.hitlist();
	}


	@Override
	public List<RecipeVO> drunklist() {
		return dao.drunklist();
	}


	@Override
	public List<RecipeVO> freshlist() {
		return dao.freshlist();
	}


	@Override
	public List<IngredientVO> detailig(String recipe_id) {
		
		return daoig.selectRecipeIg(recipe_id);
	}






}
