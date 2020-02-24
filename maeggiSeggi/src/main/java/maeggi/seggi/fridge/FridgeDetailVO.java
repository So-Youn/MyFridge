package maeggi.seggi.fridge;

import java.sql.Date;

public class FridgeDetailVO {
	private String ingredient_id;
	private String ig_amount;
	private Date expire_date_rt;
	private Date expire_date_cold;
	private Date user_expire_date;
	private Date register_date;
	private String refrigerator_id;
	
	public FridgeDetailVO() {
		// TODO Auto-generated constructor stub
	}
	
	public FridgeDetailVO(String ingredient_id, String ig_amount, String refrigerator_id) {
		super();
		this.ingredient_id = ingredient_id;
		this.ig_amount = ig_amount;
		this.refrigerator_id = refrigerator_id;
	}

	public FridgeDetailVO(String ingredient_id, String ig_amount,
			Date expire_date_rt, Date expire_date_cold, Date user_expire_date, Date register_date,
			String refrigerator_id) {
		super();
		this.ingredient_id = ingredient_id;
		this.ig_amount = ig_amount;
		this.expire_date_rt = expire_date_rt;
		this.expire_date_cold = expire_date_cold;
		this.user_expire_date = user_expire_date;
		this.register_date = register_date;
		this.refrigerator_id = refrigerator_id;
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
	public Date getExpire_date_rt() {
		return expire_date_rt;
	}
	public void setExpire_date_rt(Date expire_date_rt) {
		this.expire_date_rt = expire_date_rt;
	}
	public Date getExpire_date_cold() {
		return expire_date_cold;
	}
	public void setExpire_date_cold(Date expire_date_cold) {
		this.expire_date_cold = expire_date_cold;
	}
	public Date getUser_expire_date() {
		return user_expire_date;
	}
	public void setUser_expire_date(Date user_expire_date) {
		this.user_expire_date = user_expire_date;
	}
	public Date getRegister_date() {
		return register_date;
	}
	public void setRegister_date(Date register_date) {
		this.register_date = register_date;
	}
	public String getRefrigerator_id() {
		return refrigerator_id;
	}
	public void setRefrigerator_id(String refrigerator_id) {
		this.refrigerator_id = refrigerator_id;
	}

	@Override
	public String toString() {
		return "FridgeDetailVO [ingredient_id=" + ingredient_id + ", ig_amount=" + ig_amount + ", expire_date_rt="
				+ expire_date_rt + ", expire_date_cold=" + expire_date_cold + ", user_expire_date=" + user_expire_date
				+ ", register_date=" + register_date + ", refrigerator_id=" + refrigerator_id + "]";
	}
	
	
	
}
