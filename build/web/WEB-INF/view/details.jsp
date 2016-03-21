<%-- 
    Document   : index.jsp
    Created on : 20 janv. 2016, 17:33:33
    Author     : Baptiste
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>
	<head>
		<title>The Yolk Website Template :: w3layouts</title>
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
	    <script type="text/javascript" src="js/jquery.min.js"></script>
<!----details-product-slider--->
<!-- FlexSlider -->
	<script src="js/imagezoom.js"></script>
		<script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<script>
		// Can also be used with $(document).ready()
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				 });
			});
		</script>
	<!-- //FlexSlider-->

<!----//details-product-slider--->



	</head>
         <header></header>
	<body>
		<!----start-container----->
		
    <div class="single">
         <div class="container">
     	    <div class="rsidebar span_1_of_left">
				   <section class="sky-form">
                   	  <h4>Occasion</h4>
						<div class="row row1 scroll-pane" style="overflow: hidden; padding: 0px; width: 283px;">
							
							
						 <div class="jspContainer" style="width: 283px; height: 200px;"><div class="jspPane" style="padding: 20px; top: 0px; left: 0px; width: 243px;"><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Athletic (20)</label>
							</div><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Casual (45)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Casual (45)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
						    </div></div></div></div>
                   	  <h4>Category</h4>
						<div class="row row1 scroll-pane" style="overflow: hidden; padding: 0px; width: 283px;">
							
							
						<div class="jspContainer" style="width: 283px; height: 200px;"><div class="jspPane" style="padding: 20px; top: 0px; left: 0px; width: 243px;"><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Flats (70)</label>
							</div><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Heels (38)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
						    </div></div></div></div>
					  <h4>Styles</h4>
						<div class="row row1 scroll-pane" style="overflow: hidden; padding: 0px; width: 283px;">
							
							
						<div class="jspContainer" style="width: 283px; height: 200px;"><div class="jspPane" style="padding: 20px; top: 0px; left: 0px; width: 243px;"><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Athletic (20)</label>
							</div><div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Ballerina (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pumps (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>High Tops (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
						    </div></div></div></div>
				  </section>		         		       		       
		</div>
		<div class="cont span_2_of_3">
			 <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/t1.jpg">
									<div class="thumb-image"> <img src="images/t1.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/t2.jpg">
									 <div class="thumb-image"> <img src="images/t2.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/t4.jpg">
								   <div class="thumb-image"> <img src="images/t4.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/t3.jpg">
								   <div class="thumb-image"> <img src="images/t3.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							  </ul>
							<div class="clearfix"></div>
					</div>		

				<!-- end product_slider -->
			</div>
			<div class="cont1 span_2_of_a1 pull-right">
				<h3 class="m_3">Lorem ipsum dolor sit amet</h3>
				
				<div class="price_single">
							  <span class="reducedfrom">$66.00</span>
							  <span class="actual">$12.00</span><a href="#">click for offer</a>
							</div>
				<ul class="options list-unstyled">
					<h4 class="m_9">Select a Size</h4>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<div class="clearfix"></div>
				</ul>
				<div class="btn_form">
				   <form>
					 <input type="submit" value="buy now" title="">
				  </form>
				</div>
				<ul class="add-to-links list-unstyled">
    			   <li><img src="images/wish.png" alt=""><a href="#">Add to wishlist</a></li>
    			</ul>
    			<p class="m_desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
    			
                <div class="social_single">	
				   <ul list-unstyled>	
					  <li class="fb"><a href="#"><span> </span></a></li>
					  <li class="tw"><a href="#"><span> </span></a></li>
					  <li class="g_plus"><a href="#"><span> </span></a></li>
					  <li class="rss"><a href="#"><span> </span></a></li>		
				   </ul>
			    </div>
			</div>
			<div class="clearfix"></div>
         </div>
     
         <div class="nbs-flexisel-container"><div class="nbs-flexisel-inner"><ul id="flexiselDemo3" class="nbs-flexisel-ul" style="left: -195.2px; display: block;">
			
			
			
			
			
		 <li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic9.jpg"><div class="grid-flex"><a href="#">Zumba</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic8.jpg"><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic7.jpg"><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic11.jpg"><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic10.jpg"><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic9.jpg"><div class="grid-flex"><a href="#">Zumba</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic8.jpg"><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic7.jpg"><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic11.jpg"><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li><li class="nbs-flexisel-item" style="width: 195.2px;"><img src="images/pic10.jpg"><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li></ul><div class="nbs-flexisel-nav-left" style="top: 74px;"></div><div class="nbs-flexisel-nav-right" style="top: 74px;"></div></div></div>
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo1").flexisel();
			$("#flexiselDemo2").flexisel({
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		
			$("#flexiselDemo3").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 <div class="toogle">
     	<h3 class="m_3">Product Details</h3>
     	<p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
     </div>					
	 <div class="toogle">
     	<h3 class="m_3">Product Reviews</h3>
     	<p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
     </div>
     </div>
     <div class="clearfix"></div>
	 </div>

		
</body>
<footer></footer>
</html>
