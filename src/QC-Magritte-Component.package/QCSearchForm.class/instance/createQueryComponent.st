initialization
createQueryComponent
	^self asComponent
		searchAction: [ self search ];
		addValidatedFormWithButtons