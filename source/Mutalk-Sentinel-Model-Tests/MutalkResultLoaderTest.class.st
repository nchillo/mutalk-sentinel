"
A MutalkResultLoaderTest is a test class for testing the behavior of MutalkResultLoader
"
Class {
	#name : #MutalkResultLoaderTest,
	#superclass : #TestCase,
	#category : #'Mutalk-Sentinel-Model-Tests'
}

{ #category : #tests }
MutalkResultLoaderTest >> testLoadingEmptyResult [

	| emptyResult |

	emptyResult := MutalkResultLoader
		fromString:
			'{"numberOfEvaluatedMutants":0,"numberOfKilledMutants":0,"numberOfAliveMutants":0,"numberOfTerminatedMutants":0,"mutationScore":0,"elapsedTime":"0:00:00:00","message":""}'.
	self assert: emptyResult numberOfEvaluatedMutants equals: 0
]
