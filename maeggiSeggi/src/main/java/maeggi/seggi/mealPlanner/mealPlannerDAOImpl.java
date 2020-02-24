package maeggi.seggi.mealPlanner;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mealPlannerDAOImpl implements mealPlannerDAO{
	@Autowired
	SqlSession SqlSession;
	 
	@Override
	public List<mealPlannerVO> mealSelect(mealPlannerVO meal) {
		return SqlSession.selectList("maeggi.seggi.meal.mealPlan", meal);
	}

	@Override
	public int insert(mealPlannerVO meal) {
		return SqlSession.insert("maeggi.seggi.meal.mealPlanInsert", meal);
	}

	//칼로리 계산
	@Override
	public int kcalsum(String date) {
		return SqlSession.selectOne("maeggi.seggi.meal.mealKcal", date);
	}
	
	
}