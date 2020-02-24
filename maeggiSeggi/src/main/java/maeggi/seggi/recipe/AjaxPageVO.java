package maeggi.seggi.recipe;

import java.util.ArrayList;

public class AjaxPageVO {
	ArrayList<RecipeVO> mainVo;
	PageMaker pageMaker;
	public AjaxPageVO() {
		
	}
	public AjaxPageVO(ArrayList<RecipeVO> mainVo, PageMaker pageMaker) {
		super();
		this.mainVo = mainVo;
		this.pageMaker = pageMaker;
	}
	public ArrayList<RecipeVO> getMainVo() {
		return mainVo;
	}
	public void setMainVo(ArrayList<RecipeVO> mainVo) {
		this.mainVo = mainVo;
	}
	public PageMaker getPageMaker() {
		return pageMaker;
	}
	public void setPageMaker(PageMaker pageMaker) {
		this.pageMaker = pageMaker;
	}
	@Override
	public String toString() {
		return "AjaxPageVO [mainVo=" + mainVo + ", pageMaker=" + pageMaker + "]";
	}
	
}
