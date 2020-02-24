package maeggi.seggi.recipe;

//history 
public class RecipeDetailVO {
	private String recipe_id;            
    private int recipe_order_num;    
    private String recipe_describe;
    private String img_url;
    private String tip;
    
    
    public RecipeDetailVO() {
    	
    }

	public RecipeDetailVO(String recipe_id, int recipe_order_num, String recipe_describe, String img_url, String tip) {
		super();
		this.recipe_id = recipe_id;
		this.recipe_order_num = recipe_order_num;
		this.recipe_describe = recipe_describe;
		this.img_url = img_url;
		this.tip = tip;
	}

	
	

	@Override
	public String toString() {
		return "RecipeDetailVO [recipe_id=" + recipe_id + ", recipe_order_num=" + recipe_order_num
				+ ", recipe_describe=" + recipe_describe + ", img_url=" + img_url + ", tip=" + tip + "]";
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}

	public int getRecipe_order_num() {
		return recipe_order_num;
	}

	public void setRecipe_order_num(int recipe_order_num) {
		this.recipe_order_num = recipe_order_num;
	}

	public String getRecipe_describe() {
		return recipe_describe;
	}

	public void setRecipe_describe(String recipe_describe) {
		this.recipe_describe = recipe_describe;
	}

	public String getImg_url() {
		return img_url;
	}

	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	
    
    
}
