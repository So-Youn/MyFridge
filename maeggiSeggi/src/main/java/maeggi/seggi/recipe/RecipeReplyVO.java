package maeggi.seggi.recipe;

import java.sql.Date;

public class RecipeReplyVO {
	 private String recipe_reply_id;
	 private String content;
	 private String member_id;   
	 private int like_num;
	 private String date;   
	 private String recipe_id;
	 
	 public RecipeReplyVO() {
		 
	 }

	public RecipeReplyVO(String recipe_reply_id, String content, String member_id, int like_num, String date,
			String recipe_id) {
		super();
		this.recipe_reply_id = recipe_reply_id;
		this.content = content;
		this.member_id = member_id;
		this.like_num = like_num;
		this.date = date;
		this.recipe_id = recipe_id;
	}

	@Override
	public String toString() {
		return "RecipeReplyVO [recipe_reply_id=" + recipe_reply_id + ", content=" + content + ", member_id=" + member_id
				+ ", like_num=" + like_num + ", date=" + date + ", recipe_id=" + recipe_id + "]";
	}

	public String getRecipe_reply_id() {
		return recipe_reply_id;
	}

	public void setRecipe_reply_id(String recipe_reply_id) {
		this.recipe_reply_id = recipe_reply_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getLike_num() {
		return like_num;
	}

	public void setLike_num(int like_num) {
		this.like_num = like_num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}
	 
}
