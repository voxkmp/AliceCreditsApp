"
This class holds the credits information for one particular track or song - title, list of music composers, and list of lyrics writers.

**Properties**
- title - string
- music - array of strings
- lyrics - array of strings
"
Class {
	#name : 'Song',
	#superclass : 'Object',
	#instVars : [
		'title',
		'music',
		'lyrics'
	],
	#category : 'KMP-AliceCredits-Core',
	#package : 'KMP-AliceCredits',
	#tag : 'Core'
}

{ #category : 'accessing' }
Song >> lyrics [

	^ lyrics
]

{ #category : 'accessing' }
Song >> lyrics: anObject [

	lyrics := anObject
]

{ #category : 'private' }
Song >> microdownWriterList: aHeaderString writersArray: writers [

	| microdownList creds |
	" add bold string as sub heading for music"
	microdownList := String cr , String cr , aHeaderString.

	creds := String empty.

	writers do: [ :writer | creds := creds , String cr , '-' , writer ].

	microdownList := microdownList , creds.

	^ microdownList
]

{ #category : 'accessing' }
Song >> music [

	^ music
]

{ #category : 'accessing' }
Song >> music: anObject [

	music := anObject
]

{ #category : 'accessing' }
Song >> songCreditsAsMicrodown [

	| microdown |
	"initialise the string to be returned"
	microdown := String empty.

	"add in song title as a header"
	microdown := '### ' , title , String cr , '# '.

	" add list of music composers using helper function"
	microdown := microdown
	             ,
	             (self
		              microdownWriterList: '**Music**'
		              writersArray: music).


	"add list of lyric writers using helper function"
	microdown := microdown
	             ,
	             (self
		              microdownWriterList: '**Lyrics**'
		              writersArray: lyrics).

	"return the microdown string"

	^ microdown
]

{ #category : 'accessing' }
Song >> title [

	^ title
]

{ #category : 'accessing' }
Song >> title: anObject [

	title := anObject
]
