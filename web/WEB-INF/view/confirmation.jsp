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
<div class="row" style="background-color: #2196f3;height:400px;margin-left:0;margin-right:0;">


    </div>
    <div class="row" style="min-height: 700px;">


    </div>
     <div class="card-about">
         <div style="padding:2em;">
        <h2><i class="fa fa-check-circle"></i> Confirmation de la transaction 
                 
        </h2><br/><br/>
         <div class="alert alert-dismissible alert-success">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Félicitations !</strong> Votre commande a été validée. Votre numéro de commande est le : ${confirmationNumber}
         </div>      
         </div>
     </div>
       
		
       </body>
<footer></footer>
</html>


