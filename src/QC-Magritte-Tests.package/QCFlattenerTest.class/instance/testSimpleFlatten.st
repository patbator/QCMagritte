as yet unclassified
testSimpleFlatten
	|instance desc buildedDesc|
	instance := QCTestNestedObject new.
	desc := instance magritteDescription.
	buildedDesc := MADescriptionFlattener buildFrom: desc target: instance model: instance.
	self assert: buildedDesc children size equals: 5.