Class {
	#name : #GhmdeDeveloper,
	#superclass : #GhmdeGHEntity,
	#instVars : [
		'#name => FMProperty',
		'#email => FMProperty',
		'#model => FMOne type: #GhmdeMainModel opposite: #developers',
		'#commits => FMMany type: #GhmdeCommit opposite: #author'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeDeveloper class >> annotation [

	<FMClass: #Developer super: #GhmdeGHEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeDeveloper >> addCommit: anObject [
	<generated>
	^ self commits add: anObject
]

{ #category : #accessing }
GhmdeDeveloper >> commits [
	"Relation named: #commits type: #GhmdeCommit opposite: #author"

	<generated>
	<derived>
	^ commits
]

{ #category : #accessing }
GhmdeDeveloper >> commits: anObject [

	<generated>
	commits value: anObject
]

{ #category : #accessing }
GhmdeDeveloper >> email [

	<FMProperty: #email type: #String>
	<generated>
	^ email
]

{ #category : #accessing }
GhmdeDeveloper >> email: anObject [
	<generated>
	email := anObject
]

{ #category : #accessing }
GhmdeDeveloper >> model [
	"Relation named: #model type: #GhmdeMainModel opposite: #developers"

	<generated>
	<container>
	^ model
]

{ #category : #accessing }
GhmdeDeveloper >> model: anObject [

	<generated>
	model := anObject
]

{ #category : #navigation }
GhmdeDeveloper >> modelGroup [
	<generated>
	<navigation: 'Model'>
	^ MooseSpecializedGroup with: self model
]

{ #category : #accessing }
GhmdeDeveloper >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GhmdeDeveloper >> name: anObject [
	<generated>
	name := anObject
]
