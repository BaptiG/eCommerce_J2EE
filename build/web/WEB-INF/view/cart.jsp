<%-- 
    Document   : index.jsp
    Created on : 20 janv. 2016, 17:33:33
    Author     : Baptiste
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Incloser Website</title>
        <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>

    </head>
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
            .badge-cart
            {
                font-size:.4em;
            }
            
            
    </style>
    <body>
       <!-- <h1>Panier</h1>
        <div class="container">

            <div class="row">
                <c:choose>
                    <c:when test="${cart.numberOfItems > 1}">
                        <p>Votre panier contient <b>${cart.numberOfItems} éléments</b>.</p>
                    </c:when>
                    <c:when test="${cart.numberOfItems == 1}">
                        <p>Votre panier contient <b>${cart.numberOfItems} élément</b>.</p>
                    </c:when>
                    <c:otherwise>
                        <p>Votre panier est <b>vide</b></p>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="b-line1">      <div class="row">
                    <TABLE style="text-align: center;" border = "1px" > 

                        <c:forEach var="item" items="${cart.items}" >


                            <TR> 
                                <TH align="center" valign="middle"> ${item.product.name} </TH> 
                                <TD align="center" valign="middle"> <img  src="images/products/${item.product.getCategoryIdcategory().getName()}/${item.product.name}.jpg" height ="150px"  /> </TD> 
                                <TD align="center" valign="middle">    &euro; ${item.total} ( &euro; ${item.product.price} / unité ) </TD> 
                                <TD align="center" valign="middle">  
                                    <form action="updateCart" method="post">
                                        <input type="hidden"
                                               name="productId"
                                               value="${item.product.idproduct}">
                                        <input type="text"
                                               maxlength="2"
                                               size="2"
                                               value="${item.quantity}"
                                               name="quantity"
                                               style="margin:5px">
                                        <input type="submit"
                                               name="submit"
                                               value="Mettre à jour">
                                    </form></TD> 

                            </TR> 

                        </c:forEach>

                    </TABLE> 
                </div>
            </div> <br><br><br>
            <div class="b-line1">   <div class="row">  <TABLE style="text-align: center; width:  500px" border = "1px" align="center" > 

                        <TR>
                            <td><b>Total</b></td>
                            <td><b>${cart.numberOfItems} produits</b></td>
                            <td><b>${cart.getSubtotal()} &euro; </b></td>


                        </TR>


                    </TABLE> 




                </div></div>
            <br><br><br>
            <div class="b-line1">            
                <div class="row">
                    <div class="col-md-4">
                        
                        <button type="button" class="btn btn-default btn-lg" >
                            <a href="./clearCart" style="text-decoration:none; "><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Vider le panier</a> 

                        </button>


                    </div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-default btn-lg" >
                            <a href="./" style="text-decoration:none; "><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Poursuivre les achats</a> 

                        </button>


                    </div>
                    <div class="col-md-4">
                        <button type="button" class="btn btn-default btn-lg">
                            <a href="./checkout" style="text-decoration:none; " ><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Procéder au paiement</a> 

                        </button>


                    </div></div>






            </div>
            <br><br><br>

        </div>-->
        <div class="row" style="background-color: #2196f3;height:400px;margin-left:0;margin-right:0;">
               
               
        </div>
        <div class="row" style="min-height: 700px;">


        </div>
         <div class="card-about">
             <div style="padding:2em;">
                <h2><i class="fa fa-cart-arrow-down"></i> Votre panier 
                    
                    <c:choose>
                        <c:when test="${cart.numberOfItems > 1}">         
                            <span class="badge-cart label label-success">${cart.numberOfItems} éléments</span>
                        </c:when>
                        <c:when test="${cart.numberOfItems == 1}">
                            <span class="badge-cart label label-primary">${cart.numberOfItems} élément</span>
                        </c:when>
                        <c:otherwise>
                            <span class="badge-cart label label-danger">Votre panier est <b>vide</b></span>
                        </c:otherwise>
                    </c:choose>
                    
                </h2>
                <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                <p><small>This line of text is meant to be treated as fine print.</small></p>
                
                
                <table class="table table-striped table-hover ">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Produit</th>
                        <th>Prix à l'unité</th>
                        <th>Quantité</th>
                        <th>Prix total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="item" items="${cart.items}" >
                      <tr>
                        <td>${item.product.idproduct}</td>
                        <td>${item.product.name}</td>
                        <td>€${item.product.price}</td>
                        <td>
                            <form action="updateCart" method="post">
                                        <input type="hidden"
                                               name="productId"
                                               value="${item.product.idproduct}">
                                        <input type="text"
                                               maxlength="2"
                                               size="2"
                                               value="${item.quantity}"
                                               name="quantity"
                                               style="margin:5px">
                                        <input type="submit"
                                               name="submit" class="btn btn-success btn-xs"
                                               value="M-A-J">
                            </form>
                            
                        </td>
                        <td>€${item.total}</td>
                       
                      </tr>
                      </c:forEach>
                    </tbody>
                </table> 
                
                <c:choose>
                    <c:when test="${cart.numberOfItems > 1}">         
                           <h2 style="float:right;"><i class="fa fa-credit-card"></i> Total à payer : <b>${cart.getSubtotal()} &euro; </b></h2><br/><br/><br/>
                           <a href="./clearCart" class="btn btn-warning"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Vider le panier</a> 
                           <a href="./" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> Poursuivre les achats</a>
                           <a href="./checkout" class="btn btn-success"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> Procéder au paiement</a> 
                    </c:when>
                    <c:when test="${cart.numberOfItems == 1}">
                        <h2 style="float:right;"><i class="fa fa-credit-card"></i> Total à payer : <b>${cart.getSubtotal()} &euro; </b></h2><br/><br/><br/>
                        <a href="./clearCart" class="btn btn-warning"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Vider le panier</a> 
                        <a href="./" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> Poursuivre les achats</a>
                        <a href="./checkout" class="btn btn-success"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> Procéder au paiement</a> 
                    </c:when>
                    <c:otherwise>
                        <h2 style="float:right;"><i class="fa fa-credit-card"></i> Total à payer : <b>0.00 &euro; </b></h2><br/><br/><br/>
                        
                        <a href="./" class="btn btn-primary"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span> Poursuivre les achats</a>
                    </c:otherwise>
                
                </c:choose>
          
                   
                    
                  
                
             </div>
         </div>
       
       









    </body>
</html>
