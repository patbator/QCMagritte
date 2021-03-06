todo-list
todoListDescriptions
	<tutorial>
	^QCTutorial new
		priority: 40;
		title: 'Descriptions';
		chapter: 'Todo List';
		description: 'Now that we can access our variables properly we need to add descriptions to our class. These descriptions will be marked with a "pragma" (annotation) that allows the framework to recognize these methods. The syntax for a pragma is "<" the annotation ">"';
		addCode: 'descriptionTitle
	<magritteDescription>
	^MAStringDescription new
		accessor: #title;
		label: ''Title'';
		priority: 100;
		beRequired;
		yourself';
		addExplanation: 'We state here that the title has a type of String. The accessor links it to the getter "title" and setter "title:". The label is shown to the user in front of the field, to make it recognizable. Finally the priority determines the order in which the fields are shown. We use 100 by default for the first item to be shown. Also we indicate that the title is a required field and should be filled out by the user.';
		addCode: 'descriptionDescription
	<magritteDescription>
	^MAMemoDescription new
		accessor: #description;
		label: ''Description'';
		priority: 200;
		yourself';
		addExplanation: 'A Memo is a longer string. Since different components should be used to display and edit long strings, for magritte this is considered a different type.';
		addCode: 'descriptionCompleted
	<magritteDescription>
	^MABooleanDescription new
		accessor: #completed;
		label: ''Completed'';
		priority: 300;
		yourself';
		addExplanation: 'Finally, our completed variable is of type boolean. It can either be true or false.';
		yourself