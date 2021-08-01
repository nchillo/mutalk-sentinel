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

	^ Bootstrap4ComponentSupplier
		usingLibraries:
			{(self deploymentMode libraryFor: Bootstrap4MetadataLibrary)
				withoutBundledDependencies.
			(self deploymentMode libraryFor: BootstrapSelectLibrary)
				using: self language.
			(self deploymentMode libraryFor: BootstrapDatepickerLibrary)
				using: self language.
			(self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default}
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

	testResult := self componentSupplier 
		divisionContainerWrapping: [ :canvas | canvas render: MutalkSentinelWebView new  ]
		applying: [  ].
	contentView := self componentSupplier
		divisionContainerWrapping:
			(self componentSupplier gridBuilder
				columnsPerRow: 1;
				addContent: (HeadingWebView displaying: 'Mutalk Sentinel' withLevel: 1);
				addContent: testResult;
				"addContent: (self toolbarRenderingOnAction: testResult);
				addContent: MutalkRunnerSuiteSelectionWebView new;"
				build)
		applying: [ :div | div addClass bootstrap4 container ]
]

{ #category : #accessing }
MutalkSentinelRunner >> jQueryLibrary [

	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default
]

{ #category : #accessing }
MutalkSentinelRunner >> requiredLibraries [

	^ {}
]
