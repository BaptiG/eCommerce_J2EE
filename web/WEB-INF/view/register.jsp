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
 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </script>
    <!----webfonts---->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <script type="text/javascript" src="js/materialize.js"></script>
   
    <!--  jquery plguin -->
</head>
<style>
    
    .slider {
  position: relative;
  height: 400px;
  width: 100%;
    }

    .slider.fullscreen {
      height: 100%;
      width: 100%;
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
    }

    .slider.fullscreen ul.slides {
      height: 100%;
    }

    .slider.fullscreen ul.indicators {
      z-index: 2;
      bottom: 30px;
    }

    .slider .slides {
      background-color: #9e9e9e;
      margin: 0;
      height: 400px;
    }

    .slider .slides li {
      opacity: 0;
      position: absolute;
      top: 0;
      left: 0;
      z-index: 1;
      width: 100%;
      height: inherit;
      overflow: hidden;
    }

    .slider .slides li img {
      height: 100%;
      width: 100%;
      background-size: cover;
      background-position: center;
    }

    .slider .slides li .caption {
      color: #fff;
      position: absolute;
      top: 15%;
      left: 15%;
      width: 70%;
      opacity: 0;
    }

    .slider .slides li .caption p {
      color: #e0e0e0;
    }

    .slider .slides li.active {
      z-index: 2;
    }

    .slider .indicators {
      position: absolute;
      text-align: center;
      left: 0;
      right: 0;
      bottom: 0;
      margin: 0;
    }

    .slider .indicators .indicator-item {
      display: inline-block;
      position: relative;
      cursor: pointer;
      height: 16px;
      width: 16px;
      margin: 0 12px;
      background-color: #e0e0e0;
      transition: background-color .3s;
      border-radius: 50%;
    }

    .slider .indicators .indicator-item.active {
      background-color: #4CAF50;
    }
    h3 {  
   color: white;  
    }
    .form-control { /* WebKit, Blink, Edge */
    color:    white !important;
    }
</style>
<script>
    
        $(document).ready(function(){
            $('.slider').slider({full_width: true, height : 900, indicators : false, interval : 10000});
            
            $( ".slider" ).mouseover(function() {
                $('.slider').slider('pause');
            });
            $( ".slider" ).mouseout(function() {
                $('.slider').slider('start');

            });
            $("#sliderNext").click(function(){
                
                $('.slider').slider('next');
        
            });
           
            
          });
    
</script>
<header></header>
<body>
    
    
    
    <div class="slider">
      <ul class="slides">
        <li>
          <img src="images/connexion/slide1.jpg"> <!-- random image -->
          <div class="caption center-align">
            <h3>Connectez-vous à votre espace personnel <i class="fa fa-sign-in"></i></h3>
            <form id="connectForm" method="post" action='register' onSubmit="return validateForm()">
                    <input type="hidden"
                           name="typeForm"
                           value="connect">
                    <div class="form-group">
                        <label>Surnom</label>
                        <input type="text" name="nickname" class="form-control"  placeholder="Surnom">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mot de Passe</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mot de passe">
                    </div>

                    <button type="submit" class="btn btn-default">Connexion</button>
                    <a href="#" id="sliderNext" class="btn btn-primary">S'enregistrer</a>

             </form>
          </div>
        </li>
        <li>
          <img src="images/connexion/slide2.jpg"> <!-- random image -->
          <div class="caption center-align">
            <h3>Créér votre espace ! <i class="fa fa-registered"></i></h3>
             <form id="registerForm" method="post" action='register'>
                    <input type="hidden"
                           name="typeForm"
                           value="register">
                    <div class="form-group">
                        <label>Donnez-vous un surnom</label>
                        <input type="text" name="nickname" class="form-control"  placeholder="Surnom">
                    </div>
                    <div class="form-group">

                        <label for="exampleInputPassword1">Attribuez-vous un mot de passe</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mot de passe">
                    </div>
                    <div class="form-group">
                        <label>Renseigner votre e-mail</label>
                        <input type="text" name="email" class="form-control"  placeholder="Email">
                    </div>
                   <!-- <div class="form-group">

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
                    </div> -->

                    
                    <button type="submit" class="btn btn-default">S'enregistrer</button>
                  
                </form>

          </div>
        </li>
        
      </ul>
    </div>
    


</body>
<footer></footer>
</html>

