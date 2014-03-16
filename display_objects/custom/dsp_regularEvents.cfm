<cfscript>
	feed = $.getBean('feed').loadBy( name='Regular Events Feed');
	feed.setMaxItems(100);
	iterator = feed.getIterator();
</cfscript>
<section class="regularEvents">
<h3>Weekly schedule</h3>
	<cfoutput>
		<cfloop condition="iterator.hasNext()">
			<cfset item = iterator.next()>
			<dl class="clearfix<cfif iterator.currentRow() eq 1> first</cfif>">
				<cfif len(item.getBody()) GT 1>
					<dt class="title"><a href="#item.getValue('body')#">#item.getValue('title')#</a></dt>
				<cfelse>
					<dt class="title">#item.getValue('title')#</dt>
				</cfif>
				<dd class="summary">#item.getValue('summary')#</dd>
				<cfif len(item.getBody()) GT 1>
					<dd class="moreLink"><a href="#item.getValue('body')#">More...</a></dt>		
				</cfif>
			</dl>
		</cfloop>
	</cfoutput>
</section>