Class {
	#name : #MutalkLoader,
	#superclass : #Object,
	#instVars : [
		'parsedObject'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'instance creation' }
MutalkLoader class >> fromString: aString [

	^ self new initializeWith: aString
]

{ #category : #initialization }
MutalkLoader >> initializeWith: aString [

	parsedObject := NeoJSONReader fromString: aString
]

{ #category : #Accessing }
MutalkLoader >> numberOfEvaluatedMutants [

	^ parsedObject at: 'numberOfEvaluatedMutants'
]
