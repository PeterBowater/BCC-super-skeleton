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
			<cfif len(item.getBody())>
				<cfif len(item.getImageURL(width='580', height='274'))>
					<div class="picholder">
					    <a class="eventImage" href="#item.getURL()#"><img class="fancypics" src="#item.getImageURL(width='580', height='274')#" /></a>
					    <div class="overlay"><a href="#item.getURL()#"><p class="text_box">More...</p></a></div>
					</div>
				<cfelse>
					<a href="#item.getURL()#"><h2>#item.getValue('title')#</h2></a>
					#item.getSummary()#
					<a href="#item.getURL()#">More...</a>
				</cfif>
			<cfelse>
				<cfif len(item.getImageURL(width='580', height='274'))>
					<img src="#item.getImageURL(width='580', height='274')#" />
				<cfelse>
					<h2>#item.getValue('title')#</h2>
					#item.getSummary()#
				</cfif>
			</cfif>
		</article>
	</cfloop>
</cfoutput>