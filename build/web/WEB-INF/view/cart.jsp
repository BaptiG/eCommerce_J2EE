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
    </head>
    <body>
        <h1>Panier</h1>
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

        </div>









    </body>
</html>
