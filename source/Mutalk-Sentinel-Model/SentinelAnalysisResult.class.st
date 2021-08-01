Class {
	#name : #SentinelAnalysisResult,
	#superclass : #Object,
	#instVars : [
		'basicStatistics'
	],
	#category : #'Mutalk-Sentinel-Model'
}

{ #category : #'instance creation' }
SentinelAnalysisResult class >> for: someBasicStatistics [
	
	^self new initializeFor: someBasicStatistics
]

{ #category : #accessing }
SentinelAnalysisResult >> basicStatistics [

	^basicStatistics
]

{ #category : #accessing }
SentinelAnalysisResult >> initializeFor: aBasicStatistics [

	basicStatistics := aBasicStatistics.
]
