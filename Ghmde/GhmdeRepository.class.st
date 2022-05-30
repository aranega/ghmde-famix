Class {
	#name : #GhmdeRepository,
	#superclass : #GhmdeGHEntity,
	#instVars : [
		'#name => FMProperty',
		'#stargazers => FMProperty',
		'#watchers => FMProperty',
		'#forks => FMProperty',
		'#fork => FMProperty',
		'#size => FMProperty',
		'#files => FMMany type: #GhmdeFile opposite: #repository',
		'#owner => FMOne type: #GhmdeUser opposite: #repositories'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeRepository class >> annotation [

	<FMClass: #Repository super: #GhmdeGHEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeRepository >> addFile: anObject [
	<generated>
	^ self files add: anObject
]

{ #category : #accessing }
GhmdeRepository >> files [
	"Relation named: #files type: #GhmdeFile opposite: #repository"

	<generated>
	<derived>
	^ files
]

{ #category : #accessing }
GhmdeRepository >> files: anObject [

	<generated>
	files value: anObject
]

{ #category : #navigation }
GhmdeRepository >> filesGroup [
	<generated>
	<navigation: 'Files'>
	^ MooseSpecializedGroup withAll: self files asSet
]

{ #category : #accessing }
GhmdeRepository >> fork [

	<FMProperty: #fork type: #Boolean>
	<generated>
	^ fork
]

{ #category : #accessing }
GhmdeRepository >> fork: anObject [
	<generated>
	fork := anObject
]

{ #category : #accessing }
GhmdeRepository >> forks [

	<FMProperty: #forks type: #Number>
	<generated>
	^ forks
]

{ #category : #accessing }
GhmdeRepository >> forks: anObject [
	<generated>
	forks := anObject
]

{ #category : #accessing }
GhmdeRepository >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GhmdeRepository >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
GhmdeRepository >> owner [
	"Relation named: #owner type: #GhmdeUser opposite: #repositories"

	<generated>
	<container>
	^ owner
]

{ #category : #accessing }
GhmdeRepository >> owner: anObject [

	<generated>
	owner := anObject
]

{ #category : #navigation }
GhmdeRepository >> ownerGroup [
	<generated>
	<navigation: 'Owner'>
	^ MooseSpecializedGroup with: self owner
]

{ #category : #accessing }
GhmdeRepository >> size [

	<FMProperty: #size type: #Number>
	<generated>
	^ size
]

{ #category : #accessing }
GhmdeRepository >> size: anObject [
	<generated>
	size := anObject
]

{ #category : #accessing }
GhmdeRepository >> stargazers [

	<FMProperty: #stargazers type: #Number>
	<generated>
	^ stargazers
]

{ #category : #accessing }
GhmdeRepository >> stargazers: anObject [
	<generated>
	stargazers := anObject
]

{ #category : #accessing }
GhmdeRepository >> watchers [

	<FMProperty: #watchers type: #Number>
	<generated>
	^ watchers
]

{ #category : #accessing }
GhmdeRepository >> watchers: anObject [
	<generated>
	watchers := anObject
]
