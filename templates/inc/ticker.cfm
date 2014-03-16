<cfset feed=$.getBean("feed").loadBy(name="News ticker",siteID=$.event("siteid"))>
<cfset iterator=feed.getIterator()>
<cfif iterator.hasNext()>
	<div class="newsTicker">
		<ul>
			<cfloop condition="iterator.hasNext()">
				<cfset item=iterator.next()>
				<cfoutput>
			  		<li data-title="#item.getTitle()#" data-link="#item.getURL()#">#item.getTitle()#</li>
				</cfoutput>
			</cfloop>
		</ul>
	</div>
</cfif>

<cfset $.addToHTMLFootQueue("#$.siteconfig('themeAssetPath')#/display_objects/ticker.js.cfm")>


