Class {
	#name : #GhmdeFile,
	#superclass : #GhmdeEntity,
	#instVars : [
		'#path => FMProperty',
		'#repository => FMOne type: #GhmdeRepository opposite: #files',
		'#technologies => FMMany type: #GhmdeTechnology opposite: #files',
		'#commits => FMMany type: #GhmdeCommit opposite: #file'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeFile class >> annotation [

	<FMClass: #File super: #GhmdeEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeFile >> addCommit: anObject [
	<generated>
	^ self commits add: anObject
]

{ #category : #adding }
GhmdeFile >> addTechnology: anObject [
	<generated>
	^ self technologies add: anObject
]

{ #category : #accessing }
GhmdeFile >> commits [
	"Relation named: #commits type: #GhmdeCommit opposite: #file"

	<generated>
	<derived>
	^ commits
]

{ #category : #accessing }
GhmdeFile >> commits: anObject [

	<generated>
	commits value: anObject
]

{ #category : #navigation }
GhmdeFile >> commitsGroup [
	<generated>
	<navigation: 'Commits'>
	^ MooseSpecializedGroup withAll: self commits asSet
]

{ #category : #accessing }
GhmdeFile >> path [

	<FMProperty: #path type: #String>
	<generated>
	^ path
]

{ #category : #accessing }
GhmdeFile >> path: anObject [
	<generated>
	path := anObject
]

{ #category : #accessing }
GhmdeFile >> repository [
	"Relation named: #repository type: #GhmdeRepository opposite: #files"

	<generated>
	<container>
	^ repository
]

{ #category : #accessing }
GhmdeFile >> repository: anObject [

	<generated>
	repository := anObject
]

{ #category : #navigation }
GhmdeFile >> repositoryGroup [
	<generated>
	<navigation: 'Repository'>
	^ MooseSpecializedGroup with: self repository
]

{ #category : #accessing }
GhmdeFile >> technologies [
	"Relation named: #technologies type: #GhmdeTechnology opposite: #files"

	<generated>
	^ technologies
]

{ #category : #accessing }
GhmdeFile >> technologies: anObject [

	<generated>
	technologies value: anObject
]
