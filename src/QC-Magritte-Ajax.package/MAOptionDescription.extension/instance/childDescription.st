*qc-magritte-ajax
childDescription
	| commonClass |
	self options ifEmpty: [ ^QCObject magritteTemplate magritteDescription ].
	commonClass := self options first class.
	self options do: [ :each |
		[ each class includesBehavior: commonClass ]
			whileFalse: [ commonClass := commonClass superclass ] ].
	^commonClass magritteTemplate magritteDescription