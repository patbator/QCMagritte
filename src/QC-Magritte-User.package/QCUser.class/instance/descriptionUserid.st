magritte-description
descriptionUserid
	<magritteDescription>
	^MAStringDescription new
		accessor: #userid;
		readonly: userid notNil;
		beRequired;
		comment: 'The unique id of the user';
		label: 'Userid';
		priority: 50;
		visibleInReport: false;
		yourself