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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        </script>
        <!----webfonts---->
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    </head>
<header></header>
<style>
            
            .card-about
            {
                position:absolute;
                height:1000px;
                width:80%;
                 background-color: #fff;
                transition: box-shadow .25s;
                border-radius: 2px;
                top:15%;
                left:10%;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                
            }
            .small
            {
                color: #2196f3 !important;
                font-weight: 200  !important;;
                font-size:.35em  !important;;
                text-align: right;
            }
            
        </style>
<body>

    <!--<div class="container">
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
</div>-->
<div class="row" style="background-color: #2196f3;height:400px;margin-left:0;margin-right:0;">


    </div>
    <div class="row" style="min-height: 700px;">


    </div>
     <div class="card-about">
         <div style="padding:2em;">
        <h2><i class="fa fa-cart-arrow-down"></i> Résumé de la transaction 
                    
                    <c:choose>
                        <c:when test="${cart.numberOfItems > 1}">         
                            <span class="badge-cart label label-success">${cart.numberOfItems} éléments</span>
                        </c:when>
                        <c:when test="${cart.numberOfItems == 1}">
                            <span class="badge-cart label label-primary">${cart.numberOfItems} élément</span>
                        </c:when>
                    </c:choose>
                    
                </h2>
                <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                <p><small>This line of text is meant to be treated as fine print.</small></p>
                
                
                <table class="table table-striped table-hover ">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Total panier</th>
                        <th>Frais de livraison</th>
                        <th>Nombre d'articles</th>
                      </tr>
                    </thead>
                    <tbody>
                     
                      <tr>
                        <td>~1</td>
                        <td>${cart.getSubtotal()} &euro;</td>
                        <c:choose>   <c:when test="${cart.getSubtotal()>500}">
                        
                        <td>Offert</td>
                        </c:when>
                        <c:otherwise>
                            <td> 10 € </td>
                        </c:otherwise>
                        </c:choose>
                        <td>${cart.numberOfItems}</td>
                      </tr>
                    
                     
                    </tbody>
                </table>
                <div class="row">
                <div class="col-md-6">
                <h2><i class="fa fa-check-square-o"></i> Formulaire de paiement</h2>
                <form method="post" action='payment'>

                    <div class="form-group">
                        <label>Numéro carte</label>
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

                    <button type="submit" class="btn btn-default">Payer</button>
                </form>        
                </div>
                <div class="col-md-6">
                <c:choose>
                    <c:when test="${cart.getSubtotal()>500}">         
                        <h2 style="float:right;"><i class="fa fa-credit-card"></i> Total à payer : <b>  ${cart.calculateTotal(0)} ${cart.getTotal()} &euro;      
                           
                           <a href="./cart" class="btn btn-success" ><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Retour au panier</a> 
                    </c:when>
                   
                    <c:otherwise>
                        <h2 style="float:right;"><i class="fa fa-credit-card"></i> Total à payer : <b> ${cart.calculateTotal(10)} ${cart.getTotal()} &euro; </b></h2><br/><br/><br/>
                        
                        <a href="./" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> Retour au panier</a>
                    </c:otherwise>
                    
                </c:choose>
                </div>
                </div>    
         </div>
     </div>

</body>
<footer></footer>
</html>

