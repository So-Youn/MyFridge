package maeggi.seggi.recipe;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import maeggi.seggi.ingredient.IngredientVO;

public class RecipeVO {
	private String recipe_id;
	private String name;
	private String content_intro;
	private String recipe_code;
	private String recipe_category;
	private String food_code;
	private String food_category;
	private String cook_time;
	private String kcal;
	private String amount_per_person;
	private String cook_level;
	private String ing_category;
	private String price;
	private String img_url_main;
	private String img_url_sub;
	private String hit;
	private String like_num;
	private String register_date;
	private String member_id;
	private ArrayList<RecipeDetailVO> recipe_detail;
	private ArrayList<IngredientVO> ig_detail;
	private ArrayList<MultipartFile> myphoto;
	
	
	public RecipeVO() {
		
	}


	public RecipeVO(String recipe_id, String name, String content_intro, String recipe_code, String recipe_category,
			String food_code, String food_category, String cook_time, String kcal, String amount_per_person,
			String cook_level, String ing_category, String price, String img_url_main, String img_url_sub, String hit,
			String like_num, String register_date, String member_id, ArrayList<RecipeDetailVO> recipe_detail,
			ArrayList<IngredientVO> ig_detail, ArrayList<MultipartFile> myphoto) {
		super();
		this.recipe_id = recipe_id;
		this.name = name;
		this.content_intro = content_intro;
		this.recipe_code = recipe_code;
		this.recipe_category = recipe_category;
		this.food_code = food_code;
		this.food_category = food_category;
		this.cook_time = cook_time;
		this.kcal = kcal;
		this.amount_per_person = amount_per_person;
		this.cook_level = cook_level;
		this.ing_category = ing_category;
		this.price = price;
		this.img_url_main = img_url_main;
		this.img_url_sub = img_url_sub;
		this.hit = hit;
		this.like_num = like_num;
		this.register_date = register_date;
		this.member_id = member_id;
		this.recipe_detail = recipe_detail;
		this.ig_detail = ig_detail;
		this.myphoto = myphoto;
	}


	@Override
	public String toString() {
		return "RecipeVO [recipe_id=" + recipe_id + ", name=" + name + ", content_intro=" + content_intro
				+ ", recipe_code=" + recipe_code + ", recipe_category=" + recipe_category + ", food_code=" + food_code
				+ ", food_category=" + food_category + ", cook_time=" + cook_time + ", kcal=" + kcal
				+ ", amount_per_person=" + amount_per_person + ", cook_level=" + cook_level + ", ing_category="
				+ ing_category + ", price=" + price + ", img_url_main=" + img_url_main + ", img_url_sub=" + img_url_sub
				+ ", hit=" + hit + ", like_num=" + like_num + ", register_date=" + register_date + ", member_id="
				+ member_id + ", recipe_detail=" + recipe_detail + ", ig_detail=" + ig_detail + ", myphoto=" + myphoto
				+ "]";
	}


	public String getRecipe_id() {
		return recipe_id;
	}


	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getContent_intro() {
		return content_intro;
	}


	public void setContent_intro(String content_intro) {
		this.content_intro = content_intro;
	}


	public String getRecipe_code() {
		return recipe_code;
	}


	public void setRecipe_code(String recipe_code) {
		this.recipe_code = recipe_code;
	}


	public String getRecipe_category() {
		return recipe_category;
	}


	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}


	public String getFood_code() {
		return food_code;
	}


	public void setFood_code(String food_code) {
		this.food_code = food_code;
	}


	public String getFood_category() {
		return food_category;
	}


	public void setFood_category(String food_category) {
		this.food_category = food_category;
	}


	public String getCook_time() {
		return cook_time;
	}


	public void setCook_time(String cook_time) {
		this.cook_time = cook_time;
	}


	public String getKcal() {
		return kcal;
	}


	public void setKcal(String kcal) {
		this.kcal = kcal;
	}


	public String getAmount_per_person() {
		return amount_per_person;
	}


	public void setAmount_per_person(String amount_per_person) {
		this.amount_per_person = amount_per_person;
	}


	public String getCook_level() {
		return cook_level;
	}


	public void setCook_level(String cook_level) {
		this.cook_level = cook_level;
	}


	public String getIng_category() {
		return ing_category;
	}


	public void setIng_category(String ing_category) {
		this.ing_category = ing_category;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getImg_url_main() {
		return img_url_main;
	}


	public void setImg_url_main(String img_url_main) {
		this.img_url_main = img_url_main;
	}


	public String getImg_url_sub() {
		return img_url_sub;
	}


	public void setImg_url_sub(String img_url_sub) {
		this.img_url_sub = img_url_sub;
	}


	public String getHit() {
		return hit;
	}


	public void setHit(String hit) {
		this.hit = hit;
	}


	public String getLike_num() {
		return like_num;
	}


	public void setLike_num(String like_num) {
		this.like_num = like_num;
	}


	public String getRegister_date() {
		return register_date;
	}


	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}


	public String getMember_id() {
		return member_id;
	}


	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}


	public ArrayList<RecipeDetailVO> getRecipe_detail() {
		return recipe_detail;
	}


	public void setRecipe_detail(ArrayList<RecipeDetailVO> recipe_detail) {
		this.recipe_detail = recipe_detail;
	}


	public ArrayList<IngredientVO> getIg_detail() {
		return ig_detail;
	}


	public void setIg_detail(ArrayList<IngredientVO> ig_detail) {
		this.ig_detail = ig_detail;
	}


	public ArrayList<MultipartFile> getMyphoto() {
		return myphoto;
	}


	public void setMyphoto(ArrayList<MultipartFile> myphoto) {
		this.myphoto = myphoto;
	}

	
}
