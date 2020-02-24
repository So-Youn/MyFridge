package maeggi.seggi.restaurant;

public class RecipePlannerAddVO {
	String ingredient_id;
	String ig_amount;
	String ig_unit;
	String member_id;
	
	public RecipePlannerAddVO() {
		
	}

	public RecipePlannerAddVO(String ingredient_id, String ig_amount, String ig_unit, String member_id) {
		super();
		this.ingredient_id = ingredient_id;
		this.ig_amount = ig_amount;
		this.ig_unit = ig_unit;
		this.member_id = member_id;
	}

	public String getIngredient_id() {
		return ingredient_id;
	}

	public void setIngredient_id(String ingredient_id) {
		this.ingredient_id = ingredient_id;
	}

	public String getIg_amount() {
		return ig_amount;
	}

	public void setIg_amount(String ig_amount) {
		this.ig_amount = ig_amount;
	}

	public String getIg_unit() {
		return ig_unit;
	}

	public void setIg_unit(String ig_unit) {
		this.ig_unit = ig_unit;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "RecipePlannerAddVO [ingredient_id=" + ingredient_id + ", ig_amount=" + ig_amount + ", ig_unit="
				+ ig_unit + ", member_id=" + member_id + "]";
	}

	
	
}
