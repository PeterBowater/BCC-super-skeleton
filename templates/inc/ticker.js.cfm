<cfoutput>
 <script src="#$.siteconfig("themeAssetPath")#/assets/javascripts/creamsoda_ticker.min.js"></script>
 <script type='text/javascript'> 
	$('.newsTicker').csTicker({ 
	tickerMode: 'mini', 
	tickerTitle: 'Latest news', 
	autoAnimate: true 
	});
</script> 
<cfoutput>