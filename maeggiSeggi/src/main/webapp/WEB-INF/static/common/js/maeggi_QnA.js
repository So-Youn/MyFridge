$(document).ready(function() {
	var arr = $(".question");
	
	for (var i = 0; i < arr.length; i++) {
		arr[i].onclick = slideAnswer;
	}
})

function slideAnswer() {
	$(this.nextElementSibling).slideToggle();
}