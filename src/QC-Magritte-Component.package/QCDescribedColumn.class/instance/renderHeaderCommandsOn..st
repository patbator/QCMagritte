rendering
renderHeaderCommandsOn: html
	(self headerCommands select: [ :each | each isValidCommandFor: nil ])
		do: [ :each |
			self renderSingleLink: each on: html for: nil text: each label ] 
		separatedBy: [ html space ]