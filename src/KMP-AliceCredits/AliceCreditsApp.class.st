Class {
	#name : 'AliceCreditsApp',
	#superclass : 'SpApplication',
	#category : 'KMP-AliceCredits-UI',
	#package : 'KMP-AliceCredits',
	#tag : 'UI'
}

{ #category : 'running' }
AliceCreditsApp >> start [

	AliceCreditsPresenter new
		application: self;
		open
]
