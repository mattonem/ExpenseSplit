Class {
	#name : 'ExpenseSplit',
	#superclass : 'PjFileBasedWebApp',
	#traits : 'StaticComponentHolder',
	#classTraits : 'StaticComponentHolder classTrait',
	#classInstVars : [
		'staticComponents'],
	#category : 'ExpenseSplit-Core',
	#package : 'ExpenseSplit',
	#tag : 'Core'
}

{ #category : 'accessing' }
ExpenseSplit class >> appClasses [
	^ super appClasses 
]

{ #category : 'accessing' }
ExpenseSplit class >> bridgeClass [
	<pharoJsSkip>
	^ PjBridge
]

{ #category : 'accessing' }
ExpenseSplit class >> bridgeClientClass [
	<pharoJsSkip>
	
	^ PjZnHostedBrowserBridgeClient
]


{ #category : 'accessing' }
ExpenseSplit class >> exporterClass [

	<pharoJsSkip>
	^ PjFileExporterWithIndexHtml
]

{ #category : 'accessing' }
ExpenseSplit class >> generateHtmlUsing: html [

	<pharoJsSkip>

	
	html div class: 'container-fluid p-0'; with: [
		html nav class: 'navbar navbar-expand-lg navbar-light bg-light border-bottom'; with: [
			html div class: 'container-fluid'; with: [
				html a class: 'navbar-brand ms-3'; href: '#'; with: [ html text: 'ExpenseSplit' ].
				html div class: 'd-flex align-items-center me-3'; with: [
					html button type: 'button' class: 'btn btn-sm btn-primary me-2' id: 'btnNewExpense'; with: [ html text: 'New Expense' ].
					html button type: 'button' class: 'btn btn-sm btn-outline-secondary' id: 'btnNewGroup'; with: [ html text: 'New Group' ].
				].
			].
		].
		html div class: 'container mt-4'; with: [
			html div class: 'row'; with: [
				html div class: 'col-md-4 mb-3'; with: [
					html div class: 'card'; with: [
						html div class: 'card-body'; with: [
							html h5 class: 'card-title'; with: [ html text: 'Groups / People' ].
							html ul class: 'list-group' id: 'groupsList'; with: [
								html li class: 'list-group-item d-flex justify-content-between align-items-center'; with: [
									html span with: [ html text: 'Example Group' ].
									html span class: 'badge bg-primary rounded-pill'; with: [ html text: '$120' ].
								].
							].
						].
					].
				].
				html div class: 'col-md-8'; with: [
					html div class: 'card'; with: [
						html div class: 'card-body'; with: [
							html h5 class: 'card-title d-flex justify-content-between align-items-center'; with: [
								html span with: [ html text: 'Expenses' ].
								html small id: 'totalBalance' with: [ html text: '$0.00' ].
							].
							html div id: 'expensesList' class: 'list-group mt-3'; with: [
								html div class: 'list-group-item'; with: [
									html div class: 'd-flex w-100 justify-content-between'; with: [
										html h6 class: 'mb-1'; with: [ html text: 'Sample Expense' ].
										html small with: [ html text: 'just now' ].
									].
									html p class: 'mb-1'; with: [ html text: '$45.00 — split among 3' ].
								].
							].
					].
				].
			].
		].
		"Add Expense Modal"
		html div class: 'modal fade' id: 'addExpenseModal' tabindex: '-1' role: 'dialog' aria-labelledby: 'addExpenseLabel' aria-hidden: 'true'; with: [
			html div class: 'modal-dialog'; with: [
				html div class: 'modal-content'; with: [
					html div class: 'modal-header'; with: [
						html h5 class: 'modal-title' id: 'addExpenseLabel'; with: [ html text: 'Add Expense' ].
						html button type: 'button' class: 'btn-close' data-bs-dismiss: 'modal' aria-label: 'Close'.
					].
					html div class: 'modal-body'; with: [
						html form id: 'addExpenseForm'; with: [
							html div class: 'mb-3'; with: [
								html label for: 'expenseDesc' class: 'form-label'; with: [ html text: 'Description' ].
								html input id: 'expenseDesc' type: 'text' class: 'form-control'.
							].
							html div class: 'mb-3'; with: [
								html label for: 'expenseAmount' class: 'form-label'; with: [ html text: 'Amount' ].
								html input id: 'expenseAmount' type: 'number' step: '0.01' class: 'form-control'.
							].
							html div class: 'mb-3'; with: [
								html label for: 'expensePayers' class: 'form-label'; with: [ html text: 'Paid by' ].
								html select id: 'expensePayers' class: 'form-select'; with: [ html option value: '' with: [ html text: 'Select payer...' ] ].
							].
						].
					].
					html div class: 'modal-footer'; with: [
						html button type: 'button' class: 'btn btn-secondary' data-bs-dismiss: 'modal'; with: [ html text: 'Close' ].
						html button type: 'submit' form: 'addExpenseForm' class: 'btn btn-primary'; with: [ html text: 'Save Expense' ].
					].
				].
			].
		].
		
	].
]

{ #category : 'accessing' }
ExpenseSplit class >> initialize [ 
	<pharoJsSkip>
	super initialize.
]

{ #category : 'accessing' }
ExpenseSplit class >> staticComponentsSerialized [

	<jsLiteralGenerator>
	^ self _staticComponents asPhxJsonString
]

{ #category : 'accessing' }
ExpenseSplit class >> updateHtmlRoot: root [

	<pharoJsSkip>
	root language: 'en'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css'.
	root stylesheet url:
		'https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css'.
		
]


{ #category : 'initialize-release' }
ExpenseSplit >> start [
	
	super start.


]
