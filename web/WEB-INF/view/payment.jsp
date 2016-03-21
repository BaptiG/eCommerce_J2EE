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
          
            <div class="col-md-6 ">
                <h2>Formulaire de paiement</h2>
                <form method="post" action='payment'>

                    <div class="form-group">
                        <label>Numéro</label>
                        <input type="text" name="cardNumber" class="form-control"  placeholder="Numéro de carte de crédit">
                    </div>
                    <div class="form-group">
                        <label>Date d'expiration</label>
                        <input type="text" name="expireDate" class="form-control"  placeholder="MM/AA">
                    </div>
                    <div class="form-group">
                        <label>Titulaire</label>
                        <input type="text" name="owner" class="form-control" placeholder="Dupont Yoann">
                    </div>
                    <div class="form-group">
                        <label>Sécurité</label>
                        <input type="text" name="security" class="form-control" placeholder="XXX">
                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <br>
            </div>	
        </div>
    </div>

</div>
</div>


</body>
<footer></footer>
</html>

