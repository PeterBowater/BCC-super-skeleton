<!---
		Font Options: Serif, Sans (empty for default)
		Style Options: Dark, Clean (empty for default)
--->
<!--- Uncomment to permanently set these values 
<cfset session.themeFont = '' />
<cfset session.themeStyle = '' />
--->

<cfoutput>
<!doctype html>
<!--[if lt IE 7 ]><html class="ie ie6 #htmleditformat(session.themeStyle)#" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7 #htmleditformat(session.themeStyle)#" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8 #htmleditformat(session.themeStyle)#" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en" class="#htmleditformat(session.themeStyle)#"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  	================================================== -->
	<meta charset="utf-8" />
	<meta name="description" content="#HTMLEditFormat($.getMetaDesc())#" />
	<meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#" />
	<cfif request.contentBean.getCredits() neq "">
		<meta name="author" content="#HTMLEditFormat($.content('credits'))#" />
	</cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
	<!--- use this to discourage search engines from indexing your site. (can be useful if developing on a live server for example) Delete if not needed. --->
	<!--- <meta name="robots" content="noindex, nofollow" /> --->	
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>
	<!--[if lt IE 9]>  
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	
	<!-- Mobile Specific Metas
  	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	
	<!---- FB
	================================================== --->
	<cfif len($.content().getImageURL())>
		<meta property="og:image" content="#$.content().getImageURL()#"/>
	<cfelse>
		<meta property="og:image" content="/BOSCC/includes/themes/BCC-super-skeleton/images/logosm.png"/>
	
	</cfif>
	<meta property="og:title" content="Burnham Community Church - #$.content().getValue('title')#"/>
	<cfif len(stripHTML($.content().getSummary()))>
		<meta property="og:description" content="#stripHTML($.content().getSummary())#"/>
	<cfelse>
		<meta property="og:description" content="#stripHTML($.content().getBody())#"/>
	</cfif>
	
	<!-- CSS
	
  	================================================== -->
  	<!--- CfStatic CSS --->
	<!---<cf_CacheOMatic key="globalheadercss">
		#$.static()
			.include('#$.siteConfig('themeAssetPath')#/assets/stylesheets/')
			.renderIncludes('css')#
	</cf_CacheOMatic>
	--->

  	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/reset.min.css" type="text/css" media="all" />
  	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/styles.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/base.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/skeleton.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/comments.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/buttons.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/superfish.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/javascripts/chosen/chosen.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/javascripts/prettyPhoto/css/prettyPhoto.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/typography-sans.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/extended.min.css" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/custom.css" />

	<cfif $.content().getValue('contentid') eq '00000000000000000000000000000000001'>
		<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/creamsoda_ticker.min.css" />
		<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/stylesheets/flexslider.min.css" />
	</cfif>

	<!--- jQuery --->
	<script src="#$.siteConfig('assetPath')#/jquery/jquery.js"></script>
	
	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="#$.siteConfig('themeAssetPath')#/images/favicon.ico" />
	<link rel="apple-touch-icon" href="#$.siteConfig('themeAssetPath')#/assets/images/apple-touch-icon.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="#$.siteConfig('themeAssetPath')#/assets/images/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="#$.siteConfig('themeAssetPath')#/assets/images/apple-touch-icon-114x114.png" />
	
	<cfset rs=$.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs">
	<link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
	</cfloop>
</head>
</cfoutput>

<cfscript>
	function stripHTML(str) {
		return REReplaceNoCase(str,"<[^>]*>","","ALL");
		}
</cfscript>