package maeggi.seggi.ingredient;

public class IngredientVO {
	private String recipe_id;
	private String ingredient_id;
	private String name;
	private String volume;
	private String ig_type_code;
	private String ig_type_name;
	
	public IngredientVO() {
		// TODO Auto-generated constructor stub
	}
	
	public IngredientVO(String ingredient_id, String name, String ig_type_name) {
		super();
		this.ingredient_id = ingredient_id;
		this.name = name;
		this.ig_type_name = ig_type_name;
	}

	public IngredientVO(String recipe_id, String ingredient_id, String name, String volume, String ig_type_code,
			String ig_type_name) {
		super();
		this.recipe_id = recipe_id;
		this.ingredient_id = ingredient_id;
		this.name = name;
		this.volume = volume;
		this.ig_type_code = ig_type_code;
		this.ig_type_name = ig_type_name;
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}

	public String getIngredient_id() {
		return ingredient_id;
	}

	public void setIngredient_id(String ingredient_id) {
		this.ingredient_id = ingredient_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVolume() {
		return volume;
	}

	public void setVolume(String volume) {
		this.volume = volume;
	}

	public String getIg_type_code() {
		return ig_type_code;
	}

	public void setIg_type_code(String ig_type_code) {
		this.ig_type_code = ig_type_code;
	}

	public String getIg_type_name() {
		return ig_type_name;
	}

	public void setIg_type_name(String ig_type_name) {
		this.ig_type_name = ig_type_name;
	}

	@Override
	public String toString() {
		return "IngredientVO [recipe_id=" + recipe_id + ", ingredient_id=" + ingredient_id + ", name=" + name
				+ ", volume=" + volume + ", ig_type_code=" + ig_type_code + ", ig_type_name=" + ig_type_name + "]";
	}
	
}

