package maeggi.seggi.restaurant;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RstDAOImpl implements RstDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<weatherVO> weathersearch(String today) {
		return sqlSession.selectList("maeggi.seggi.restaurant.weather", today);
	}
	
}
