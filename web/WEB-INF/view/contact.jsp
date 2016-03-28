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
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800,300' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		
		<!--  jquery plguin -->
	</head>
        <style>
            
            .blue-rectangle
            {
                background-color: #2196f3;
            }
            .map
            {
                height:100%;
            }
            .row
            {
                margin-bottom : 0 !important;
            }
            .col-md-8,.col-md-4
            {
                    padding-left: 0 !important;
                    padding-right: 0 !important;
            }
            .title_contact
            {
                color:white;
                font-size:1.5em;
                line-height:35px;
                font-weight:100;
                text-align:justify;
                padding:25px;
            }
            .my-form
            {
                padding:25px;
            }
           
            .my-form div label
            {
                color:white;
            }
            .form-group
            {
                padding-top:52px;
            }
            
        </style>
	<body>
		<!----start-container----->
	 <header></header>
      
        <div class="row">
               <div class="col-md-4 text-center blue-rectangle">
                   <h3 class="title_contact"><i class="fa fa-exclamation-triangle fa-3x fa-pull-left fa-border"></i>Vous avez un problème ou désirez en savoir plus sur notre entreprise ? Nous sommes là pour vous répondre ! Veuillez remplir le formulaire suivant et un membre de notre équipe vous contactera dans les 24H...</h3>
                <form class="form-horizontal my-form" role="form">
                     <div class="form-group">
                       <label for="inputmane3" class="col-sm-2 control-label">Votre Nom</label>
                       <div class="col-sm-10">
                         <input type="text" class="form-control" id="name" placeholder="Nom"  >
                       </div>
                     </div>
                     <div class="form-group">
                       <label for="inputEmail3" class="col-sm-2 control-label">Votre E-mail</label>
                       <div class="col-sm-10">
                         <input type="email" class="form-control" id="inputEmail3" placeholder="E-mail">
                       </div>
                     </div>
                     <div class="form-group">
                       <label for="inputPassword3" class="col-sm-2 control-label">Votre Mot de Passe</label>
                       <div class="col-sm-10">
                         <input type="password" class="form-control" id="inputPassword3" placeholder="Mot de passe">
                       </div>
                     </div>
                     <div class="form-group">
                       <label for="inputPassword3" class="col-sm-2 control-label">Votre Site Internet</label>
                       <div class="col-sm-10">
                         <input type="website" class="form-control" id="website" placeholder="www.exemple.com">
                       </div>
                     </div>
                     <div class="form-group">
                       <label for="inputPassword3" class="col-sm-2 control-label">Votre Message</label>
                       <div class="col-sm-10">
                        <textarea placeholder="Votre message" style="width:100%;padding:20px;"></textarea>
                       </div>
                     </div>		
                     <div class="form-group">
                       <div class="col-sm-offset-2 col-sm-10">
                         <button type="submit" class="btn btn-default" style="float: right;">Envoyer</button>
                       </div>
                     </div>
                </form>
               </div>
               <div class="col-md-8 text-center standart-rectangle">         
                    <div class="map">
                         <iframe width="100%" height="1000" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2625.942167270925!2d2.5816832154459775!3d48.84024180993877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e60e31efbda911%3A0xe643b83e6c217949!2sESIEE!5e0!3m2!1sfr!2sfr!4v1453818796077"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px"></a></small>
                    </div>
               </div>         
        </div>
       	     
         
       

		
</body>
<footer></footer>
</html>


