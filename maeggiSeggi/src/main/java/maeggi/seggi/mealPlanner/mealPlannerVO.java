package maeggi.seggi.mealPlanner;

import java.sql.Date;

public class mealPlannerVO {
	String meal_planner_id;
	String meal_name;
	Date planner_regdate;
	String planner_date;
	int PLANNER_CODE;//1=아침, 2=점심, 3=저녁
	String member_id;
	int kcal;
	
	public mealPlannerVO() {
		
	}

	public mealPlannerVO(String meal_planner_id, String meal_name, Date planner_regdate, String planner_date,
			int planner_code, String member_id, int kcal) {
		super();
		this.meal_planner_id = meal_planner_id;
		this.meal_name = meal_name;
		this.planner_regdate = planner_regdate;
		this.planner_date = planner_date;
		this.PLANNER_CODE = planner_code;
		this.member_id = member_id;
		this.kcal = kcal;
	}

	public String getMeal_planner_id() {
		return meal_planner_id;
	}

	public void setMeal_planner_id(String meal_planner_id) {
		this.meal_planner_id = meal_planner_id;
	}

	public String getMeal_name() {
		return meal_name;
	}

	public void setMeal_name(String meal_name) {
		this.meal_name = meal_name;
	}

	public Date getPlanner_regdate() {
		return planner_regdate;
	}

	public void setPlanner_regdate(Date planner_regdate) {
		this.planner_regdate = planner_regdate;
	}

	public String getPlanner_date() {
		return planner_date;
	}

	public void setPlanner_date(String planner_date) {
		this.planner_date = planner_date;
	}

	public int getPlanner_code() {
		return PLANNER_CODE;
	}

	public void setPlanner_code(int planner_code) {
		this.PLANNER_CODE = planner_code;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getKcal() {
		return kcal;
	}

	public void setKcal(int kcal) {
		this.kcal = kcal;
	}

	@Override
	public String toString() {
		return "mealPlannerVO [meal_planner_id=" + meal_planner_id + ", meal_name=" + meal_name + ", planner_regdate="
				+ planner_regdate + ", planner_date=" + planner_date + ", planner_code=" + PLANNER_CODE + ", member_id="
				+ member_id + ", kcal=" + kcal + "]";
	}

	


}
