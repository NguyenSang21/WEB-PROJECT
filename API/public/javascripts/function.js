$(function (){
	refresh();
	addCelebrity();
	deleteCelebrity();
	updateCelebrity();
});

function updateCelebrity(){
		$('#boxData').delegate('#btnEdit','click',function(){
  			var id=$(this).attr("data-id");
  			$('#editCelebrities').on('click',function(){
				var image=document.getElementById('imagelinkEdit');
				var name =document.getElementById('nameEdit');
				var des=document.getElementById('descriptionEdit');
				var dataEdit = {
  	 			image_url : image.value,
  	 			name :name.value,
  				description : des.value,
  				id : id
				  };
				alert(JSON.stringify(dataEdit));
  				$.ajax({
  					type: 'PUT',
   		 			url: '/api/celebrities/' + id,
    				data: dataEdit,
    				contentType: "application/json; charset=utf-8",
					success:function(data){
						alert('Thành công !!!');
					}
				});
  			 });
		});
}

function deleteCelebrity(){
	$('#boxData').delegate('#btnDel','click',function(){
		var id=$(this).attr("data-id");
		alert(id);
		$.ajax({
			type:'delete',
			url:'/api/celebrities/'+id,
			success:function(data){
				refresh();
			}
		});
	});
}

function addCelebrity(){
	$('#addCelebrities').on('click',function(){
		var image=document.getElementById('imagelinkAdd').value;
		var name =document.getElementById('nameAdd').value;
		var des=document.getElementById('descriptionAdd').value;
		var dataCreate={};
  		dataCreate.image_url=image;
  		dataCreate.name=name;
  		dataCreate.description=des;
		$.ajax({
    		type: 'POST',
   		 	url: '/api/celebrities',
    		dataType: 'json',
    		data: dataCreate,
    		success: function(data){
    			refresh();
    		}
    	});
	});
}

function refresh(){
	var source = document.getElementById("celebrity-template").innerHTML;
    var template = Handlebars.compile(source);
	$.ajax({
		type: 'GET',
		url: '/api/celebrities',
		success: function(data){
			var items = "";
            $.each(data, function (key, val) {
                items += template(val);
            });
            $("#boxData").html(items);
		}
	});
}