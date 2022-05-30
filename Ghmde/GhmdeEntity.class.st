Class {
	#name : #GhmdeEntity,
	#superclass : #MooseEntity,
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #meta }
GhmdeEntity class >> metamodel [

	<generated>
	^ GhmdeModel metamodel
]
