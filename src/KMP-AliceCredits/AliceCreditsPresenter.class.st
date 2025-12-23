Class {
	#name : 'AliceCreditsPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'creditsData',
		'titlesList',
		'microdownCredits'
	],
	#category : 'KMP-AliceCredits-UI',
	#package : 'KMP-AliceCredits',
	#tag : 'UI'
}

{ #category : 'initialization' }
AliceCreditsPresenter >> connectPresenters [

	titlesList whenSelectionChangedDo: [ :s |
		titlesList selectedItem  ifNotNil:[microdownCredits documentFromString: titlesList selectedItem songCreditsAsMicrodown] ]
]

{ #category : 'accessing' }
AliceCreditsPresenter >> creditsData [

		creditsData ifNil: [ creditsData := CreditsData new ].
	^ creditsData
]

{ #category : 'layout' }
AliceCreditsPresenter >> defaultLayout [

	^ SpBoxLayout newLeftToRight
		  add: titlesList;
			add: microdownCredits ;
		  yourself
]

{ #category : 'initialization' }
AliceCreditsPresenter >> initializePresenters [

	titlesList := self newFilteringList.
	titlesList display: [ :song | song title ].
	titlesList sortingBlock: [ :a : b | a title < b title].
	microdownCredits := MicrodownPresenter new
]

{ #category : 'initialization' }
AliceCreditsPresenter >> initializeWindow: aWindowPresenter [

	super initializeWindow: aWindowPresenter.
	aWindowPresenter
		title: 'Alice Song Credits';
		initialExtent: 600 @ 400
]

{ #category : 'accessing' }
AliceCreditsPresenter >> introductionString [
^'
# Songwriting Credits
#
This is a list of all songs for which the Italian cantautrice Alice (Carla Bissi) has an writing credit for either music or lyrics or both. 
'

	
]

{ #category : 'initialization' }
AliceCreditsPresenter >> updatePresenter [

	titlesList items: self creditsData songs.
	microdownCredits documentFromString: self introductionString.
]
