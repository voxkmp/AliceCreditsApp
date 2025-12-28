"
Displays the titles of all songs where Alice has a writing credit in a filtered list to the left. Clicking on a song title in the list gives the song-writing credits displayed nicely formatted in a Microdown presenter on the right.
"
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
"When a song title is selected in the list then display the credits in the micodown panel"

	titlesList whenSelectionChangedDo: [
			titlesList selectedItem ifNotNil: [
					microdownCredits documentFromString:
						titlesList selectedItem songCreditsAsMicrodown ] ]
]

{ #category : 'accessing' }
AliceCreditsPresenter >> creditsData [
	"Returns a CreditsData object. The AliceCreditsProsenter uses the songs method of this object to access all the song details and associated song-writing credits"

	creditsData ifNil: [ creditsData := CreditsData new ].
	^ creditsData
]

{ #category : 'layout' }
AliceCreditsPresenter >> defaultLayout [
"A Filtered list of titles next to a mircodown presenter displaying the actual song credits formatted nicely"

	^ SpBoxLayout newLeftToRight
		  add: titlesList;
		  add: microdownCredits;
		  yourself
]

{ #category : 'initialization' }
AliceCreditsPresenter >> initializePresenters [

	titlesList := self newFilteringList.
	titlesList display: [ :song | song title ].
	titlesList sortingBlock: [ :a :b | a title < b title ].
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
	"Default microdown text displayed before any particular song is selected"

	^ '
### Songwriting Credits
#
This is a list of all songs for which the Italian cantautrice Alice (Carla Bissi) has an writing credit for either music or lyrics or both. 
'
]

{ #category : 'initialization' }
AliceCreditsPresenter >> updatePresenter [

	titlesList items: self creditsData songs.
	microdownCredits documentFromString: self introductionString.
]
