rendering
renderLabel: aDescription
	| label |
	aDescription hasLabel ifFalse: [ ^ self ].
	label := html anchor
		callback: [ self component setActive: aDescription ];
		yourself.
	(self childAt: aDescription) hasLabelId
		ifTrue: [ label for: (self childAt: aDescription) labelId ].
	label with: [ html html: aDescription label ]