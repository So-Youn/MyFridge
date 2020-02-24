package maeggi.seggi.mealPlanner;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mealPlannerServiceImpl implements mealPlannerService{
	@Autowired
	mealPlannerDAO dao; 

	@Override
	public List<mealPlannerVO> mealSelect(mealPlannerVO meal) {
		return dao.mealSelect(meal);
	}

	@Override
	public int insert(mealPlannerVO meal) {
		return dao.insert(meal);
	}

	@Override
	public int kcalsum(String date) {
		return dao.kcalsum(date);
	}
	
}