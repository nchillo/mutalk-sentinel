Class {
	#name : #MutalkSentinelWebView,
	#superclass : #Object,
	#category : #'Mutalk-Sentinel-Views'
}

{ #category : #rendering }
MutalkSentinelWebView >> renderContentOn: html [

	| notificationBuilder testResult |

	testResult := self session applicationContext "currentMutationResult".
	"score := (MutationScoreBehavior buildFor: testResult) ."
	notificationBuilder := self componentSupplier notificationBuilder.
	notificationBuilder
		success;
		wrapping: [ :canvas | 
			canvas
				render: 'Prueba';
				space;
				break";
				render: (BootstrapIconWebView representing: Glyphicons time);
				strong: ' Elapsed time: ';
				render: testResult elapsedTime printString"].

	"score isAlmostAcceptableScore
		ifTrue: [ notificationBuilder warning ].
	score isNonAcceptableScore
		ifTrue: [ notificationBuilder danger ]."

	html render: notificationBuilder build
]
