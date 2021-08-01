Class {
	#name : #MutantByTest,
	#superclass : #Object,
	#instVars : [
		'mutant',
		'test',
		'status'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'Instance Creation' }
MutantByTest class >> errorOf: aTest for: aMutant [ 

	^self new initializeOf: aTest for: aMutant status: #error 
]

{ #category : #'Instance Creation' }
MutantByTest class >> failureOf: aTest for: aMutant [

	^self new initializeOf: aTest for: aMutant status: #fail 
]

{ #category : #'Instance Creation' }
MutantByTest class >> passedOf: aTest for: aMutant [ 

	^self new initializeOf: aTest for: aMutant status: #passed 
]

{ #category : #Testing }
MutantByTest >> hasError [

	
	^status = #error
]

{ #category : #Testing }
MutantByTest >> hasFailure [

	
	^status = #fail 
]

{ #category : #Testing }
MutantByTest >> hasPassed [

	^status = #passed
]

{ #category : #Initialization }
MutantByTest >> initializeOf: aTest for: aMutant status: aStatus [ 

	status := aStatus.
	test := aTest.
	mutant := aMutant.
]

{ #category : #Accessing }
MutantByTest >> mutant [
	^ mutant
]

{ #category : #Accessing }
MutantByTest >> test [
	^ test
]
