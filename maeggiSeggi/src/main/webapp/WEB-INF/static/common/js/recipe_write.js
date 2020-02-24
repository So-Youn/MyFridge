/**
 * 레시피 등록 페이지 js
 */ 
var mainNode;
	var sideNode;
	var serviceType;
	
	
	$(document).ready(function() {
		$('#cancle').click(function() {
			if (confirm('정말 취소하시겠습니까?') == true) {
				document.location.href = "main.do";
			} else {
				return;
			}
		});	
		
		$("input[name='ig_option']:radio").change(function () {
            //라디오 버튼 값을 가져온다.
            serviceType = this.value;
		});
		
		var main = document.getElementById("ig_main_Add");
	//	var side = document.getElementById("ig_side_Add");
		
		mainNode = document.createElement("div");
		mainNode.append(main.cloneNode(true));
		
/*		sideNode = document.createElement("div");
		sideNode.appendChild(side.cloneNode(true));*/
		
		$('input:radio[name="ig_option"][value="main"]').prop('checked', true);
		if($('input:radio[name="ig_option"][value="main"]').prop('checked')) {
            $("#ig_side_Add").css("display","none"); 
		}
		
		 function selectIg() {
			 var category ="";
			 $("input[name=ig_option]").on("change", function() {
				if($(this).val() == "main") {
					category = "주재료";
				} else if($(this).val()=="sub") {
					category = "부재료";
				} else {
					category = "양념";
				}
			});
			 
			$("input[id=ingredient]").on("keyup", function() {
				$.ajax({
					url: "/maeggiSeggi/ajax_ingredientbyname.do",
					type: "get",
					data: {
						"category":category,
						"name":$(this).val()
					},
					success:function(data) {
						var availableName = new Array();
						for (var i = 0; i < data.length; i++) {
							availableName[i] = data[i].name;
						}

					    $("#ingredient").autocomplete({
					        source: availableName,
					        select: function(event, ui) {
					            console.log(ui.item);
					        },
					        focus: function(event, ui) {
					            return false;
					            //event.preventDefault();
					        }
					    });
					}
				})
			});
		 }
				
	 
	});

	function remove_div(){
		parentNode = document.getElementById("group");
		parentNode.removeChild(parentNode.lastChild);
	}
	var count=0;
	function add_content(){
		count++;
		recipeContent = document.createTextNode("step"+(count+1));
		newP = document.createElement("p");
		newInput = document.createElement("input");
		newInput.setAttribute("name", "recipe_detail[" + count + "].recipe_order_num");
		newInput.setAttribute("value", count+1);
		newInput.setAttribute("style", "display:none;");
		newP.appendChild(recipeContent);
		newdiv = document.getElementById("content");
		newdiv.appendChild(newP);
		newdiv.appendChild(newInput);
		newcontent = document.querySelector("#ControlTextarea").cloneNode(true);
		newcontent.setAttribute( "name", "recipe_detail["+count+"].recipe_describe"); 
		newdiv.appendChild(newcontent);
		
	}

	var num=0;
	 function add_div() {
		 var myingredient ="";
		 if($("input[type='radio'].ig_option").is(':checked')) {
		 var selected = $("input[type='radio'].ig_option:checked").val();
		 num++;
			if(selected == "양념") {
		
					myingredient = "<div id='ig_side_Add' class='ig_side_Add'>"+
						"<label for='ingredient'>재료 이름:</label>"+ 
					"<input type='text' id='side_ingredient' name='ig_detail["+num+"].name' placeholder='예)고추장'>&ensp;&ensp;&ensp;"+ 
					"<label for='ingredientAmount'>계량 정보 :</label>"+
					 	"<div class='selectbox'>"+
							"<select id='select' name='ig_detail["+num+"].volume' >"+
								"<option selected>양념</option>"+
								"<option>약간</option>"+
								"<option>적당량</option>"+
							"</select>"+
						"</div>&ensp;"+
						"<input name='ig_detail[" + num + "].ig_type_name' value='양념' style='display:none;'>" +
						"<button type='button' class='btn btn-default' aria-label='Left Align' onclick='remove_div()'>"+
	  					"<i class='fas fa-minus-circle fa-2x' style='color:gray;float:left;'></i></button><br/></div>";
					 
				}else {
					var input;
				 	if(selected == "주재료") {
				 		input = "<input name='ig_detail[" + num + "].ig_type_name' value='주재료' style='display:none;'>";
				 	}
				 	else { 
				 		input = "<input name='ig_detail[" + num + "].ig_type_name' value='부재료' style='display:none;'>";
				 	}
					
					myingredient ="<div id='ig_main_Add' class='ig_main_Add'>"+
						"<label for='ingredient'>재료 이름:</label>"+ 
					"<input type='text' id='ingredient' name='ig_detail["+num+"].name' placeholder='예)돼지고기'>&ensp;&ensp;&ensp;&ensp;&ensp;"+ 
					"<label for='ingredientAmount'>계량 정보 :</label>"+
					 	"<input type='text' id='ingredientAmount' name='ig_detail["+num+"].volume' placeholder='예)200 [모든 단위는 g 기준]'>&ensp;"+
					 		input +
						 	"<button type='button' class='btn btn-default' aria-label='Left Align' onclick='remove_div()'>"+
		  					"<i class='fas fa-minus-circle fa-2x' style='color:gray;float:left;'></i></button><br/></div>";
					 
				}
					 $("#group").append(myingredient);	
					
					 }
	 };
	 
	