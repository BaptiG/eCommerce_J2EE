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
        <title>The Incloser Website</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        </script>
        <!----webfonts---->
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
        <script type="text/javascript" src="js/materialize.js"></script>
</head>
 <style>


          

           .z-depth-1, nav, .card-panel, .card, .toast, .btn, .btn-large, .btn-floating, .dropdown-content, .collapsible, .side-nav {
               box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
             }

           .card-panel {
               transition: box-shadow .25s;
               padding: 20px;
               margin: 0.5rem 0 1rem 0;
               border-radius: 2px;
               background-color: #fff;
             }

             .card {
               position: relative;
               margin: 0.5rem 0 1rem 0;
               background-color: #fff;
               transition: box-shadow .25s;
               border-radius: 2px;
             }

             .card .card-title {
               font-size: 24px;
               font-weight: 300;
             }

             .card .card-title.activator {
               cursor: pointer;
             }

             .card.small, .card.medium, .card.large {
               position: relative;
             }

             .card.small .card-image, .card.medium .card-image, .card.large .card-image {
               max-height: 60%;
               overflow: hidden;
             }

             .card.small .card-content, .card.medium .card-content, .card.large .card-content {
               max-height: 40%;
               overflow: hidden;
             }

             .card.small .card-action, .card.medium .card-action, .card.large .card-action {
               position: absolute;
               bottom: 0;
               left: 0;
               right: 0;
               z-index: 1;
               background-color: inherit;
             }

             .card.small {
               height: 300px;
             }

             .card.medium {
               height: 400px;
             }

             .card.large {
               height: 500px;
             }

             .card .card-image {
               position: relative;
             }

             .card .card-image img {
               display: block;
               border-radius: 2px 2px 0 0;
               position: relative;
               left: 0;
               right: 0;
               top: 0;
               bottom: 0;
               width: 100%;
             }

             .card .card-image .card-title {
               color: #fff;
               position: absolute;
               bottom: 0;
               left: 0;
               padding: 20px;
             }

             .card .card-content {
               padding: 20px;
               border-radius: 0 0 2px 2px;
             }

             .card .card-content p {
               margin: 0;
               color: inherit;
             }

             .card .card-content .card-title {
               line-height: 48px;
             }

             .card .card-action {
               border-top: 1px solid rgba(160, 160, 160, 0.2);
               padding: 20px;
             }

             .card .card-action a:not(.btn):not(.btn-large):not(.btn-floating) {
               color: #ffab40;
               margin-right: 20px;
               transition: color .3s ease;
               text-transform: uppercase;
             }

             .card .card-action a:not(.btn):not(.btn-large):not(.btn-floating):hover {
               color: #ffd8a6;
             }

             .card .card-reveal {
               padding: 20px;
               position: absolute;
               background-color: #fff;
               width: 100%;
               overflow-y: auto;
               top: 100%;
               height: 100%;
               z-index: 1;
               display: none;
             }

             .card .card-reveal .card-title {
               cursor: pointer;
               display: block;
             }
           .waves-effect {
               position: relative;
               cursor: pointer;
               display: inline-block;
               overflow: hidden;
               -webkit-user-select: none;
               -moz-user-select: none;
               -ms-user-select: none;
               user-select: none;
               -webkit-tap-highlight-color: transparent;
               vertical-align: middle;
               z-index: 1;
               will-change: opacity, transform;
               transition: all .3s ease-out;
               }

               .waves-effect .waves-ripple {
               position: absolute;
               border-radius: 50%;
               width: 20px;
               height: 20px;
               margin-top: -10px;
               margin-left: -10px;
               opacity: 0;
               background: rgba(0, 0, 0, 0.2);
               transition: all 0.7s ease-out;
               transition-property: opacity, -webkit-transform;
               transition-property: transform, opacity;
               transition-property: transform, opacity, -webkit-transform;
               -webkit-transform: scale(0);
                transform: scale(0);
               pointer-events: none;
               }

               .waves-effect.waves-light .waves-ripple {
               background-color: rgba(255, 255, 255, 0.45);
               }

               .waves-effect.waves-red .waves-ripple {
               background-color: rgba(244, 67, 54, 0.7);
               }

               .waves-effect.waves-yellow .waves-ripple {
               background-color: rgba(255, 235, 59, 0.7);
               }

               .waves-effect.waves-orange .waves-ripple {
               background-color: rgba(255, 152, 0, 0.7);
               }

               .waves-effect.waves-purple .waves-ripple {
               background-color: rgba(156, 39, 176, 0.7);
               }

               .waves-effect.waves-green .waves-ripple {
               background-color: rgba(76, 175, 80, 0.7);
               }

               .waves-effect.waves-teal .waves-ripple {
               background-color: rgba(0, 150, 136, 0.7);
               }

               .waves-effect input[type="button"], .waves-effect input[type="reset"], .waves-effect input[type="submit"] {
               border: 0;
               font-style: normal;
               font-size: inherit;
               text-transform: inherit;
               background: none;
               }

               .waves-notransition {
               transition: none !important;
               }

               .waves-circle {
               -webkit-transform: translateZ(0);
                transform: translateZ(0);
               -webkit-mask-image: -webkit-radial-gradient(circle, white 100%, black 100%);
               }

               .waves-input-wrapper {
               border-radius: 0.2em;
               vertical-align: bottom;
               }

               .waves-input-wrapper .waves-button-input {
               position: relative;
               top: 0;
               left: 0;
               z-index: 1;
               }

               .waves-circle {
               text-align: center;
               width: 2.5em;
               height: 2.5em;
               line-height: 2.5em;
               border-radius: 50%;
               -webkit-mask-image: none;
               }

               .waves-block {
               display: block;
               }

               /* Firefox Bug: link not triggered */
               a.waves-effect .waves-ripple {
               z-index: -1;
               }

               .card-image img
               {
                   height:450px !important;
               }
               .title_parralax
               {
                   color:white;
                   text-align: center;
                   padding: 10px;
                   font-weight: 300;
                   margin-top: 190px;
               }
               .little_title_parralax
               {
                   color:white;
                   font-size:.5em;
                   font-weight: 100;
               }
               .container-square
               {
                   margin-top: 102px;
               }
               .square
               {
                   padding-bottom:20px;

               }
               .square i 
               {
                   color:white;
                   font-size: 4em;
                   margin-top: 22px;
               }
               .square-pink
               {
                   background-color:#e91e63;
               }
               .square-red
               {
                    background-color:#8bc34a;
               }
               .square-blue
               {
                    background-color:#2196f3;
               }
               .square-yellow
               {
                    background-color:#ffeb3b;
               }
        </style>
