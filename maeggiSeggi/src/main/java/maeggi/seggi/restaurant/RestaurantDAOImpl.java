package maeggi.seggi.restaurant;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(RecipePlannerAddVO add) {
		return sqlSession.insert("maeggi.seggi.restaurant.basketadd", add);
	}

}
