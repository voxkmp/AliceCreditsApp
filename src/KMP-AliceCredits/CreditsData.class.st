"
This class holds the credits information for all songs and makes them available through the `CreditsData>>songs` method which returns an OrderedCollection of `Song` objects 
"
Class {
	#name : 'CreditsData',
	#superclass : 'Object',
	#instVars : [
		'songs'
	],
	#category : 'KMP-AliceCredits-Core',
	#package : 'KMP-AliceCredits',
	#tag : 'Core'
}

{ #category : 'private' }
CreditsData >> creditsAsJson [
" Returns the list of tracks with writers in JSON format"
^'
{
  "SongCredits": {
    "A COSA PENSANO": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "A TE": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "ANIMALI D AMERICA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "APPARENZA": {
      "Music": ["Alice", "Di Martino", "Messina"],
      "Lyrics": ["Di Martino"]
    },
    "AZIMUT": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "BAEL": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "BAZAR": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "BICICLETTE DI FORLI": {
      "Music": ["Alice"],
      "Lyrics": []
    },
    "CANZONE PIU BELLA": {
      "Music": ["Alice", "Fasolino"],
      "Lyrics": ["Alice"]
    },
    "CARTHAGO": {
      "Music": ["Alice", "Fasolino"],
      "Lyrics": ["Alice"]
    },
    "CIELI DEL NORD": {
      "Music": ["Liverani"],
      "Lyrics": ["Alice"]
    },
    "COLORE DELLA LONTANANZA": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "CONOSCERSI": {
      "Music": ["Alice", "Liverani"],
      "Lyrics": ["Messina"]
    },
    "CONTATTO": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "DA LONTANO": {
      "Music": ["Alice", "Messina"],
      "Lyrics": ["Messina"]
    },
    "DAMMI LA MANO AMORE": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "DECIDITI": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "DIMMI DI SI": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "EXIT": {
      "Music": ["Alice"],
      "Lyrics": ["Alice", "Coluccino"]
    },
    "GUERRIGLIA URBANA": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice", "Battiato"]
    },
    "I AM A TAXI": {
      "Music": ["Alice", "Messina"],
      "Lyrics": ["Messina"]
    },
    "IN PIEDI SU UNO SPECCHIO": {
      "Music": ["Messina"],
      "Lyrics": ["Alice", "Messina"]
    },
    "IN VIAGGIO SUL TUO VISO": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "LENZUOLI BIANCHI": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "LUCE DELLA SERA": {
      "Music": ["Alice", "Barbieri"],
      "Lyrics": ["Messina"]
    },
    "LUCI LONTANE": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "LUNGO RITORNO A CASA": {
      "Music": ["Cosentino"],
      "Lyrics": ["Alice", "Messina"]
    },
    "MADRE NOTTE": {
      "Music": ["Alice", "Fresu"],
      "Lyrics": ["Messina"]
    },
    "MANO": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "MESSAGGIO": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice", "Battiato"]
    },
    "MOMENTI D OZIO": {
      "Music": ["Alice", "Battiato", "Messina", "Pio"],
      "Lyrics": ["Alice"]
    },
    "NEL RESTO DEL TEMPO": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "NEVE D APRILE": {
      "Music": ["Alice", "Di Martino"],
      "Lyrics": ["Messina"]
    },
    "NIDO DEL GATTO": {
      "Music": ["Alice", "Messina"],
      "Lyrics": ["Messina"]
    },
    "NON DEVI AVERE PAURA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "NON ERO MAI SOLA": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "NON TI CONFONDERE AMICO": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "NOTTE A ROMA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "NOTTE SPECIALE": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "NUVOLE": {
      "Music": ["Messina", "Tuni"],
      "Lyrics": ["Alice", "Tuni"]
    },
    "OPEN YOUR EYES": {
      "Music": ["Alice", "Camisasca", "Messina"],
      "Lyrics": ["Camisasca", "Hammill"]
    },
    "OSANNA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "PER ELISA": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice", "Battiato"]
    },
    "PER FAVORE NON E AMORE": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "PRINCIPESSA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "PROFUMO DEL SILENZIO": {
      "Music": ["Alice", "Fasolino"],
      "Lyrics": ["Alice"]
    },
    "RAIN TOWN": {
      "Music": ["Alice", "Barbieri"],
      "Lyrics": ["Messina"]
    },
    "RUMBA ROCK": {
      "Music": ["Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "SARA": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "SCOGLIERE DI DOVER": {
      "Music": ["Liverani"],
      "Lyrics": ["Alice"]
    },
    "SEGNI NEL CIELO": {
      "Music": ["Alice", "Liverani"],
      "Lyrics": ["Messina"]
    },
    "SENSO DEI DESIDERI": {
      "Music": ["Cosentino", "Di Martino"],
      "Lyrics": ["Alice"]
    },
    "SENZA CORNICE": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "SERA": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "SERA DI NOVEMBRE": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "SOLO UN IDEA": {
      "Music": ["Alice", "Fasolino"],
      "Lyrics": ["Alice"]
    },
    "SOTTO LO STESSO CIELO": {
      "Music": ["Alice"],
      "Lyrics": ["Di Martino", "Messina"]
    },
    "SPECCHIO": {
      "Music": ["Alice", "Messina"],
      "Lyrics": ["Messina"]
    },
    "THIRD STAR": {
      "Music": ["Alice", "Gunn"],
      "Lyrics": ["Alice"]
    },
    "TIM": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "TRAMONTO URBANO": {
      "Music": ["Alice", "Battiato", "Pio"],
      "Lyrics": ["Alice"]
    },
    "TUTTO E NIENTE": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "ULTIMI FUOCHI": {
      "Music": ["Alice"],
      "Lyrics": ["Alice"]
    },
    "VENTO CALDO DELL ESTATE": {
      "Music": ["Battiato", "Messina", "Pio"],
      "Lyrics": ["Alice", "Battiato"]
    },
    "VENTO SOLTANTO": {
      "Music": ["Alice", "Messina"],
      "Lyrics": ["Coluccino", "Messina"]
    },
    "VIAGGIO": {
      "Music": ["Alice", "Fasolino"],
      "Lyrics": ["Alice"]
    },
    "VIALI DI SOLITUDINE": {
      "Music": ["Alice", "Liverani"],
      "Lyrics": ["Messina"]
    },
    "VOLO DI NOTTE": {
      "Music": ["Alice"],
      "Lyrics": ["Messina"]
    },
    "ZU NAH AM FEUER": {
      "Music": [],
      "Lyrics": ["Alice"]
    }
  }
}
'.
]

{ #category : 'private' }
CreditsData >> loadSongsFromJSon [
"Loads the instance variable songs (OrderedCollection) with details of each track (Song object)."

	| thisSong json |
	json := NeoJSONReader fromString: self creditsAsJson.
	(json at: 'SongCredits') keysAndValuesDo: [ :aKey :aValue |
		   " aKey is the title of the song.
		     aValue is a dictionary with two keys - Lyrics and Music.
		     The two dictinary values are arrays of strings (writers names)."
			thisSong := Song new.
			thisSong title: (ZnUtils capitalizeString: aKey asString).
			thisSong lyrics: (aValue at: 'Lyrics').
			thisSong music: (aValue at: 'Music').
			songs add: thisSong ]
]

{ #category : 'accessing' }
CreditsData >> songs [
	"Initialize songs using JSON data"
   songs ifNil:[
	songs := OrderedCollection new.
	self loadSongsFromJSon].
	^ songs
]

{ #category : 'accessing' }
CreditsData >> songs: anObject [

	songs := anObject
]
