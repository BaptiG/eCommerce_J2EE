<%-- 
    Document   : viewprofil
    Created on : 29 mars 2016, 10:24:02
    Author     : zinzin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <title>The Incloser Website </title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		
		<!----//webfonts---->
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
                <script type="text/javascript" src="js/materialize.js"></script>
    </head>
    <style>
            
            .card-about
            {
                position:absolute;
                min-height:1300px;
                width:80%;
                 background-color: #fff;
                transition: box-shadow .25s;
                border-radius: 2px;
                top:15%;
                left:10%;
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                
            }

           .z-depth-1, nav, .card-panel, .card, .toast, .btn, .btn-large, .btn-floating, .dropdown-content, .collapsible, .side-nav {
               box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
             }

           .card-panel {
               transition: box-shadow .25s;
               padding: 20px;
               margin: 0.5rem 0 1rem 0;
               border-radius: 2px;
               background-color: #fff;
             }

             .card {
               position: relative;
               margin: 0.5rem 0 1rem 0;
               background-color: #fff;
               transition: box-shadow .25s;
               border-radius: 2px;
             }

             .card .card-title {
               font-size: 24px;
               font-weight: 300;
             }

             .card .card-title.activator {
               cursor: pointer;
             }

             .card.small, .card.medium, .card.large {
               position: relative;
             }

             .card.small .card-image, .card.medium .card-image, .card.large .card-image {
               max-height: 60%;
               overflow: hidden;
             }

             .card.small .card-content, .card.medium .card-content, .card.large .card-content {
               max-height: 40%;
               overflow: hidden;
             }

             .card.small .card-action, .card.medium .card-action, .card.large .card-action {
               position: absolute;
               bottom: 0;
               left: 0;
               right: 0;
               z-index: 1;
               background-color: inherit;
             }

             .card.small {
               height: 300px;
             }

             .card.medium {
               height: 400px;
             }

             .card.large {
               height: 500px;
             }

             .card .card-image {
               position: relative;
             }

             .card .card-image img {
               display: block;
               border-radius: 2px 2px 0 0;
               position: relative;
               left: 0;
               right: 0;
               top: 0;
               bottom: 0;
               width: 100%;
             }

             .card .card-image .card-title {
               color: #fff;
               position: absolute;
               bottom: 0;
               left: 0;
               padding: 20px;
             }

             .card .card-content {
               padding: 20px;
               border-radius: 0 0 2px 2px;
             }

             .card .card-content p {
               margin: 0;
               color: inherit;
             }

             .card .card-content .card-title {
               line-height: 48px;
             }

             .card .card-action {
               border-top: 1px solid rgba(160, 160, 160, 0.2);
               padding: 20px;
             }

             .card .card-action a:not(.btn):not(.btn-large):not(.btn-floating) {
               color: #ffab40;
               margin-right: 20px;
               transition: color .3s ease;
               text-transform: uppercase;
             }

             .card .card-action a:not(.btn):not(.btn-large):not(.btn-floating):hover {
               color: #ffd8a6;
             }

             .card .card-reveal {
               padding: 20px;
               position: absolute;
               background-color: #fff;
               width: 100%;
               overflow-y: auto;
               top: 100%;
               height: 100%;
               z-index: 1;
               display: none;
             }

             .card .card-reveal .card-title {
               cursor: pointer;
               display: block;
             }
           .waves-effect {
               position: relative;
               cursor: pointer;
               display: inline-block;
               overflow: hidden;
               -webkit-user-select: none;
               -moz-user-select: none;
               -ms-user-select: none;
               user-select: none;
               -webkit-tap-highlight-color: transparent;
               vertical-align: middle;
               z-index: 1;
               will-change: opacity, transform;
               transition: all .3s ease-out;
               }

               .waves-effect .waves-ripple {
               position: absolute;
               border-radius: 50%;
               width: 20px;
               height: 20px;
               margin-top: -10px;
               margin-left: -10px;
               opacity: 0;
               background: rgba(0, 0, 0, 0.2);
               transition: all 0.7s ease-out;
               transition-property: opacity, -webkit-transform;
               transition-property: transform, opacity;
               transition-property: transform, opacity, -webkit-transform;
               -webkit-transform: scale(0);
                transform: scale(0);
               pointer-events: none;
               }

               .waves-effect.waves-light .waves-ripple {
               background-color: rgba(255, 255, 255, 0.45);
               }

               .waves-effect.waves-red .waves-ripple {
               background-color: rgba(244, 67, 54, 0.7);
               }

               .waves-effect.waves-yellow .waves-ripple {
               background-color: rgba(255, 235, 59, 0.7);
               }

               .waves-effect.waves-orange .waves-ripple {
               background-color: rgba(255, 152, 0, 0.7);
               }

               .waves-effect.waves-purple .waves-ripple {
               background-color: rgba(156, 39, 176, 0.7);
               }

               .waves-effect.waves-green .waves-ripple {
               background-color: rgba(76, 175, 80, 0.7);
               }

               .waves-effect.waves-teal .waves-ripple {
               background-color: rgba(0, 150, 136, 0.7);
               }

               .waves-effect input[type="button"], .waves-effect input[type="reset"], .waves-effect input[type="submit"] {
               border: 0;
               font-style: normal;
               font-size: inherit;
               text-transform: inherit;
               background: none;
               }

               .waves-notransition {
               transition: none !important;
               }

               .waves-circle {
               -webkit-transform: translateZ(0);
                transform: translateZ(0);
               -webkit-mask-image: -webkit-radial-gradient(circle, white 100%, black 100%);
               }

               .waves-input-wrapper {
               border-radius: 0.2em;
               vertical-align: bottom;
               }

               .waves-input-wrapper .waves-button-input {
               position: relative;
               top: 0;
               left: 0;
               z-index: 1;
               }

               .waves-circle {
               text-align: center;
               width: 2.5em;
               height: 2.5em;
               line-height: 2.5em;
               border-radius: 50%;
               -webkit-mask-image: none;
               }

               .waves-block {
               display: block;
               }

               /* Firefox Bug: link not triggered */
               a.waves-effect .waves-ripple {
               z-index: -1;
               }

               .card-image img
               {
                   padding: 20px;
               }
               .title_parralax
               {
                   color:white;
                   text-align: center;
                   padding: 10px;
                   font-weight: 300;
                   margin-top: 190px;
               }
               .little_title_parralax
               {
                   color:white;
                   font-size:.5em;
                   font-weight: 100;
               }
               .container-square
               {
                   margin-top: 102px;
               }
               .square
               {
                   padding-bottom:20px;

               }
               .square i 
               {
                   color:white;
                   font-size: 4em;
                   margin-top: 22px;
               }
               .square-pink
               {
                   background-color:#e91e63;
               }
               .square-red
               {
                    background-color:#8bc34a;
               }
               .square-blue
               {
                    background-color:#2196f3;
               }
               .square-yellow
               {
                    background-color:#ffeb3b;
               }
     
            
            
    </style>
    <script>
          $(document).ready(function(){
             
             $("#main-div").css("min-height","1300px")
             $("#edit-profil-div").css("display","none");
             $("#edit-profil-more-div").css("display","none");
             $( "#button-edit" ).click(function() {
                $("#edit-profil-div").css("display","block");
                $("#edit-profil-more-div").css("display","block");
                $("#main-div").css("min-height","2050px")

            });
        
          });
    </script>
    <body>
       <div class="row" style="background-color: #2196f3;height:400px;margin-left:0;margin-right:0;">
               
               
           </div>
           <div class="row" id="main-div">
               
               
           </div>
            <div class="card-about">
                <div  style="padding:2em;">
                    <h2><i class="fa fa-user"></i> Votre profil client <a id="button-edit" href="#" style="float:right;" alt="éditer vos informations personnelles"><i class="fa fa-pencil"></i></a></h2>
                <p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                <blockquote>
                <div id="profil-div">
                <form class="form-horizontal">
                <fieldset>
                    <legend><i class="fa fa-info-circle"></i> Informations utilisateur</legend>
                     <div class="form-group">
                        <div class="col-lg-2 control-label">Surnom : </div>
                        <div class="col-lg-10">
                            <p style="line-height:44px;">${customer.getNickname()}</p>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-2 control-label">E-mail : </div>
                        <div class="col-lg-10">
                            <p style="line-height:44px;">${customer.getEmail()}</p>
                        </div>
                      </div>
                </fieldset>
                </form>
                    
                    
                </div>
                <div id="edit-profil-div">
                <form id="editUserInfo" class="form-horizontal" method="post" action='register'>
                 <input type="hidden"
                           name="typeForm"
                           value="editUserInfo">
                <fieldset>
                    <legend><i class="fa fa-pencil"></i> Edition informations utilisateur</legend>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Surnom</label>
                    <div class="col-lg-10">
                      <input name = "nickname" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getNickname()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Mot de passe</label>
                    <div class="col-lg-10">
                      <input name = "password" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control" placeholder="*******" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">E-mail</label>
                    <div class="col-lg-10">
                      <input name = "email" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getEmail()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Effacer</button>
                      <button type="submit" class="btn btn-primary">Enregistrer</button>
                    </div>
                  </div>
                </fieldset>
              </form> 
                </div>
                </blockquote>
                <p><small>This line of text is meant to be treated as fine print.</small></p>    
                <blockquote>
                <div id="profil-more-div">
                    <form class="form-horizontal" >
                    <fieldset>
                      <legend><i class="fa fa-home"></i> Adresse de facturation</legend>
                      <div class="form-group">
                        <div class="col-lg-2 control-label">Nom : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getName() != null}">
                                    <p style="line-height:44px;">${customer.getName()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de nom.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                        <div class="col-lg-2 control-label">Ville : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getCityRegion() != null}">
                                    <p style="line-height:44px;">${customer.getCityRegion()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de ville.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-2 control-label">Prénom : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getFirtname() != null}">
                                    <p style="line-height:44px;">${customer.getFirtname()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de prénom.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                        <div class="col-lg-2 control-label">Code postal : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getCcNumber() != null}">
                                    <p style="line-height:44px;">${customer.getCcNumber()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de code postal.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-2 control-label">Rue : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getAdress() != null}">
                                    <p style="line-height:44px;">${customer.getAdress()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de rue.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                        <div class="col-lg-2 control-label">Téléphone : </div>
                        <div class="col-lg-4">
                            <c:choose>
                                <c:when test="${customer.getPhone() != null}">
                                    <p style="line-height:44px;">${customer.getPhone()}</p>
                                </c:when>
                                <c:otherwise>
                                    <p style="line-height:44px;">Vous n'avez pas renseigné de téléphone.</p>
                                </c:otherwise>
                            </c:choose>
                            
                        </div>
                        
                      </div>
                    </fieldset>
                    </form>
                </div>
                <div id="edit-profil-more-div">
                <form id="editFactureInfo" class="form-horizontal" method="post" action='register'>
                           <input type="hidden"
                           name="typeForm"
                           value="editFactureInfo">
                <fieldset>
                  <legend><i class="fa fa-pencil"></i> Edition adresse de facturation</legend>
                  <div class="form-group">
                    <label for="inputName" class="col-lg-2 control-label">Nom</label>
                    <div class="col-lg-10">
                      <input name ="name" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getName()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputFirstName" class="col-lg-2 control-label">Prénom</label>
                    <div class="col-lg-10">
                      <input name ="firstname" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getFirtname()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-lg-2 control-label">Civilité</label>
                    <div class="col-lg-10">
                      <div class="radio">
                        <label>
                          <input name ="civility" id="optionsRadios1" value="Monsieur" checked="" type="radio">
                          Mr.
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input name ="civility" id="optionsRadios2" value="Madame" type="radio">
                          Mme.
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label  for="inputAdress" class="col-lg-2 control-label">Rue</label>
                    <div class="col-lg-10">
                      <input name ="address" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getAdress()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Ville</label>
                    <div class="col-lg-10">
                      <input name ="cityRegion" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control" placeholder="${customer.getCityRegion()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Code postal</label>
                    <div class="col-lg-10">
                      <input name ="ccNumber" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getCcNumber()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Téléphone</label>
                    <div class="col-lg-10">
                      <input name ="phone" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAALZJREFUOBFjYKAANDQ0rGWiQD9IqzgL0BQ3IKMXiB8AcSKQ/waIrYDsKUD8Fir2pKmpSf/fv3+zgPxfzMzMSbW1tbeBbAaQC+b+//9fB4h9gOwikCAQTAPyDYHYBciuBQkANfcB+WZAbPP37992kBgIUOoFBiZGRsYkIL4ExJvZ2NhAXmFgYmLKBPLPAfFuFhaWJpAYEBQC+SeA+BDQC5UQIQpJYFgdodQLLyh0w6j20RCgUggAAEREPpKMfaEsAAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;" class="form-control"  placeholder="${customer.getPhone()}" type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="select" class="col-lg-2 control-label">Pays</label>
                    <div class="col-lg-10">
                      <select name ="country" class="form-control" id="select">
                        <option value="France" selected="selected">France </option>

                        <option value="Afghanistan">Afghanistan </option>
                        <option value="Afrique_Centrale">Afrique_Centrale </option>
                        <option value="Afrique_du_sud">Afrique_du_Sud </option>
                        <option value="Albanie">Albanie </option>
                        <option value="Algerie">Algerie </option>
                        <option value="Allemagne">Allemagne </option>
                        <option value="Andorre">Andorre </option>
                        <option value="Angola">Angola </option>
                        <option value="Anguilla">Anguilla </option>
                        <option value="Arabie_Saoudite">Arabie_Saoudite </option>
                        <option value="Argentine">Argentine </option>
                        <option value="Armenie">Armenie </option>
                        <option value="Australie">Australie </option>
                        <option value="Autriche">Autriche </option>
                        <option value="Azerbaidjan">Azerbaidjan </option>

                        <option value="Bahamas">Bahamas </option>
                        <option value="Bangladesh">Bangladesh </option>
                        <option value="Barbade">Barbade </option>
                        <option value="Bahrein">Bahrein </option>
                        <option value="Belgique">Belgique </option>
                        <option value="Belize">Belize </option>
                        <option value="Benin">Benin </option>
                        <option value="Bermudes">Bermudes </option>
                        <option value="Bielorussie">Bielorussie </option>
                        <option value="Bolivie">Bolivie </option>
                        <option value="Botswana">Botswana </option>
                        <option value="Bhoutan">Bhoutan </option>
                        <option value="Boznie_Herzegovine">Boznie_Herzegovine </option>
                        <option value="Bresil">Bresil </option>
                        <option value="Brunei">Brunei </option>
                        <option value="Bulgarie">Bulgarie </option>
                        <option value="Burkina_Faso">Burkina_Faso </option>
                        <option value="Burundi">Burundi </option>

                        <option value="Caiman">Caiman </option>
                        <option value="Cambodge">Cambodge </option>
                        <option value="Cameroun">Cameroun </option>
                        <option value="Canada">Canada </option>
                        <option value="Canaries">Canaries </option>
                        <option value="Cap_vert">Cap_Vert </option>
                        <option value="Chili">Chili </option>
                        <option value="Chine">Chine </option>
                        <option value="Chypre">Chypre </option>
                        <option value="Colombie">Colombie </option>
                        <option value="Comores">Colombie </option>
                        <option value="Congo">Congo </option>
                        <option value="Congo_democratique">Congo_democratique </option>
                        <option value="Cook">Cook </option>
                        <option value="Coree_du_Nord">Coree_du_Nord </option>
                        <option value="Coree_du_Sud">Coree_du_Sud </option>
                        <option value="Costa_Rica">Costa_Rica </option>
                        <option value="Cote_d_Ivoire">Côte_d_Ivoire </option>
                        <option value="Croatie">Croatie </option>
                        <option value="Cuba">Cuba </option>

                        <option value="Danemark">Danemark </option>
                        <option value="Djibouti">Djibouti </option>
                        <option value="Dominique">Dominique </option>

                        <option value="Egypte">Egypte </option>
                        <option value="Emirats_Arabes_Unis">Emirats_Arabes_Unis </option>
                        <option value="Equateur">Equateur </option>
                        <option value="Erythree">Erythree </option>
                        <option value="Espagne">Espagne </option>
                        <option value="Estonie">Estonie </option>
                        <option value="Etats_Unis">Etats_Unis </option>
                        <option value="Ethiopie">Ethiopie </option>

                        <option value="Falkland">Falkland </option>
                        <option value="Feroe">Feroe </option>
                        <option value="Fidji">Fidji </option>
                        <option value="Finlande">Finlande </option>
                        <option value="France">France </option>

                        <option value="Gabon">Gabon </option>
                        <option value="Gambie">Gambie </option>
                        <option value="Georgie">Georgie </option>
                        <option value="Ghana">Ghana </option>
                        <option value="Gibraltar">Gibraltar </option>
                        <option value="Grece">Grece </option>
                        <option value="Grenade">Grenade </option>
                        <option value="Groenland">Groenland </option>
                        <option value="Guadeloupe">Guadeloupe </option>
                        <option value="Guam">Guam </option>
                        <option value="Guatemala">Guatemala</option>
                        <option value="Guernesey">Guernesey </option>
                        <option value="Guinee">Guinee </option>
                        <option value="Guinee_Bissau">Guinee_Bissau </option>
                        <option value="Guinee equatoriale">Guinee_Equatoriale </option>
                        <option value="Guyana">Guyana </option>
                        <option value="Guyane_Francaise ">Guyane_Francaise </option>

                        <option value="Haiti">Haiti </option>
                        <option value="Hawaii">Hawaii </option>
                        <option value="Honduras">Honduras </option>
                        <option value="Hong_Kong">Hong_Kong </option>
                        <option value="Hongrie">Hongrie </option>

                        <option value="Inde">Inde </option>
                        <option value="Indonesie">Indonesie </option>
                        <option value="Iran">Iran </option>
                        <option value="Iraq">Iraq </option>
                        <option value="Irlande">Irlande </option>
                        <option value="Islande">Islande </option>
                        <option value="Israel">Israel </option>
                        <option value="Italie">italie </option>

                        <option value="Jamaique">Jamaique </option>
                        <option value="Jan Mayen">Jan Mayen </option>
                        <option value="Japon">Japon </option>
                        <option value="Jersey">Jersey </option>
                        <option value="Jordanie">Jordanie </option>

                        <option value="Kazakhstan">Kazakhstan </option>
                        <option value="Kenya">Kenya </option>
                        <option value="Kirghizstan">Kirghizistan </option>
                        <option value="Kiribati">Kiribati </option>
                        <option value="Koweit">Koweit </option>

                        <option value="Laos">Laos </option>
                        <option value="Lesotho">Lesotho </option>
                        <option value="Lettonie">Lettonie </option>
                        <option value="Liban">Liban </option>
                        <option value="Liberia">Liberia </option>
                        <option value="Liechtenstein">Liechtenstein </option>
                        <option value="Lituanie">Lituanie </option>
                        <option value="Luxembourg">Luxembourg </option>
                        <option value="Lybie">Lybie </option>

                        <option value="Macao">Macao </option>
                        <option value="Macedoine">Macedoine </option>
                        <option value="Madagascar">Madagascar </option>
                        <option value="Madère">Madère </option>
                        <option value="Malaisie">Malaisie </option>
                        <option value="Malawi">Malawi </option>
                        <option value="Maldives">Maldives </option>
                        <option value="Mali">Mali </option>
                        <option value="Malte">Malte </option>
                        <option value="Man">Man </option>
                        <option value="Mariannes du Nord">Mariannes du Nord </option>
                        <option value="Maroc">Maroc </option>
                        <option value="Marshall">Marshall </option>
                        <option value="Martinique">Martinique </option>
                        <option value="Maurice">Maurice </option>
                        <option value="Mauritanie">Mauritanie </option>
                        <option value="Mayotte">Mayotte </option>
                        <option value="Mexique">Mexique </option>
                        <option value="Micronesie">Micronesie </option>
                        <option value="Midway">Midway </option>
                        <option value="Moldavie">Moldavie </option>
                        <option value="Monaco">Monaco </option>
                        <option value="Mongolie">Mongolie </option>
                        <option value="Montserrat">Montserrat </option>
                        <option value="Mozambique">Mozambique </option>

                        <option value="Namibie">Namibie </option>
                        <option value="Nauru">Nauru </option>
                        <option value="Nepal">Nepal </option>
                        <option value="Nicaragua">Nicaragua </option>
                        <option value="Niger">Niger </option>
                        <option value="Nigeria">Nigeria </option>
                        <option value="Niue">Niue </option>
                        <option value="Norfolk">Norfolk </option>
                        <option value="Norvege">Norvege </option>
                        <option value="Nouvelle_Caledonie">Nouvelle_Caledonie </option>
                        <option value="Nouvelle_Zelande">Nouvelle_Zelande </option>

                        <option value="Oman">Oman </option>
                        <option value="Ouganda">Ouganda </option>
                        <option value="Ouzbekistan">Ouzbekistan </option>

                        <option value="Pakistan">Pakistan </option>
                        <option value="Palau">Palau </option>
                        <option value="Palestine">Palestine </option>
                        <option value="Panama">Panama </option>
                        <option value="Papouasie_Nouvelle_Guinee">Papouasie_Nouvelle_Guinee </option>
                        <option value="Paraguay">Paraguay </option>
                        <option value="Pays_Bas">Pays_Bas </option>
                        <option value="Perou">Perou </option>
                        <option value="Philippines">Philippines </option>
                        <option value="Pologne">Pologne </option>
                        <option value="Polynesie">Polynesie </option>
                        <option value="Porto_Rico">Porto_Rico </option>
                        <option value="Portugal">Portugal </option>

                        <option value="Qatar">Qatar </option>

                        <option value="Republique_Dominicaine">Republique_Dominicaine </option>
                        <option value="Republique_Tcheque">Republique_Tcheque </option>
                        <option value="Reunion">Reunion </option>
                        <option value="Roumanie">Roumanie </option>
                        <option value="Royaume_Uni">Royaume_Uni </option>
                        <option value="Russie">Russie </option>
                        <option value="Rwanda">Rwanda </option>

                        <option value="Sahara Occidental">Sahara Occidental </option>
                        <option value="Sainte_Lucie">Sainte_Lucie </option>
                        <option value="Saint_Marin">Saint_Marin </option>
                        <option value="Salomon">Salomon </option>
                        <option value="Salvador">Salvador </option>
                        <option value="Samoa_Occidentales">Samoa_Occidentales</option>
                        <option value="Samoa_Americaine">Samoa_Americaine </option>
                        <option value="Sao_Tome_et_Principe">Sao_Tome_et_Principe </option>
                        <option value="Senegal">Senegal </option>
                        <option value="Seychelles">Seychelles </option>
                        <option value="Sierra Leone">Sierra Leone </option>
                        <option value="Singapour">Singapour </option>
                        <option value="Slovaquie">Slovaquie </option>
                        <option value="Slovenie">Slovenie</option>
                        <option value="Somalie">Somalie </option>
                        <option value="Soudan">Soudan </option>
                        <option value="Sri_Lanka">Sri_Lanka </option>
                        <option value="Suede">Suede </option>
                        <option value="Suisse">Suisse </option>
                        <option value="Surinam">Surinam </option>
                        <option value="Swaziland">Swaziland </option>
                        <option value="Syrie">Syrie </option>

                        <option value="Tadjikistan">Tadjikistan </option>
                        <option value="Taiwan">Taiwan </option>
                        <option value="Tonga">Tonga </option>
                        <option value="Tanzanie">Tanzanie </option>
                        <option value="Tchad">Tchad </option>
                        <option value="Thailande">Thailande </option>
                        <option value="Tibet">Tibet </option>
                        <option value="Timor_Oriental">Timor_Oriental </option>
                        <option value="Togo">Togo </option>
                        <option value="Trinite_et_Tobago">Trinite_et_Tobago </option>
                        <option value="Tristan da cunha">Tristan de cuncha </option>
                        <option value="Tunisie">Tunisie </option>
                        <option value="Turkmenistan">Turmenistan </option>
                        <option value="Turquie">Turquie </option>

                        <option value="Ukraine">Ukraine </option>
                        <option value="Uruguay">Uruguay </option>

                        <option value="Vanuatu">Vanuatu </option>
                        <option value="Vatican">Vatican </option>
                        <option value="Venezuela">Venezuela </option>
                        <option value="Vierges_Americaines">Vierges_Americaines </option>
                        <option value="Vierges_Britanniques">Vierges_Britanniques </option>
                        <option value="Vietnam">Vietnam </option>

                        <option value="Wake">Wake </option>
                        <option value="Wallis et Futuma">Wallis et Futuma </option>

                        <option value="Yemen">Yemen </option>
                        <option value="Yougoslavie">Yougoslavie </option>

                        <option value="Zambie">Zambie </option>
                        <option value="Zimbabwe">Zimbabwe </option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Effacer</button>
                      <button type="submit" class="btn btn-primary">Enregistrer</button>
                    </div>
                  </div>
                </fieldset>
              </form>
              </div>
              </blockquote><br/><br/>
              <p class="text-muted">
                  
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit bibendum mollis. Quisque pellentesque rhoncus felis ac dapibus. Aliquam erat volutpat. Duis sit amet mi lectus. Aliquam erat volutpat. In a cursus lacus, sed pharetra massa. Mauris non tincidunt nibh, id auctor eros. Aliquam sit amet facilisis felis. Maecenas lectus metus, placerat a porta ac, egestas vel massa. Sed non scelerisque ex. In volutpat, elit vel tincidunt pharetra, justo est cursus lacus, vitae euismod quam lectus in dolor. Nulla aliquam eget metus id tincidunt. Ut non metus consectetur, scelerisque nibh non, interdum magna. Quisque tristique consectetur lorem eget efficitur. Aenean pulvinar, dui imperdiet tempus elementum, elit nunc tristique felis, at maximus sapien risus et mi.

Morbi tristique velit dictum nunc rhoncus, sed auctor eros placerat. Nunc luctus ex a lorem gravida fermentum. In lacinia est at quam venenatis porttitor. Nam porttitor posuere ex non gravida. Nullam quis lobortis turpis. 
                  
              </p><br/><br/>
              <blockquote>
                  <h5><i class="fa fa-clock-o"></i> Vos dernières commandes</h5>
                  
              
                   <div class="row">
                   <c:forEach var="order" items="${orderSorted}" >
                   <div class="col-md-4">
                   <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="data:image/svg+xml;base64,CiAgPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSIwIDAgMTAyNCAxMDI0IiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAxMDI0IDEwMjQiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8bWV0YWRhdGE+IEZyZWUgSWNvbiBEb3dubG9hZCAtLSB3d3cub25saW5ld2ViZm9udHMuY29tIDwvbWV0YWRhdGE+CgogIDxwYXRoIHN0eWxlPSJmaWxsOiM1NmFiZTQiIGQ9Ik00NzYuNzM2IDExNS40NTYgMzgzLjQ4OCAxMTUuNDU2IDM4My40ODggMTg1Ljk4NCA2NDAuNTEyIDE4NS45ODQgNjQwLjUxMiAxMTUuNDU2IDU0Ny4yNjQgMTE1LjQ1NiA1NDcuMjY0IDkyLjY3MiA2NjMuODcyIDkyLjY3MiA2NjMuODcyIDIyLjIwOCAzNjAuMTkyIDIyLjIwOCAzNjAuMTkyIDkyLjY3MiA0NzYuNzM2IDkyLjY3MloiPjwvcGF0aD4KPHBhdGggc3R5bGU9ImZpbGw6IzU2YWJlNCIgZD0iTTI2MC44NjQgNjYyLjAxNmw1MDIuMzM2IDAgMCA3MC4xNDQtNTAyLjMzNiAwIDAtNzAuMTQ0WiI+PC9wYXRoPgo8cGF0aCBzdHlsZT0iZmlsbDojNTZhYmU0IiBkPSJNNzkxLjc0NCA5Mi4wOTZsLTU4LjU2IDAgMCA3MC41MjggNTguNTYgMGM0NS41NjggMCA4MS4yOCAzNS43MTIgODEuMjggODEuMjhsMCA1ODIuNzg0YzAgNTcuNjY0LTQ2LjkxMiAxMDQuNjQtMTA0LjU3NiAxMDQuNjRMMjU1LjYxNiA5MzEuMzI4Yy01Ny43MjggMC0xMDQuNjQtNDYuOTEyLTEwNC42NC0xMDQuNjRMMTUwLjk3NiAyNDMuOTA0YzAtNDUuNTY4IDM1LjcxMi04MS4yOCA4MS4yOC04MS4yOGw1OC41NiAwTDI5MC44MTYgOTIuMTYgMjMyLjI1NiA5Mi4xNmMtODUuMTIgMC0xNTEuODA4IDY2LjY4OC0xNTEuODA4IDE1MS44MDhsMCA1ODIuNzg0YzAgOTYuNTc2IDc4LjUyOCAxNzUuMTA0IDE3NS4xMDQgMTc1LjEwNGw1MTIuODMyIDBjOTYuNTc2IDAgMTc1LjEwNC03OC41MjggMTc1LjEwNC0xNzUuMTA0TDk0My40ODggMjQzLjkwNEM5NDMuNTUyIDE1OC43ODQgODc2Ljg2NCA5Mi4wOTYgNzkxLjc0NCA5Mi4wOTZ6Ij48L3BhdGg+CjxwYXRoIHN0eWxlPSJmaWxsOiM1NmFiZTQiIGQ9Ik0yNTkuOTY4IDUwMi4yNzJsNTAyLjMzNiAwIDAgNzAuMjA4LTUwMi4zMzYgMCAwLTcwLjIwOFoiPjwvcGF0aD4KPHBhdGggc3R5bGU9ImZpbGw6IzU2YWJlNCIgZD0iTTI2MC40MTYgMzQyLjIwOGw1MDIuMzM2IDAgMCA3MC4yMDgtNTAyLjMzNiAwIDAtNzAuMjA4WiI+PC9wYXRoPgoKCjwvc3ZnPiAg" width="256" height="256"/>
                        </div>
                        <div class="card-content">
                          <span class="card-title activator grey-text text-darken-4">Le ${order.dateCreated}<i class="fa fa-ellipsis-v" style="float:right;"></i></span>
                          <p>
                              Montant de la commande : ${order.amount}€
                          </p>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Résumé de la commande<i class="fa fa-times" style="float:right;"></i></span>
                          <c:forEach var="orderproduct" items="${orderManager.getOrderProductByIdOrder(order)}"  >
                          <div class="panel panel-success">
                                <div class="panel-heading">
                                  <h3 class="panel-title">Quantité : ${orderproduct.quantity}</h3>
                                </div>
                                <div class="panel-body">
                                  ${orderproduct.idProduct.name}
                                </div>
                            </div>
                                                   
                          </c:forEach>
                        </div>
                    </div>
                       
                   </div>
                  
              
              
      
                  
            
            
            
                    </c:forEach>
              </blockquote>
                </div>
            </div>
    </body>
</html>
