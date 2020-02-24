/**
 * summernote javascript 파일
 */
$(document).ready(function() {
	$('#summernote').summernote({
		placeholder : 'Hello, This is maeggiSeggi',
		tabsize : 2,
		minHeight : 800,
		maxHeight : null,
		focus : true,
		lang : 'ko-KR'
	});
});