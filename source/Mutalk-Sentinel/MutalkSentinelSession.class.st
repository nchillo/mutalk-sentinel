Class {
	#name : #MutalkSentinelSession,
	#superclass : #WillowSession,
	#instVars : [
		'applicationContext'
	],
	#category : #'Mutalk-Sentinel-Application'
}

{ #category : #accessing }
MutalkSentinelSession >> applicationContext [

	^ applicationContext
]

{ #category : #accessing }
MutalkSentinelSession >> startUpApplicationContextFor: aTestRunner [

	super startUpApplicationContextFor: aTestRunner.
	applicationContext := MutalkSentinelApplicationContext new
]
