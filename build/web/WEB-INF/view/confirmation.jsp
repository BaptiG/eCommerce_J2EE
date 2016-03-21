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
		       	   	<div class="col-md-12 ">
				 		<h2>Confirmation de paiment</h2>
				 	</div>	
				 </div>
               
                    <div class="row">
		       	   	<div class="col-md-12 ">
                                    <p>Votre commande a bien été effectuée ! Le numéro de confirmation est le ${confirmationNumber}</p>
                                    <p>Merci ${customer.getNickname()} d'avoir commandé sur Incloser.com !</p>
                         
				 	</div>	
				 </div>
               
               
       	       
           </div>
       </div>

		
</body>
<footer></footer>
</html>

