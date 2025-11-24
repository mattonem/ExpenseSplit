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

	
	html div class: 'container mt-5'; with: [
		
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
