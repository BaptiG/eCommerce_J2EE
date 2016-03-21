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
    <!--start slider -->
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <!--end slider -->
</head>
<header></header>
<body>
    <!----start-container----->


    <div class="banner">
        <div class="container">
            <div class="col-md-12">
                <!----start-slider---->
                <script src="js/responsiveslides.min.js"></script>
                <script>
                    $(function () {
                        $("#slider").responsiveSlides({
                            auto: true,
                            nav: true,
                            speed: 500,
                            namespace: "callbacks",
                            pager: true,
                        });
                    });
                </script>
                <!---start-image-slider---->
                <div class="slider">
                    <div class="callbacks_container">
                        <ul class="rslides" id="slider">
                            <li>
                                <div class="slider-mai">
                                    <div class="slider-text">	      

                                        <h2>Ordinateur portable</h2>
                                        <a href="category?1" class="da-link">Voir les éléments</a>							
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slider-mai">		
                                    <div class="slider-text">	      

                                        <h2>Ordinateur</h2>
                                        <a href="category?2" class="da-link">Voir les éléments</a>							
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slider-mai">
                                    <div class="slider-text">	      

                                        <h2>Tablette</h2>
                                        <a href="category?3" class="da-link">Voir les éléments</a>							
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="slider-mai">
                                    <div class="slider-text">	      

                                        <h2>Accessoires</h2>
                                        <a href="category?4" class="da-link">Voir les éléments</a>							
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!----//End-slider---->
            </div>
            <div class="timers"> </div>
            <div class="slidePrev"><span> </span></div>
            <div class="slideNext"><span> </span></div>
        </div>
        <!--/slider -->
    </div>
</div>
</div>
</div>
<!----//End-container----->
<div class="container">

    <div class="content">	
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Produits récents</h2>
            </div>	
        </div>	
        <div class="row">


            <c:forEach var="product" items="${productsSortedByDate}" begin="0" end="5" step="1">

                <div class="col-md-4">
                    <div class="grid" style ="text-align : center;">
                        <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">		
                                <a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
                                    <img  src="images/products/${product.getCategoryIdcategory().getName()}/${product.name}.jpg" height ="150px"  /><div class="b-wrapper">
                                        <h2 class="b-animate b-from-left    b-delay03 "><img src="images/link-ico.png" alt=""/></h2>
                                    </div></a>
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
                                   value="index">
                            <input type="submit"
                                   name="submit"
                                   value="Ajouter au panier">
                        </form>

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

        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Produits les moins chers</h2>
            </div>	
        </div>	
        <div class="row">


            <c:forEach var="product" items="${productsSortedByPrice}" begin="0" end="5" step="1">

                <div class="col-md-4">
                    <div class="grid" style ="text-align : center;">
                        <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">		
                                <a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
                                    <img  src="images/products/${product.getCategoryIdcategory().getName()}/${product.name}.jpg" height ="150px" /><div class="b-wrapper">
                                        <h2 class="b-animate b-from-left    b-delay03 "><img src="images/link-ico.png" alt=""/></h2>
                                    </div></a>
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
                                   value="index">
                            <input type="submit"
                                   name="submit"
                                   value="Ajouter au panier">
                        </form>

                    </div>
                </div>

            </c:forEach>







        </div>

        <div class="clearfix"></div>
    </div>
    <div class="top">
        <div class="row">
            <div class="col-md-6">
                <div class="grid">
                    <h2>A propos de Incloser</h2>
                    <p>Ce site a été créé par deux étudiants de ESIEE PARIS, école d'ingénieurs généraliste, basé sur le campus Descartes à Noisy le Grand.</p>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="grid1 pull-left">
                    <h2>Contact</h2>
                    <address>
                        <p>Siège social de Incloser</p>
                        <p>2 Boulevard Blaise Pascal</p>
                        <p>Noisy le Grand 93162</p>
                        <p><a href="#">contact@incloser.fr</a></p>
                    </address>
                </div>
                <div class="grid2 pull-right">
                    <div class="social-icons-set">
                        <ul>
                            <li><a class="facebook" href="#"> </a></li>
                            <li><a class="twitter" href="#"> </a></li>
                            <li><a class="vimeo" href="#"> </a></li>								
                            <div class="clear"> </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


</body>
<footer></footer>
</html>


