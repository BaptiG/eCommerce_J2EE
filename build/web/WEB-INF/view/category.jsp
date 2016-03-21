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



</div>
</div>
</div>
<!----//End-container----->
<div class="container">
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
        <div class="clearfix"></div>
    </div>
    <div class="top">

    </div>
</div>


</body>
<footer></footer>
</html>


