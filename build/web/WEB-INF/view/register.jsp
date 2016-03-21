<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : index.jsp
    Created on : 20 janv. 2016, 17:33:33
    Author     : Baptiste
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>The Incloser Website </title>
        <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/theme.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </script>
    <!----webfonts---->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
   
    <!--  jquery plguin -->
</head>
<header></header>
<body>

    <div class="container">
        <div class="main">

            <div class="col-md-6 ">
                <h2>Se connecter</h2>

                <form id="connectForm" method="post" action='register' onSubmit="return validateForm()">
                    <input type="hidden"
                           name="typeForm"
                           value="connect">
                    <div class="form-group">
                        <label>Nickname</label>
                        <input type="text" name="nickname" class="form-control"  placeholder="Nickname">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>
                </form>


            </div>
            <div class="col-md-6 ">
                <h2>S'inscrire</h2>

                <form id="registerForm" method="post" action='register'>
                    <input type="hidden"
                           name="typeForm"
                           value="register">
                    <div class="form-group">
                        <label>Surnom</label>
                        <input type="text" name="nickname" class="form-control"  placeholder="Surnom">
                    </div>
                    <div class="form-group">

                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control"  placeholder="Email">
                    </div>
                    <div class="form-group">

                        <label>Nom</label>
                        <input type="text" name="name" class="form-control"  placeholder="Nom">
                    </div>
                    <div class="form-group">
                        <label>Prénom</label>
                        <input type="text" name="firstname" class="form-control"  placeholder="Prénom">
                    </div>
                    <div class="form-group">
                        <label>Adresse</label>
                            <input type="text" name="address" class="form-control"  placeholder="Adresse">
                    </div> 
                    <div class="form-group">
                        <label>Ville</label>
                        <input type="text" name="cityRegion" class="form-control"  placeholder="Ville">
                    </div> 
                    <div class="form-group">
                        <label>Code postal</label>
                        <input type="text" name="ccNumber" class="form-control"  placeholder="Code postal">
                    </div> 
                    <div class="form-group">
                        <label>Téléphone</label>
                        <input type="text" name="phone" class="form-control"  placeholder="Téléphone">
                    </div> 


                    <button type="submit" class="btn btn-default">Submit</button>
                </form>


            </div>

        </div>
    </div>
    <br>


</body>
<footer></footer>
</html>

