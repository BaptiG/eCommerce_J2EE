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
            <div class="row">
                <div class="col-md-12 text-left">
                    <h2>Résumé de la transaction</h2>
                    <table style=" text-align: center;" border = "1px" align="center">
                        <TR> 
                            <TH align="center" valign="middle"> Total Achat </TH> 
                            <TD align="center" valign="middle"> ${cart.getSubtotal()} &euro;  </TD> 
                        </TR> 
                        <TR> 
                            <TH align="center" valign="middle"> Frais de livraison </TH> 
                                <c:choose>   <c:when test="${cart.getSubtotal()>500}">
                                    <TD align="center" valign="middle">  Offert </TD>
                                    <TR> 
                                <TH align="center" valign="middle"> Total à payer </TH> 
                                <TD align="center" valign="middle">  ${cart.calculateTotal(0)} ${cart.getTotal()} &euro;   </TD> 
                        </TR> 
                                    </c:when>


                                <c:otherwise> <TD align="center" valign="middle">  10  &euro; </TD>
                                    
                                    <TR> 
                                <TH align="center" valign="middle"> Total à payer </TH> 
                                <TD align="center" valign="middle">  ${cart.calculateTotal(10)} ${cart.getTotal()} &euro;   </TD> 
                        </TR> 
                                    </c:otherwise></c:choose>


                            </TR> 
                            



                    </table>

                </div>	
            </div>
            <div class="row">
                <div class="col-md-12 text-left">


                    <h2>Moyen de paiement</h2>

                    <div class="col-md-4">

                        <button type="button" class="btn btn-default btn-lg" >
                            <a href="./payment" style="text-decoration:none; "><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> Carte bancaire</a> 

                        </button>


                    </div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-default btn-lg" >
                            <a href="./payment" style="text-decoration:none; "><span class="glyphicon glyphicon-qrcode" aria-hidden="true"></span> Paypal</a> 

                        </button>


                    </div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-default btn-lg">
                            <a href="./payment" style="text-decoration:none; " ><span class="glyphicon glyphicon-gift" aria-hidden="true"></span> Chèques cadeaux internet</a> 

                        </button>


                    </div>
                </div>	
            </div>


        </div>
    </div>
</div>


</body>
<footer></footer>
</html>

