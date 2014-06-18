<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1&appId=1484786858406647";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46619925-1', 'burnhamcommunitychurch.org');
  ga('require', 'linkid', 'linkid.js');
  ga('send', 'pageview');

</script>
<cfoutput>
<!-- Super Container for entire site -->
<div class="wrapper">
<div id="background">
    <img src="#$.siteConfig('themeAssetPath')#/images/background.png" class="stretch" alt="" />
</div>

<!---
<div class="super-container full-width" id="section-tophat">

	<!-- 960 Container -->
	<div class="container">			
		
		<div class="sixteen columns">
			<!--- Add Links to the specific RSS feed or Mailing List sign up page) 
			<span class="subscribe">Subscribe: <a href="">RSS</a> | <a href="">Email</a></span>
			<cfif len($.siteConfig('tagline'))><span class="tagline">#$.siteConfig('tagline')#</span></cfif>
			--->
		</div>
		
	</div>
	
</div>
--->

<!-- Super Container for entire site -->
<div class="super-container full-width" id="section-header">

	<!-- 960 Container -->
	<div class="container">			
		
		<!-- Header -->
		<header>
		<div class="sixteen columns">
			
			<!-- Branding -->
			<div class="sixteen columns alpha">
				<a href="#$.createHREF(filename='')#">
					<h1 id="logo" style="margin-top: 10px;">
						<img src="#$.siteConfig('themeAssetPath')#/images/logosm.png" alt="logo" />
						<span>Burnham Community Church</span>
					</h1>
				</a>
			</div>
			<!-- /End Branding -->
			
			<div class="ten columns omega">
				<!---
				<a href="##" class="header-advert">
					<img src="#$.siteConfig('themeAssetPath')#/demo-images/468.jpg" alt="advert" />
				</a>
				--->
			</div>  
			
			<hr class="remove-bottom"/>
		</div>
		
		<!-- Menu -->
		<div class="sixteen columns" id="menu">
			
			<div class="thirteen columns alpha navigation">
				
				<!-- Default Superfish Nav (add/remove "light" class to toggle visual styling) -->
				
				<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
					#$.dspPrimaryNav(
						viewDepth="3",
						id="navPrimary",
						displayHome="Always",
						closePortals="true",
						showCurrentChildrenOnly="false",
						class="sf-menu light",
						title="#$.content('ssNavDescription')#"
						)#</cf_cacheomatic>
				<!--- Optional named arguments for Primary Nav are: displayHome="Always/Never/Conditional", openPortals/closePortals="contentid,contentid" (i.e. show specific sub-content in dropdown nav) --->
				
				<!-- Responsive Nav - Displays when screen gets small enough -->
				<cf_cacheOMatic key="customTopNav">
				<cfoutput>
				<cfset home=$.getBean("content").loadBy(filename="")>
				<cfset iterator=home.getKidsIterator(aggregation=true)>
				<form id="responsive-nav" action="insert_action" method="post">
				<select class="chzn-select">
				<option value="#home.getURL()#">#HTMLEditFormat(home.getMenutitle())#</option>
				<cfloop condition="iterator.hasNext()">
				<cfset item=iterator.next()>
				<option value="#item.getURL()#">#HTMLEditFormat(item.getMenutitle())#</option>
				</cfloop>
				</select>
				</form>
				</cfoutput>
				</cf_cacheOMatic>
				<!-- /End Responsive Nav -->	
				
							
			</div>	

			<div class="three columns omega align-right" id="tagline">
				<!-- <p>This is the site tagline</p> -->
				<ul class="social">
					<!---<li><a href="##"><img src="#$.siteConfig('themeAssetPath')#/assets/images/theme/social-icons/google_plus_32.png" alt="google" title="Google+" /></a></li>--->
					<li class="facebook_follow"><div class="fb-like" data-href="https://www.facebook.com/boscommunitychurch" data-layout="button" data-action="like" data-show-faces="false" data-share="false"></div></li>
					<li><a href="https://twitter.com/BOSCommChurch" target="_blank"><img src="#$.siteConfig('themeAssetPath')#/assets/images/theme/social-icons/twitter_32.png" alt="twitter" title="Twitter" /></a></li>
					<!---<li><a href="##"><img src="#$.siteConfig('themeAssetPath')#/assets/images/theme/social-icons/rss_32.png" alt="rss" title="RSS" /></a></li>--->
				</ul>
			</div>			
			
			<hr class="remove-top"/>
		</div>	
		 
		<!-- /End Menu -->
		
		</header>
		<!-- /End Header -->
	
	</div>
	<!-- End 960 Container -->
	
</div>
<!-- End SuperContainer --> 
</cfoutput>