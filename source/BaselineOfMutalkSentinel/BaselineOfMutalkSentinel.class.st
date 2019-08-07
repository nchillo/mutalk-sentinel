Class {
	#name : #BaselineOfMutalkSentinel,
	#superclass : #BaselineOf,
	#category : #BaselineOfMutalkSentinel
}

{ #category : #baselines }
BaselineOfMutalkSentinel >> baseline: spec [

	<baseline>
	spec
		for: #pharo
		do: [ self
				setUpDependencies: spec;
				baselineMutalkSentinelApp: spec.
			spec group: 'Development' with: 'Deployment'
			]
]

{ #category : #baselines }
BaselineOfMutalkSentinel >> baselineMutalkSentinelApp: spec [

	spec
		package: 'Mutalk-Sentinel'
			with: [ spec requires: #('Willow-Bootstrap-Deployment' 'Willow-SpinKit-Deployment') ];
		group: 'Deployment' with: 'Mutalk-Sentinel'
]

{ #category : #baselines }
BaselineOfMutalkSentinel >> setUpDependencies: spec [

	spec
		baseline: 'WillowBootstrap'
			with: [ spec repository: 'github://ba-st/Willow-Bootstrap:v11/source' ];
		project: 'Willow-Bootstrap-Deployment'
			copyFrom: 'WillowBootstrap'
			with: [ spec loads: 'Deployment' ].

	spec
		baseline: 'WillowSpinKit' with: [ spec repository: 'github://ba-st/Willow-SpinKit:v7/source' ];
		project: 'Willow-SpinKit-Deployment' copyFrom: 'WillowSpinKit' with: [ spec loads: 'Deployment' ].
		
	spec
		baseline: 'NeoJSON'
			with: [ spec repository: 'github://svenvc/NeoJSON/repository';loads: #('core') ].
]
