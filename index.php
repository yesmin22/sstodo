  <?php
	include('library/Session.php');
	$oSession=new Session();
	date_default_timezone_set('Asia/Dhaka');
	define('CREATEDATE',date('Y-m-d H:i:s'));
	
	include ('model/CResult.php');
	include ('library/CCommon.php');
	include ('library/Mail.php');
	include ('library/Paging.php');
	include ('bll/CConManager.php');
	include ('bll/CBasic.php');
	$oResult=new CResult();
	$oBasic=new CBasic();
	$oCommon=new CCommon();

?> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<style>
body {
  margin: 0;
  min-width: 250px;
  background: linear-gradient(to bottom, #d22d36, #b24d65);
  background-size: 100%;
}

a {
  display: inline-block;
}

.tasks {
  margin: 30px 5px 5px 5px;
}

.tasks ul {
  margin: 0;
  padding: 0;
}
/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: -28px;
  height: 25px;
  width: 25px;
  border-radius: 50%;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.checkbox:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.checkbox input:checked ~ .checkmark {
  background-color: #b24d65;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.checkbox input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.checkbox .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

.tasks ul li {
  cursor: pointer;
  position: relative;
  padding: 12px 8px 12px 40px;
  background: #eee;
  font-size: 18px;
  transition: 0.2s;
}

.tasks ul li:nth-child(odd) {
  background: #f9f9f9;
}

.tasks ul li:hover {
  background: #ddd;
}



.close {
  position: absolute;
  right: 0;
  top: 0;
  padding: 12px 16px 12px 16px;
}

.close:hover {
  background-color: #f44336;
  color: white;
}

.jumbotron {
  background-color: #323064;
  text-align: center;
  color: #fff;
}

.btn-primary,
.btn-success {
  width: 100%;
}

.pagination {
  padding-left: 40px !important;
  cursor: pointer !important;
}

 button {
    font-weight: normal;
    background: none;
    border: none;
    float: right;
    color: #025f70;
    font-weight: 800;
}
:root {
  --mobile-hero-app-row: 9fr;
}

html {

}

*, *:before, *:after {

  margin: 0;
  padding: 0;
}

body {
  font-family: 'Roboto', sans-serif;
}

.hero {
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 1fr 550px 1fr;
  grid-template-columns: 1fr 550px 1fr;
  -ms-grid-rows: 110px 9fr 1fr;
  grid-template-rows: 110px 9fr 1fr;
  background: #8967d0;
  height: 100vh;
  width: 100vw;
}

.title {
  -ms-grid-column: 2;
  grid-column: 2;
  -ms-flex-item-align: center;
  -ms-grid-row-align: center;
  align-self: center;
  -ms-grid-column-align: center;
  justify-self: center;
  color: #574285;
  font-size: 50px;
}

.todo-app {
  display: -ms-grid;
  display: grid;
  -ms-grid-rows: 60px 1fr 45px;
  grid-template-rows: 60px 1fr 45px;
  -ms-grid-column: 2;
  grid-column: 2;
  -ms-grid-row: 2;
  grid-row: 2;
  background: white;
  overflow: auto;
  border-radius: 7px;
  -webkit-box-shadow: 
    0 10px 20px rgba(0, 0, 0, 0.19),
    0 6px 6px rgba(0, 0, 0, 0.23);
  box-shadow: 
    0 10px 20px rgba(0, 0, 0, 0.19),
    0 6px 6px rgba(0, 0, 0, 0.23);
  /* Because scrollbar is usually between 14-18px. */
  margin-right: -18px;
  margin-left: -18px;
}

.todo-menu-1 {
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 50px 1fr;
  grid-template-columns: 50px 1fr;
  -ms-grid-rows: 60px;
  grid-template-rows: 60px;
  -webkit-box-align: stretch;
  -ms-flex-align: stretch;
  align-items: stretch;
  -webkit-box-shadow: 0 -1px 6px rgba(0, 0, 0, 0.19);
  box-shadow: 0 -1px 6px rgba(0, 0, 0, 0.19);
  border-bottom: 1px solid #e6e6e6;
}

.add-todo-text-input {
  outline: none;
  border: none;
  border-bottom: 1px solid #e6e6e6;
}

::-webkit-input-placeholder {
  color: #e6e6e6;
  font-style: italic;
}

:-ms-input-placeholder {
  color: #e6e6e6;
  font-style: italic;
}

::-ms-input-placeholder {
  color: #e6e6e6;
  font-style: italic;
}

::placeholder {
  color: #e6e6e6;
  font-style: italic;
}

:-moz-placeholder, ::-moz-placeholder {
  opacity: 1;
}

.toggle-all, .delete-button, .delete-completed-button, .menu-2-button {
  background: #e6e6e6;
  border: none;
  outline: none;
}

.toggle-all {
  color: #e6e6e6;
  -ms-grid-column-align: stretch;
  justify-self: stretch;
  text-align: center;
}

.toggle-all-checked {
  color: #4d4d4d;
}

.rotate {
  display: inline-block;
  font-size: 20px;
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
  /* Prevent rotate class from being clicked so that toggle-all button can be clicked instead. */
  pointer-events: none;
}

.todo-menu-2 {
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 2fr 3fr 2fr;
  grid-template-columns: 2fr 3fr 2fr;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  color: #777;
  background: #f4f5f6;
  font-size: 14px;
  font-weight: 300;
}

.todo-menu-2 .todos-left {
  -ms-grid-column-align: start;
  justify-self: start;
  padding-left: 20px;
}

.todo-menu-2 .todo-menu-2-buttons {
  -ms-grid-column-align: center;
  justify-self: center;
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: auto auto auto;
  grid-template-columns: auto auto auto;
  grid-gap: 3px;
}

.todo-menu-2 .delete-completed-button, .todo-menu-2 .menu-2-button, .todo-menu-2 .todos-left {
  font-family: inherit;
  color: inherit;
  font-size: inherit;
  font-weight: inherit;
}

.todo-menu-2 .menu-2-button {
  padding: 2px 8px;
  border: 1px solid rgba(137, 103, 208, 0);
  border-radius: 3px;
}

.todo-menu-2 .menu-2-button:hover {
  border: 1px solid rgba(137, 103, 208, 0.5);
}

.active {
  border: 1px solid rgba(137, 103, 208, 1) !important;
}

.todo-menu-2 .delete-completed-button {
  -ms-grid-column-align: end;
  justify-self: end;
  padding-right: 20px;
}

.todo-menu-2 .delete-completed-button:hover {
  text-decoration: underline;
}

.todos {
  display: -ms-grid;
  display: grid;
  grid-auto-columns: 1fr;
  grid-auto-rows: -webkit-max-content;
  grid-auto-rows: max-content;
  list-style-type: none;
  overflow: auto;
}

.todos .todo {
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 50px 450px 50px;
  grid-template-columns: 50px 450px 50px;
  border-bottom: 1px solid #ededed;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  overflow-wrap: break-word;
  /* word-wrap is renamed to overflow-wrap but Edge still uses word-wrap */
  word-wrap: break-word;
}

/* checkbox centering */
.todos .todo .pretty {
  -ms-grid-column-align: center;
  justify-self: center;
  -webkit-transform: scale(1.4);
  -ms-transform: scale(1.4);
  transform: scale(1.4);
  margin: 0;
}

.pretty .state label {
  text-indent: 0;
}

.pretty .state i {
  -webkit-transform: rotate(-5deg);
  -ms-transform: rotate(-5deg);
  transform: rotate(-5deg);
  color: #5dc2af;
}

.add-todo-text-input, .todo-text {
  font-size: 24px;
  color: #4d4d4d;
}

.todo-text {
  padding-top: 13px;
  padding-bottom: 13px;
}

.todo-text:focus {
  outline: none;
}

.todo-checked-text {
  color: #d9d9dd;
  text-decoration: line-through;
}

.todo-checked-text:focus {
  color: #4d4d4d;
  text-decoration: none;
}

.delete-button {
  font-size: 28px;
  color: #df8383;
  -ms-grid-column-align: end;
  justify-self: end;
  visibility: hidden;
}

.todos .todo:hover .delete-button {
  visibility: visible;
}

.delete-button:hover {
  color: #f14a5d;
  cursor: pointer;
}

@media (max-width: 1024px) {
  .hero {
    height: var(--mobile-hero-height);
  }
  
  .delete-button {
    color: #f14a5d;
    -ms-grid-column-align: center;
    justify-self: center;
    visibility: visible;
  }
}

@media (max-width: 680px) {
  .hero {
    -ms-grid-columns: 1fr 8fr 1fr;
    grid-template-columns: 1fr 8fr 1fr;
    -ms-grid-rows: 73px 9fr 1fr;
    grid-template-rows: 73px 9fr 1fr;
  }
  
  .title {
    font-size: 33px;
  }
  
  .todo-app {
    -ms-grid-rows: 40px 1fr auto;
    grid-template-rows: 40px 1fr auto;
  }
  
  .todo-menu-1 {
    -ms-grid-rows: 40px;
    grid-template-rows: 40px;
  }
  
  .add-todo-text-input, .todo-text {
  font-size: 16px;
  }
  
  .todo-menu-2 {
    -ms-grid-columns: 1fr 1fr;
    grid-template-columns: 1fr 1fr;
    grid-row-gap: 8px;
    font-size: 12px;
    padding: 8px 0px;
  }
  
  .todo-menu-2 .todos-left {
    -ms-grid-column-align: center;
    justify-self: center;
  }
  
  .todo-menu-2 .todo-menu-2-buttons {
    grid-column: 1 / -1;
    -ms-grid-row: 1;
    grid-row: 1;
  }
  
  .todo-menu-2 .delete-completed-button {
    -ms-grid-column-align: center;
    justify-self: center;
  }
  
  .todo-menu-2 .delete-completed-button:hover {
    text-decoration: none;
  }
  
  .todos {
  }
  
  .todos .todo {
    -ms-grid-columns: 50px var(--mobile-todo-text-width) 50px;
    grid-template-columns: 50px var(--mobile-todo-text-width) 50px;
  }
  
  ::-webkit-input-placeholder {
    font-size: 16px;
  }
  
  :-ms-input-placeholder {
    font-size: 16px;
  }
  
  ::-ms-input-placeholder {
    font-size: 16px;
  }
  
  ::placeholder {
    font-size: 16px;
  }
  
  .rotate {
    font-size: 14px;
  }
}
  </style>
 <body>
  <div class="tasks">
   <div>
     <h1 style="text-align:center;color:white">To Do List</h1>
    </div>
  <div id="todoMenu1" class="todo-menu-1">
     <button id="toggleAll" class="toggle-all" aria-label="Toggle all to do tasks">
       
      </button>
      <input id="input" class="add-todo-text-input" type="text" placeholder="To Do Name?" aria-label="Enter to do text" autofocus>
    </div>
  
  
    <ul id="task-list">
	
	
	<?php 
		$sql="SELECT * FROM tbl_option" ;
		$oResult=$oBasic->SqlQuery($sql);
			
		$sql_count="SELECT COUNT(*) as total_to_do FROM tbl_option WHERE status=1" ;
		$oResult_count=$oBasic->SqlQuery($sql_count);
			
			
			
			
			foreach($oResult->rows as $a_row){?>
			<li id="todo14"> 
				<label class="checkbox">
				
					<input id="<?php echo $a_row['option_name'];?>" type="checkbox" class="all-complete" <?php  if($a_row['status']==2){echo "checked";}?> value="<?php echo $a_row['option_name'];?>">
					<span class="checkmark" id_value="<?php echo $a_row['option_name'];?>" id="checked_<?php echo $a_row['option_name'];?>"></span>
				</label>
				<label class="add-todo" onmouseout=check_function(<?php echo $a_row['id'];?>,<?php echo $a_row['option_name'];?>)  <?php  if($a_row['status']==2){?>style="text-decoration: line-through;color:#d9d9dd" <?php }else{?> contenteditable="true" <?php } ?>id="p_<?php echo $a_row['option_name'];?>" p_id="<?php echo $a_row['id'];?>" p_val="<?php echo $a_row['option_name'];?>"><?php echo $a_row['option_name'];?></label>
				<button style="margin-top: -31px;" class="button_cut" button_value="<?php echo $a_row['option_name'];?>">x</button>
			</li>
			<?php }

		?>
	
		
	 </ul>
  <div id="todoMenu2" class="todo-menu-2">
      <label id="todosLeft" class="todos-left" aria-label="Number of to do tasks left to complete">Todos left:<span id="amount"> <?php echo $oResult_count->row['total_to_do'];?></span>
</label>
      <div id="todoMenu2Buttons" class="todo-menu-2-buttons">
        <button id="all_to_do" class="menu-2-button" aria-label="Show all to do tasks">All</button>
        <button id="active" class="menu-2-button" aria-label="Show active to do tasks">Active</button>
        <button id="complete" class="menu-2-button" aria-label="Show completed to do tasks">Completed</button>
      </div>
      <button id="clear_complete" class="delete-completed-button" aria-label="Clear completed to do tasks">Clear completed</button>
    </div>
 </div>
 <script>
 
 $(document).ready(function() {
$('#input').on('change', function() {
	var option_val= $('#input').val();
	if(option_val != "" || option_val != "0") {
		$.ajax({
			url:"gui/management/get_option.php",
			data:{option_val:option_val},
			type:'POST',
			success:function(response) {
				result=JSON.parse(response);
				if(result.html=='1'){
					alert("Exist!!!");
				}else{
					$('#input').val("");
					$('#task-list').html(result.html);
					$('#amount').text(result.left_to_do);
					
				}
				
			}
		});
	} else {
		
	}

});



});

$(document).on('click', '.button_cut' ,function (e) {
	button_value=$(this).attr("button_value");
	if(button_value != "" || button_value != "0") {
		$.ajax({
			url:"gui/management/del_option.php",
			data:{button_value:button_value},
			type:'POST',
			success:function(response) {
				result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
				
				
				
			}
		});
	} else {
		
	}
	
});
 
 $(document).on('click', '#clear_complete' ,function (e) {
	 value="delete";
		$.ajax({
			url:"gui/management/del_complete_option.php",
			data:{value:value},
			type:'POST',
			success:function(response) {
				if(response=='deleted'){
					$('#task-list').html('');
				}
				
			}
		});

});
 $(document).on('click', '.checkmark' ,function (e) {
	
	id_value=$(this).attr("id_value");
	
	real_id='#'+id_value;
	check=$(real_id).is(':checked'); 
	check_status="";
	if(check==false){
		check_status="complete";
	}else{
		check_status="incomplete";
	}
	
	if(check_status != "" || check_status != "0") {
		$.ajax({
			url:"gui/management/update_option.php",
			data:{check_status:check_status,id_value,id_value},
			type:'POST',
			success:function(response) {
				result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
				
			}
		});
	} else {
		
	}
	
	real_id_p="#p_"+id_value;
	$(real_id_p).css({"text-decoration": "line-through", "color": "#d9d9dd"});
	
});




 $(document).on('click', '#active' ,function (e) {
	
	 
	manual_status='status1';
	if(manual_status != "" || manual_status != "0") {
		$.ajax({
			url:"gui/management/get_inundata.php",
			data:{manual_status:manual_status},
			type:'POST',
			success:function(response) {
				result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
			}
		});
	} else {
		
	}
});
 $(document).on('click', '#complete' ,function (e) {
	
	manual_status='status2';
	if(manual_status != "" || manual_status != "0") {
		$.ajax({
			url:"gui/management/get_inundata.php",
			data:{manual_status:manual_status},
			type:'POST',
			success:function(response) {
				result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
			}
		});
	} else {
		
	}
});

 $(document).ready(function() {
$('#all_to_do').on('click', function() {
	
	var option_val= 1;
	if(option_val != "" || option_val != "0") {
		$.ajax({
			url:"gui/management/get_all_option.php",
			data:{option_val:option_val},
			type:'POST',
			success:function(response) {
			
					result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
			}
		});
	} else {
		
	}

});



});
function check_function(id,div_id){
	id=id;
	div_id=div_id.value;
	org_div_id='#p_'+div_id;
	new_val=$(org_div_id).text();
	if(new_val != "" || new_val != "0") {
		$.ajax({
			url:"gui/management/edit_option.php",
			data:{new_val:new_val,id:id},
			type:'POST',
			success:function(response) {
					result=JSON.parse(response);
				$('#task-list').html(result.html);
				$('#amount').text(result.left_to_do);
			}
		});
	} else {
		
	} 
}
/*$('body').on('click', '[contenteditable]', function() {
	id=$(this).attr("p_id");
    const $this = $(this);
    $this.data('before', $this.html());
}).on('blur keyup paste input', '[contenteditable]', function() {
    const $this = $(this);
    if ($this.data('before') !== $this.html()) {
      new_val=$this.html();
	  if(new_val != "" || new_val != "0") {
		$.ajax({
			url:"gui/management/edit_option.php",
			data:{new_val:new_val,id,id},
			type:'POST',
			success:function(response) {
				$('#task-list').html(response);
			}
		});
	} else {
		
	} 
    }
});*/
 </script>
</body>
