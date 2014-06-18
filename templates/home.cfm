<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="#$.createCSSid($.content('menuTitle'))#">

<cfinclude template="inc/header.cfm" />

<!-- Super Container -->
<div class="super-container full-width" id="section-slider">
	
	<!-- 960 Container -->
	<div class="container">
	<cfinclude template="inc/ticker.cfm" />
		
		<!-- Row Break 
		<div class="sixteen columns" id="page-header">
			<br class="clear" />
			<hr />
		</div>
		/End Row Break-->				
		 
		<!-- Full Width Slider -->
		
		<cfset feed=$.getBean("feed").loadBy(name="Home Slideshow",siteID=$.event("siteid"))>
		<cfset iterator=feed.getIterator()>
		
		<div class="ten columns content">
			
			<div class="flexslider-container">
				<div class="flexslider">
					  <ul class="slides">
							<cfif iterator.hasNext()>
								  <cfloop condition="iterator.hasNext()">
									  <cfset item=iterator.next()>
									  <li>
									  	<cfif len(item.getValue('slideURL'))>
									  		<a href="#item.getValue('slideURL')#">
										  		<img src="#item.getImageURL(height=274,width=580)#" alt="SuperSkeleton" />
									  		</a>
									  	<cfelse>
										  	<img src="#item.getImageURL(height=274,width=580)#" alt="SuperSkeleton" />
									  	</cfif>
									    <cfif len(#item.getSummary()#) ><div class="flex-caption">#item.getSummary()#</div></cfif>
									  </li>
								  </cfloop>
							</cfif>
					  </ul>
				</div>
			</div>
			#$.dspBody(body=$.content('body'),pageTitle="",crumbList=0,showMetaImage=0)#
			#$.dspObjects(2)#	 
			<div class="fb-like" data-href="#$.content().getURL()#" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
			
			
		</div>		
		<!-- /End Full Width Slider-->
		
		<!-- SIDEBAR -->
		<div class="six columns sidebar">
			#$.dspObjects(3)#
		</div>
		<!-- /SIDEBAR -->
		

	</div>
	<!-- /End 960 Container -->
	
</div>
<!-- /End Super Container -->


<!-- ============================================== -->

<!---
<!-- Super Container -->
<div class="super-container full-width" id="section-thirds">

	<!-- 960 Container -->
	<div class="container">
		#$.dspBody(body=$.content('body'),pageTitle="",crumbList=0,showMetaImage=0)#
		#$.dspObjects(2)#		
	</div>
	<!-- /End 960 Container -->

</div>
<!-- /End Super Container -->
--->

<cfinclude template="inc/footer.cfm" />
<!---
<script src="http://biblia.com/api/logos.biblia.js"></script>
<script>logos.biblia.init();</script>
--->


</body>
</html>
</cfoutput>

