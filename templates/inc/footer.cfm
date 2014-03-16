<cfoutput>
<!-- Super Container -->
<!---<div class="super-container full-width" id="section-footer">
	<!-- 960 Container -->
	<div class="container">
		<!-- footer -->
		<footer>
			<div class="sixteen columns" id="header">
	
				
			</div>
		</footer>
		<!-- /End Footer -->
	</div>
	<!-- /End 960 Container -->
</div>
<!-- /End Super Container -->
--->
<div class="push"></div>
</div>	<!-- wrapper -->

<!-- Super Container -->
<div class="super-container full-width footer" id="section-sub-footer">		
	<!-- 960 Container -->
	<div class="container">
		<div class="sixteen columns">	
			<span class="copyright">&copy; #year(now())# #HTMLEditFormat($.siteConfig('site'))#</span>
			<span class="colophon">Registered charity number : 1118418 </span>
		</div>
	</div>
	<!-- /End 960 Container -->
</div>
<!-- /End Super Container -->

	

<!-- JS
================================================== -->
<!---<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/tabs.js"></script>--->
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/jquery.tipsy.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/jquery.prettyPhoto.min.js"></script>	
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/jquery.hoverIntent.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/superfish.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/supersubs.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/chosen/chosen.jquery.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/jquery.flexslider-min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/filterable.pack.min.js"></script>
<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/skeleton-key.min.js"></script>
<!---<script src="#$.siteConfig('themeAssetPath')#/assets/javascripts/extended.js"></script>--->
</cfoutput>
<script type='text/javascript' src='http://ebible.com/assets/verselink/ebible.verselink.js?iframe_url=http://burnhamcommunitychurch.org/resources/online-bible/'></script>
<script type='text/javascript'>
jQuery(document).ready(function($) {
		$('#navPrimary > li > a').each(function(index, element) {
			$(this).wrapInner('<strong />');
			var oldStr = $(this).html();
			var newStr = oldStr.replace("(","</strong><span>").replace(")</strong>","</span>");
			$(this).html(newStr);
		});
		$("h2.pageTitle").append("<span></span>");
		var tabs = $('ul.tabs');

	tabs.each(function(i) {

		//Get all tabs
		var tab = $(this).find('> li > a');
		tab.click(function(e) {

			//Get Location of tab's content
			var contentLocation = $(this).attr('href');

			//Let go if not a hashed one
			if(contentLocation.charAt(0)=="#") {

				e.preventDefault();

				//Make Tab Active
				tab.removeClass('active');
				$(this).addClass('active');

				//Show Tab Content & add active class
				$(contentLocation).show().addClass('active').siblings().hide().removeClass('active');

			}
		});
	});
	});
	
</script>


