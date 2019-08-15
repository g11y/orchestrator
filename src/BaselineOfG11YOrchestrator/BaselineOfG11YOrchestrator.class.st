Class {
	#name : #BaselineOfG11YOrchestrator,
	#superclass : #BaselineOf,
	#category : #BaselineOfG11YOrchestrator
}

{ #category : #baselines }
BaselineOfG11YOrchestrator >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			self declareProjects: spec.
			self declarePackages: spec.
			self declareGroups: spec ]
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareBabyMock2In: spec [
	spec
		project: 'BabyMock2'
		with: [ spec
				className: #ConfigurationOfBabyMock2;
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/zeroflag/BabyMock2/main/' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareDeployUtilsIn: spec [
	spec baseline: 'DeployUtils' with: [ spec repository: 'github://fstephany/DeployUtils/repository' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareGToolkitIn: spec [
	spec baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit:v0.6.46/src' ].
	^ spec

]

{ #category : #groups }
BaselineOfG11YOrchestrator >> declareGroups: spec [
	spec
		group: 'default'
			with:
			#('G11Y-Domain');
		group: 'tests' with: #('G11Y-Domain-Tests');
		group: 'development' with: #('default' 'tests');
		group: 'full' with: #('development' 'Roassal2' 'GToolkit').
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareNeoJSONIn: spec [
	spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
	^ spec
]

{ #category : #packages }
BaselineOfG11YOrchestrator >> declarePackages: spec [
	spec
		package: #'G11Y-Domain';
		package: #'G11Y-Domain-Tests' with: [ spec requires: #('G11Y-Domain') ].
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declarePharoEdaIn: spec [
	spec repository: 'github://rydnr/generativity:develop/pharo/src'.
	^ spec
]

{ #category : #'third-party' }
BaselineOfG11YOrchestrator >> declareProjects: spec [
	self declareNeoJSONIn: spec.
	self declareBabyMock2In: spec.
	self declareVoyageMongoIn: spec.
	self declareStampIn: spec.
	self declareDeployUtilsIn: spec.
	self declareRoassal2In: spec.
	self declareGToolkitIn: spec.
	^ spec

]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareRoassal2In: spec [
	spec baseline: 'Roassal2' with: [ spec repository: 'github://ObjectProfile/Roassal2/src' ].
	^ spec

]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareStampIn: spec [
	spec
		project: 'Stamp'
		with: [ spec
				className: #ConfigurationOfStamp;
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Stamp/main/' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareVoyageMongoIn: spec [
	spec
		project: 'VoyageMongo'
			with: [ spec
				className: #ConfigurationOfVoyageMongo;
				versionString: #development;
				repository: 'github://pharo-nosql/voyage:1.5/mc';
				loads: #('core' 'memory') ].
	^ spec
]

{ #category : #dependencies }
BaselineOfG11YOrchestrator >> declareZincZodiacIn: spec [
	spec
		baseline: 'ZincHTTPComponents';
		repository: 'github://svenvc/zinc/repository'.
	^ spec

]
