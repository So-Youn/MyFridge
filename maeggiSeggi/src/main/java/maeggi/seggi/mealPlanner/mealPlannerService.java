package maeggi.seggi.mealPlanner;

import java.util.List;

public interface mealPlannerService {
	List<mealPlannerVO> mealSelect(mealPlannerVO meal);
	int insert(mealPlannerVO meal);
	int kcalsum(String date);
}

