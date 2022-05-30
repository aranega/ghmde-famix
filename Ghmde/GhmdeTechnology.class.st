Class {
	#name : #GhmdeTechnology,
	#superclass : #GhmdeGHEntity,
	#instVars : [
		'#name => FMProperty',
		'#title => FMProperty',
		'#searchResults => FMProperty',
		'#model => FMOne type: #GhmdeMainModel opposite: #technologies',
		'#files => FMMany type: #GhmdeFile opposite: #technologies'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeTechnology class >> annotation [

	<FMClass: #Technology super: #GhmdeGHEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeTechnology >> addFile: anObject [
	<generated>
	^ self files add: anObject
]

{ #category : #accessing }
GhmdeTechnology >> files [
	"Relation named: #files type: #GhmdeFile opposite: #technologies"

	<generated>
	<derived>
	^ files
]

{ #category : #accessing }
GhmdeTechnology >> files: anObject [

	<generated>
	files value: anObject
]

{ #category : #accessing }
GhmdeTechnology >> model [
	"Relation named: #model type: #GhmdeMainModel opposite: #technologies"

	<generated>
	<container>
	^ model
]

{ #category : #accessing }
GhmdeTechnology >> model: anObject [

	<generated>
	model := anObject
]

{ #category : #navigation }
GhmdeTechnology >> modelGroup [
	<generated>
	<navigation: 'Model'>
	^ MooseSpecializedGroup with: self model
]

{ #category : #accessing }
GhmdeTechnology >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GhmdeTechnology >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
GhmdeTechnology >> searchResults [

	<FMProperty: #searchResults type: #Number>
	<generated>
	^ searchResults
]

{ #category : #accessing }
GhmdeTechnology >> searchResults: anObject [
	<generated>
	searchResults := anObject
]

{ #category : #accessing }
GhmdeTechnology >> title [

	<FMProperty: #title type: #String>
	<generated>
	^ title
]

{ #category : #accessing }
GhmdeTechnology >> title: anObject [
	<generated>
	title := anObject
]
