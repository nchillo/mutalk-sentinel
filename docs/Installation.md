# Installation

## Basic Installation

You can load **Mutalk Sentinel** evaluating:
```smalltalk
Metacello new
	baseline: 'mutalksentinel';
	repository: 'github://ba-st/mutalk-sentinel:release-candidate/source';
	load.
```
>  Change `release-candidate` to some released version if you want a pinned version

## Using as dependency

In order to include **Mutalk Sentinel** as part of your project, you should reference the package in your product baseline:

```smalltalk
setUpDependencies: spec

	spec
		baseline: 'mutalksentinel'
			with: [ spec
				repository: 'github://ba-st/mutalk-sentinel:v{XX}/source';
				loads: #('Deployment') ];
		import: 'mutalksentinel'.
```
> Replace `{XX}` with the version you want to depend on

```smalltalk
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec package: 'My-Package' with: [ spec requires: #('mutalksentinel') ] ]
```

## Provided groups

- `Deployment` will load all the packages needed in a deployed application
- `Tests` will load the test cases
- `Dependent-SUnit-Extensions` will load the extensions to the SUnit framework
- `Tools` will load the extensions to the SUnit framework and development tools (inspector and spotter extensions)
- `CI` is the group loaded in the continuous integration setup
- `Development` will load all the needed packages to develop and contribute to the project
