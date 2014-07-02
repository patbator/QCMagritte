user-management
userManagementSecurity
	<tutorial>
	^QCTutorial new
		priority: 30;
		title: 'Security';
		chapter: 'User management';
		description: 'Having an admin will start the user management. Having user management means you can login. This was added to the header of the page. Also not everything is visible any more. We cannot add users or projects.';
		addExplanation: 'User management works as follows: an admin can see all things and modify them. A guest with no login can see all objects that have no security set. Since we set security to the projects and not to the todo items, people will be able to add todo items.';
		addExplanation: 'Notice that the project is removed properly. A todo item may have a project, but this project is not visible in the overview. Also opening the details, the project will not show up. Guests will not be able to modify the project of the todo item, because he is not allowed to read projects.';
		addExplanation: 'Now login with your admin user, and create a role with the title "Reader". Add the right "R" on projects to this role. Now create a user ("reader") with only the role "Reader" and login with the new user. Here you can see that this user is allowed to see projects, and can change the project in the todo items. But he cannot add projects or change projects.';
		yourself