<%@ page import = "models.User" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        #row{
            text-align: center;
            font-size:bold;
        }
        th{
            color:red;
            font-size:large;
            font-weight: bold;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        td{
            font-size:large;
            font-weight: bold;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        
    </style>
</head>
<body>
    <% User user = (User)session.getAttribute("logins"); %>
    <% if(!(user.equals("null"))){ %>
        <div class="container-fluid">
            <div class="row-cd-12 bg-dark text-white" id="row">
                <h1>welcome to Welcome Page</h1>
            </div>
            <div col="row-cd-12 bg-dark text-white" id="row"">
                <div id="x">
            
                </div>
            </div>
        </div>
        
        <input type="button" value="Show Record" id="btn">
        <input type="button" value="Clear Screen" id="btn1">
        
        <script>
            var btn = document.querySelector("#btn");
            var btn1 = document.querySelector("#btn1");
            var btn2 = document.querySelector("#btn2");
            var req_show = '';
            var showData = document.querySelector("#x");
            
            btn.addEventListener('click',showRes);
            var table = document.createElement('table');
            table.className = 'table cd=12';
            table.id = 'table';
            table.style.border = '2px solid black';
            table.style.alignContent = 'center';
            
            btn.addEventListener('click',()=>{
                var tr1  = document.createElement('tr');
                var th1 = document.createElement('th');
                th1.innerHTML = 'Name';
                var th2 = document.createElement('th');
                th2.innerHTML = 'Date Of Birth';
                var th3 = document.createElement('th');
                th3.innerHTML = 'gender';
                var th4 = document.createElement('th');
                th4.innerHTML = 'Address';
                var th5 = document.createElement('th');
                th5.innerHTML = 'city';
                var th6 = document.createElement('th');
                th6.innerHTML = 'state';
                var th7 = document.createElement('th');
                th7.innerHTML = 'email';
                
                tr1.append(th1);
                tr1.append(th2);
                tr1.append(th3);
                tr1.append(th4);
                tr1.append(th5);
                tr1.append(th6);
                tr1.append(th7);
                table.append(tr1);
            })
            btn1.addEventListener('click',()=>{
                table.innerHTML='';
            });
            function showRes(){
                table.innerHTML = '';
                req_show = new XMLHttpRequest();
                req_show.open('get','showallrec',true);
                console.log("##########");
                req_show.addEventListener('readystatechange',()=>{
                    if(req_show.readyState == 4 && req_show.status == 200){
                        var records = JSON.parse(req_show.responseText);
                        console.log(records);
                        var j = 0;
                        
                        for(var rec of records){
                            var tr = document.createElement('tr');
                            for(var prop in rec){

                                let td = document.createElement('td');

                                // console.log(prop);
                                if(prop == "password"){

                                }else{
                                    td.append(rec[prop]);
                                }
                                tr.append(td)
                            }
                            table.append(tr);
                            
                        }
                        showData.append(table);
                    }
                });
                req_show.send();
            };
        </script>
    <% } %>
</body>
</html>