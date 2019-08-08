Class {
	#name : #MutalkSentinelRunner,
	#superclass : #WillowApplication,
	#instVars : [
		'contentView'
	],
	#category : #'Mutalk-Sentinel-Views'
}

{ #category : #accessing }
MutalkSentinelRunner class >> applicationTitle [

	^ 'MuTalk Sentinel'
]

{ #category : #accessing }
MutalkSentinelRunner class >> handlerName [

	^ 'mutalk-sentinel'
]

{ #category : #accessing }
MutalkSentinelRunner class >> sessionClass [

	^ MutalkSentinelSession
]

{ #category : #accessing }
MutalkSentinelRunner >> componentSupplierForApplication [

	^ BootstrapComponentSupplier
		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme
		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)
		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)
		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default
]

{ #category : #accessing }
MutalkSentinelRunner >> contentView [

	^ contentView
]

{ #category : #accessing }
MutalkSentinelRunner >> initialRequest: request [

	super initialRequest: request.
	self initializeContainerView
]

{ #category : #accessing }
MutalkSentinelRunner >> initialize [

	super initialize.
	contentView := [ :canvas |  ]
]

{ #category : #accessing }
MutalkSentinelRunner >> initializeContainerView [

	| testResult |

	testResult := IdentifiedWebView forDivNamed: 'test-result' containing: MutalkSentinelWebView new.
	contentView := GenericContainerWebView
		wrapping:
			(self componentSupplier gridBuilder
				columnsPerRow: 1;
				addContent: (HeadingWebView displaying: 'Mutalk Runner' withLevel: 1);
				addContent: testResult;
				"addContent: (self toolbarRenderingOnAction: testResult);
				addContent: MutalkRunnerSuiteSelectionWebView new;"
				build)
		applying: [ :div | div addClass bootstrap container ]
]

{ #category : #accessing }
MutalkSentinelRunner >> jQueryLibrary [

	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default
]

{ #category : #accessing }
MutalkSentinelRunner >> requiredLibraries [

	^ {}
]
