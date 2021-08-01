Class {
	#name : #SentinelAnalysis,
	#superclass : #Object,
	#instVars : [
		'mutationAnalysisResult'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'Instance Creation' }
SentinelAnalysis class >> for: aString [

	^ self new initializeFor: (NeoJSONObject fromString: aString)
]

{ #category : #Accessing }
SentinelAnalysis >> buildBasicStatistics [

	^SentinelBasicStatistics for: mutationAnalysisResult
]

{ #category : #Accessing }
SentinelAnalysis >> generateResult [

	^SentinelAnalysisResult for: self buildBasicStatistics
]

{ #category : #Initialization }
SentinelAnalysis >> initializeFor: aCollection [ 

	mutationAnalysisResult := aCollection.
]

{ #category : #Accessing }
SentinelAnalysis >> testByMutants [
	|collection|
	collection := OrderedCollection new.
	 mutationAnalysisResult particularResults collect: [ :result | 
	result testResult failures do: [:test | collection add: (MutantByTest failureOf: test for: result mutant)].
	result testResult errors do: [:test |  collection add: (MutantByTest errorOf: test for: result mutant)].
	result testResult passed do: [:test | collection add: (MutantByTest passedOf: test for: result mutant) ].
	].
	^collection
]
