package maeggi.seggi.reply;

import java.sql.Date;

public class replyBoardVO {
	int replyno;
    int groupno;
    int groupord;
    int groupdepth;
    String replytitle;
    String replywriter;
    Date replydate;
    int boardcode; // 1일때 1:1문의사항 페이지, 2일때 레시피 페이지
    
    public replyBoardVO() {
    	
    }

	public replyBoardVO(int replyno, int groupno, int groupord, int groupdepth, String replytitle, String replywriter,
			Date replydate, int boardcode) {
		super();
		this.replyno = replyno;
		this.groupno = groupno;
		this.groupord = groupord;
		this.groupdepth = groupdepth;
		this.replytitle = replytitle;
		this.replywriter = replywriter;
		this.replydate = replydate;
		this.boardcode = boardcode;
	}



	public int getReplyno() {
		return replyno;
	}

	public void setReplyno(int replyno) {
		this.replyno = replyno;
	}

	public int getGroupno() {
		return groupno;
	}

	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}

	public int getGroupord() {
		return groupord;
	}

	public void setGroupord(int groupord) {
		this.groupord = groupord;
	}

	public int getGroupdepth() {
		return groupdepth;
	}

	public void setGroupdepth(int groupdepth) {
		this.groupdepth = groupdepth;
	}

	public String getReplytitle() {
		return replytitle;
	}

	public void setReplytitle(String replytitle) {
		this.replytitle = replytitle;
	}

	public String getReplywriter() {
		return replywriter;
	}

	public void setReplywriter(String replywriter) {
		this.replywriter = replywriter;
	}

	public Date getReplydate() {
		return replydate;
	}

	public void setReplydate(Date replydate) {
		this.replydate = replydate;
	}
	
	public int getBoardcode() {
		return boardcode;
	}

	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}

	@Override
	public String toString() {
		return "replyBoardVO [replyno=" + replyno + ", groupno=" + groupno + ", groupord=" + groupord + ", groupdepth="
				+ groupdepth + ", replytitle=" + replytitle + ", replywriter=" + replywriter + ", replydate="
				+ replydate + "]";
	}
    
    
}
