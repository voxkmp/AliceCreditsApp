Class {
	#name : 'BaselineOfAliceCreditsApp',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAliceCreditsApp',
	#package : 'BaselineOfAliceCreditsApp'
}

{ #category : 'baselines' }
BaselineOfAliceCreditsApp >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		   "Depends on"
			self neoJson: spec.
			"Main package"
			spec package: 'KMP-AliceCredits' ]
]

{ #category : 'baselines' }
BaselineOfAliceCreditsApp >> neoJson: spec [

spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
]
