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
                    <form class="form" action="create.do">
                        <table>
                            <tr>
                                <th>Name</th>
                                <td><input type="text" name="name" placeholder="Enter Your Name" required></td>
                            </tr>
                            <tr>
                                <th>Date Of Birth</th>
                                <td><input type="date" name="date" placeholder="Enter Your DOB" required></td>
                            </tr>
                            
                            <tr>
                                <th>Gender</th>
                                <td>
                                    M: <input type="radio" name="gender" value="m" id=""required>
                                    F: <input type="radio" name="gender" value="f" id="" required>
                                </td>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <td><input type="text" name="address" placeholder="Enter Your address" required></td>
                            </tr>
                            <tr>
                                <th>City</th>
                                <td><input type="text" name="city" placeholder="Enter Your city Name" required></td>
                            </tr>
                            <tr>
                                <th>State</th>
                                <td><input type="text" name="state" placeholder="Enter Your city StateName" required></td>
                            </tr>
                            <tr>
                                <th>Email Id</th>
                                <td><input type="email" name="email" placeholder="Enter Your Email" id="" required></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" name="password" placeholder="Enter Your Password" required></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input type="submit" value="save here">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <a href="login.do">Login here</a>
                                </td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
            </legend>
        </div>
	</div>
</body>
</html>