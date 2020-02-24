package maeggi.seggi.recipeFavorite;

public class RecipeFavoriteVO {
	private String recipe_favorite_id;
	private String recipe_id;
	private String member_id;
	private String favorite_date;
	private String memo;
	
	public RecipeFavoriteVO() {
		
	}
	
	public RecipeFavoriteVO(String recipe_favorite_id, String recipe_id, String member_id, String favorite_date,
			String memo) {
		super();
		this.recipe_favorite_id = recipe_favorite_id;
		this.recipe_id = recipe_id;
		this.member_id = member_id;
		this.favorite_date = favorite_date;
		this.memo = memo;
	}

	@Override
	public String toString() {
		return "RecipefavoriteVO [recipe_favorite_id=" + recipe_favorite_id + ", recipe_id=" + recipe_id
				+ ", member_id=" + member_id + ", favorite_date=" + favorite_date + ", memo=" + memo + "]";
	}

	public String getRecipe_favorite_id() {
		return recipe_favorite_id;
	}

	public void setRecipe_favorite_id(String recipe_favorite_id) {
		this.recipe_favorite_id = recipe_favorite_id;
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getFavorite_date() {
		return favorite_date;
	}

	public void setFavorite_date(String favorite_date) {
		this.favorite_date = favorite_date;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	
	
}