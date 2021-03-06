tests
testCloseHomepage
	| pageChoice page1 homepage |
	self setSession.
	pageChoice := QCPageChoice new.
	pageChoice addPage: (page1 := QCComponent new) announcement: QCTestAnnouncement1.
	pageChoice addPage: (QCComponent new) announcement: QCTestAnnouncement2.
	pageChoice homePage: (homepage := QCComponent new).
	self assert: pageChoice children size equals: 3.
	pageChoice close: homepage.
	self assert: pageChoice children size equals: 2.
	self assert: pageChoice currentPage equals: page1