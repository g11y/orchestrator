groups
declareGroups: spec
	spec
		group: 'default'
			with:
			#('G11Y-Domain');
		group: 'tests' with: #('G11Y-Domain-Tests');
		group: 'development' with: #('default' 'tests');
		group: 'full' with: #('development' 'Roassal2' 'GToolkit').
	^ spec