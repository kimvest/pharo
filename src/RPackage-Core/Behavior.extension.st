Extension { #name : #Behavior }

{ #category : #'*Rpackage-Core' }
Behavior >> originalName [
	^ ((self isObsolete and: [ self name beginsWith: 'AnObsolete' ])
		ifTrue: [ (self name copyFrom:   'AnObsolete' size + 1 to: self name size ) ]
		ifFalse:  [ self name ]) asSymbol
]
