<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        h1{
			text-align:center;
		}
        table{
            align-items: center;
            margin-top: 50px;
            margin-left: 500px;
            border:2px solid gray;
            padding:20px;
        }
        tr,td,th{
            padding: 20px;
            
        }

    </style>
</head>
<body>
    
    <div class=container-fluid>
		<div class="row cd-12 bg-dark text-white">
			<h1>WELCOME TO OUR WEB PAGES</h1>
		</div>
        <div class="row cd-12">
            <legend>
                <fieldset border="1px">
                    <form action="login.do" method="post">
                        <table border="1px" align="center" width="auto">
                            <tr>
                                <td colspan="2" align="center"><h1>login Page</h1></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><input type="email" name="email"></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" name="password"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit"></td>
                            </tr>  
                            <tr>
                            	<td colspan="2" align="center"><a href="Signin.jsp">create New Account</a></td>
                            </tr>                  
                        </table>   
                    </form>
                </fieldset>
            </legend>
        </div>
	</div>
</body>
</html>