<body>

<!--<div class="container">
    <div class="content">	
        <div class="row">




            <div class="col-md-12 text-center">
                <h2>${selectedCategory.name}</h2>

            </div>	
        </div>	


        <div class="row">





            <c:forEach var="product" items="${categoryProducts}">


                <div class="col-md-4">
                    <div class="grid" style ="text-align : center;">
                        <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper" >		
                                <a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox" >
                                    <img  src="images/products/${selectedCategory.name}/${product.name}.jpg"  height ="150px"  />
                                    <div class="b-wrapper">
                                        <h2 class="b-animate b-from-left    b-delay03 "><img src="images/link-ico.png" alt=""/></h2>
                                    </div>
                                </a>

                            </div>
                        </div>	

                        <p class="text-center">${product.name}</p>
                        <h2 class="text-center">${product.price}</h2>
                        

                        <form action="addToCart" method="post">
                            <input type="hidden"
                                   name="productId"
                                   value="${product.idproduct}">
                            <input type="hidden"
                                   name="path"
                                   value="category">
                            <input type="submit"
                                   name="submit"
                                   value="Ajouter au panier">
                        </form>
                            
                    </div>


                </div>
            </c:forEach> 



          
            <a data-toggle="modal" data-target=".bs-example-modal-md" href="#"> </a>
            <div class="modal fade bs-example-modal-md light-box" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-md">
                    <div class="modal-content light-box-info">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><img src="images/close.png" title="close" /></button>
                        <h3>${product.name}</h3>
                        <p>${product.description}</p>
                    </div>
                </div>
            </div>
            



        </div>
        <div class="clearfix"></div>
    </div>
    <div class="top">

    </div>
</div>-->
    <div class="container">
         <ul class="breadcrumb">
                     <li><i class="fa fa-product-hunt"></i> ${selectedCategory.name}</li>
                     <li class="active">Tout les produits</li>
         </ul>
    </div>
    
     <div class="content">
       
      
        <div class="row">
            <c:forEach var="product" items="${categoryProducts}">
            <div class="col-md-4">
                
                
                <div class="card">
                  <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="images/products/${product.getCategoryIdcategory().getName()}/${product.name}.jpg">
                  </div>
                  <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">${product.name} <i class="fa fa-ellipsis-v" style="float:right;"></i></span>
                    <p>
                        <form action="addToCart" method="post">
                            <input type="hidden"
                                   name="productId"
                                   value="${product.idproduct}">
                            <input type="hidden"
                                   name="path"
                                   value="index">
                            <input type="submit" class="btn btn-primary btn-lg"
                                   name="submit"
                                   value="Ajouter au panier (${product.price}€)">
                        </form>
                    </p>
                  </div>
                  <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Caractéristiques et Descriptif<i class="fa fa-times" style="float:right;"></i></span>
                    <p>${product.description}.</p>
                  </div>
                </div>
                
            </div>
            </c:forEach>
           



            <!----start-model-box---->
            <a data-toggle="modal" data-target=".bs-example-modal-md" href="#"> </a>
            <div class="modal fade bs-example-modal-md light-box" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-md">
                    <div class="modal-content light-box-info">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><img src="images/close.png" title="close" /></button>
                        <h3>${product.name}</h3>
                        <p>${product.description}</p>
                    </div>
                </div>
            </div>
            <!----start-model-box---->

        </div>    


</body>

</html>


