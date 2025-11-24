Class {
	#name : 'BaselineOfExpenseSplit',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfExpenseSplit',
	#package : 'BaselineOfExpenseSplit'
}

{ #category : 'baselines' }
BaselineOfExpenseSplit >> baseline: spec [

	<baseline>
	spec for: #common do: [

		spec
			baseline: 'Camping'
			with: [ spec repository: 'github://mattonem/WildCamping' ].

		spec package: #ExpenseSplit with: [ spec requires: #( Camping ) ] ]
]
