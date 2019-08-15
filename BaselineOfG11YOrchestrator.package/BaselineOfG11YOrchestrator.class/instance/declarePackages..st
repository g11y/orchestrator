packages
declarePackages: spec
	spec
		package: #'G11Y-Domain';
		package: #'G11Y-Domain-Tests' with: [ spec requires: #('G11Y-Domain') ].
	^ spec