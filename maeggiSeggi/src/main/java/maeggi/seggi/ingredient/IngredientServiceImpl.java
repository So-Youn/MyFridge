package maeggi.seggi.ingredient;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IngredientServiceImpl implements IngredientService {
	@Autowired
	IngredientDAO dao;
	
	@Override
	public List<IngredientVO> selectAllByCategory(String category) {
		return dao.selectAllByCategory(category);
	}
	
	@Override
	public List<IngredientVO> selectAllByName(String category, String name) {
		return dao.selectAllByName(category, name);
	}

}
