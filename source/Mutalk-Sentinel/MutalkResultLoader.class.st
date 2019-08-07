Class {
	#name : #MutalkResultLoader,
	#superclass : #Object,
	#instVars : [
		'parsedObject'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'instance creation' }
MutalkResultLoader class >> fromString: aString [

	^ self new initializeWith: aString
]

{ #category : #initialization }
MutalkResultLoader >> initializeWith: aString [

	parsedObject := NeoJSONReader fromString: aString
]

{ #category : #Accessing }
MutalkResultLoader >> numberOfEvaluatedMutants [

	^ parsedObject at: 'numberOfEvaluatedMutants'
]
