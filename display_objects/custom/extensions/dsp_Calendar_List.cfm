<cfscript>
	feed = getBean("feed");

    feed.setSiteID(session.siteid);
    feed.setMaxItems(0);
	feed.addParam(field="tcontent.parentid", criteria="#$.content('contentID')#");
    feed.setSortBy('displayStart');
    feed.setSortDirection('asc');
	iterator = feed.getIterator();
</cfscript>
<cfoutput>
	<cfloop condition="iterator.hasNext()">
		<cfset item=iterator.next()>
		<article class="listing">
			<cfif len(item.getImageURL(width='580', height='274'))>
				<img src="#item.getImageURL(width='580', height='274')#" />
			<cfelse>
				<h2>#item.getValue('title')#</h2>
				#item.getSummary()#
			</cfif>
			
		</article>
	</cfloop>
</cfoutput>