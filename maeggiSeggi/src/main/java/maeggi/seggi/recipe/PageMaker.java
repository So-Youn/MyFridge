package maeggi.seggi.recipe;

public class PageMaker {
	private int totalCount; //전체 게시물 수
	private int pagenum; //현재 페이지 번호
	private int contentnum=9; //한 페이지에 몇 개 표시할 지
	private int startPage=1; //현재 페이지 블록의 시작 페이지
	private int endPage=5; 
	private boolean prev=false; //<-화살표
	private boolean next;//->
	private int currentblock; //현재 페이지 블록
	private int lastblock;	//마지막 페이지 블록
	
	//첫 페이지에서는
			//이전 페이지로 가는 화살표가 보이지 않고 다음 페이지로 가는 화살표만 보인다.
	public void prevnext(int pagenum) {
		if(pagenum>0&&pagenum<6) {
			setPrev(false);
			setNext(true);
		}else if(getLastblock()==getCurrentblock()) {
			setPrev(true);
			setNext(false);
		}else {
			setPrev(true);
			setNext(true);
		}
	}
	//전체 페이지 수 계산
	public int calcpage(int totalcount, int contentnum) { //전체 페이지 수를 계산하는 함수  
		//125/10 => 12.5 -> 13페이지 
		int totalpage=totalcount/contentnum;
		if(totalcount%contentnum>0) {
			totalpage++;
		}
		return totalpage;
	}
	
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getContentnum() {
		return contentnum;
	}
	public void setContentnum(int contentnum) {
		this.contentnum = contentnum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currentblock) { //시작 페이지가 몇번인 지 계산
		this.startPage = (currentblock*5)-4;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getlastblock,int getcurrentblock) {
		if(getlastblock == getcurrentblock) {
			this.endPage = calcpage(getTotalCount(), getContentnum());
		}else {
			this.endPage = getStartPage()+4;
		}
		
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentblock() {
		return currentblock;
	}
	public void setCurrentblock(int pagenum) {
		//페이지 번호를 통해서 구한다.
		//(페이지 번호 / 페이지 그룹 안 갯수)
		this.currentblock = pagenum/5;
		if(pagenum%5>0) {
			this.currentblock++;
		}
	}
	public int getLastblock() {
		return lastblock;
	}
	public void setLastblock(int totalcount) {
		//10 , 5 = > 10 * 5 => 50
		//125/ 50 
		//3
		this.lastblock = totalcount/(5*this.contentnum);
		if(totalcount%(5*this.contentnum)>0) {
			this.lastblock++;
		}
	}
	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", pagenum=" + pagenum + ", contentnum=" + contentnum
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", currentblock=" + currentblock + ", lastblock=" + lastblock + "]";
	}
	
	
	
}
