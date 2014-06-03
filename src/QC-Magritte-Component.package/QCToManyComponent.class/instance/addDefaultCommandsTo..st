private
addDefaultCommandsTo: aCommandColumn
	aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'details')
		imageUrl: self detailsIcon
		condition: [ :row | self canShowDetails: row ]
		action: [ :row | self showDetails: row ]).
	aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
		imageUrl: self editIcon
		condition: [ :row | self canEdit: row ]
		action: [ :row | self edit: row ]).
	aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'save')
		condition: [ :row | self canStopEdit: row ]
		action: [ :row | self saveEdit: row ]).
	aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'cancel')
		condition: [ :row | self canStopEdit: row ]
		action: [ :row | self cancelEdit: row ]).
	self magritteDescription isDefinitive ifFalse: [
		aCommandColumn addCommand: (QCCommand on: (QCMultilanguageString on: 'remove')
			imageUrl: self removeIcon
			condition: [ :row | self canRemove: row ]
			action: [ :row | self remove: row ]) ].