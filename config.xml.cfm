<theme>
	<extensions>
		<extension type="Page" subType="Blog post">
		</extension>
		<extension type="Calendar" subType="List">
		</extension>
		<extension type="Page" subType="Default">
		<attributeset name="Additional Options" container="Basic">
		<attribute 
			name="ssSupertagline"
			label="Super tag line"
			hint=""
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />
		<attribute 
			name="ssNavDescription"
			label="Nav Description"
			hint="Very small sub-text gets placed under each primary nav item if used"
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />
		</attributeset>
		</extension>
		<extension type="Page" subType="HomePageSlide">
		<attributeset name="Home page slider options" container="Basic">
		<attribute 
			name="slideStyle"
			label="Slide style"
			hint=""
			type="selectbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList="slide^slide2^slide3"
			optionLabelList="No background with White Border^Black Background with Black Border (no button)^Black Background with White Border (no button)" />
		<attribute 
			name="slideButtonText"
			label="Slide button text"
			hint="If selecting 'No Background with White Border' and you include a link/URL, then you can specify the text to appear on the button link."
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />
		<attribute 
			name="slideURL"
			label="Slide Link (full URL)"
			hint="Enter the full URL of where you want the image (and button if desired) to go to (include http://)"
			type="textbox"
			defaultValue=""
			required="false"
			validation=""
			regex=""
			message=""
			optionList=""
			optionLabelList="" />
		</attributeset>
		</extension>
	</extensions>
</theme>