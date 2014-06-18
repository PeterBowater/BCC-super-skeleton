<cfoutput>
	<cfif len($.content().getImageURL(width='580', height='274'))>
		<img src="#$.content().getImageURL(width='580', height='274')#" />
		#$.content().getBody()#
	<cfelse>
		<h2>#$.content().getValue('title')#</h2>
		#$.content().getBody()#
	</cfif>
	<a class="backTo" href="#$.content().getParent().getURL()#"><< Back to events</a>
</cfoutput>