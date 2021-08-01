Class {
	#name : #SentinelBasicStatistics,
	#superclass : #Object,
	#instVars : [
		'mutationAnalysisResult'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'Instance Creation' }
SentinelBasicStatistics class >> for: aNeoJsonObject [

	^ self new initializeFor: aNeoJsonObject
]

{ #category : #'instance creation' }
SentinelBasicStatistics >> initializeFor: aNeoJsonObject [ 

	mutationAnalysisResult := aNeoJsonObject
]

{ #category : #Accessing }
SentinelBasicStatistics >> mutationScore [

	^Percentage of: mutationAnalysisResult mutationScore
]

{ #category : #Accessing }
SentinelBasicStatistics >> numberOfAliveMutants [
	^ mutationAnalysisResult numberOfAliveMutants
]

{ #category : #Accessing }
SentinelBasicStatistics >> numberOfEvaluatedMutants [
	^ mutationAnalysisResult numberOfEvaluatedMutants
]

{ #category : #Accessing }
SentinelBasicStatistics >> numberOfKilledMutants [
	^ mutationAnalysisResult numberOfKilledMutants
]

{ #category : #Accessing }
SentinelBasicStatistics >> numberOfTerminatedMutants [
	^ mutationAnalysisResult numberOfTerminatedMutants
]
