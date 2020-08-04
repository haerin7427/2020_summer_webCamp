<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
        body{
            margin: 0 20%;
            line-height: 20px;
        }
        .hobbylist{
    
            margin: 10px;
        }
        
        input#hobby {
            width: 70%;
            float: left;
        }
        button{
            margin: 0 10px;
        }
        button:hover{
            clear: left;
        }

        h4{
            margin: 10px 0;
        }
        #submitB{
            margin: 10px 0;
        }
    </style>
<script>
        $(document).ready(function(){
            var index = 0;

            $("#addB").click(function(){
                console.log($(this).attr('id'));
                index++;
                var new_div = $('<div class="hobbylist" id="new'+index+'"></div>').text('');
                $("#hobbies").append(new_div);

                var new_input = $('<input id="hobby" name="hobby"  type="text" class="form-control" placeholder="Enter your hobby"/>').text('');
                var new_button = $('<button class="delete btn btn-danger" type="button" ></button>').text('X');
                console.log(new_button);
                console.log(new_input);
                $("#new"+index).append(new_input,new_button);
            });
 
            $(document).on("click",".delete",function(){
                $(this).parent('.hobbylist').remove();
            });
        });
    </script>
</head>
<body>

<form action="form_ok.jsp">
        <h4>Dynamically Add or Remove input field with JQuery</h4>

        <div id="hobbies">
            <div class="hobbylist">
                <input id="hobby" name="hobby" type="text" class="form-control" placeholder="Enter your hobby"/>
                <button id="addB" type="button" class="btn btn-primary">ADD</button>
            </div>
        </div>
        
        <input id="submitB" value="Submit" class="btn btn-outline-secondary" type="submit">
    </form>
    
</body>
</html>