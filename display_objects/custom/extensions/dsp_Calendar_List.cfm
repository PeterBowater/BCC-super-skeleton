<cfscript>
	feed = getBean("feed");
    feed.setSiteID(session.siteid);
    feed.setMaxItems(0);
	feed.addParam(field="tcontent.parentid", criteria="#$.content('contentID')#");
	feed.addParam(relationship="and"
       ,field="tcontent.displayStop"
       ,criteria="#now()#"
       ,condition="GTE"
       ,dataType="timestamp");
    feed.setSortBy('displayStart');
    feed.setSortDirection('asc');
    //writeDump(var=feed.getParams());
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