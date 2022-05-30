Class {
	#name : #GhmdeUser,
	#superclass : #GhmdeGHEntity,
	#instVars : [
		'#id => FMProperty',
		'#name => FMProperty',
		'#model => FMOne type: #GhmdeMainModel opposite: #users',
		'#repositories => FMMany type: #GhmdeRepository opposite: #owner',
		'#commits => FMMany type: #GhmdeCommit opposite: #user'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeUser class >> annotation [

	<FMClass: #User super: #GhmdeGHEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeUser >> addCommit: anObject [
	<generated>
	^ self commits add: anObject
]

{ #category : #adding }
GhmdeUser >> addRepository: anObject [
	<generated>
	^ self repositories add: anObject
]

{ #category : #accessing }
GhmdeUser >> commits [
	"Relation named: #commits type: #GhmdeCommit opposite: #user"

	<generated>
	<derived>
	^ commits
]

{ #category : #accessing }
GhmdeUser >> commits: anObject [

	<generated>
	commits value: anObject
]

{ #category : #accessing }
GhmdeUser >> id [

	<FMProperty: #id type: #String>
	<generated>
	^ id
]

{ #category : #accessing }
GhmdeUser >> id: anObject [
	<generated>
	id := anObject
]

{ #category : #accessing }
GhmdeUser >> model [
	"Relation named: #model type: #GhmdeMainModel opposite: #users"

	<generated>
	<container>
	^ model
]

{ #category : #accessing }
GhmdeUser >> model: anObject [

	<generated>
	model := anObject
]

{ #category : #navigation }
GhmdeUser >> modelGroup [
	<generated>
	<navigation: 'Model'>
	^ MooseSpecializedGroup with: self model
]

{ #category : #accessing }
GhmdeUser >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
GhmdeUser >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
GhmdeUser >> repositories [
	"Relation named: #repositories type: #GhmdeRepository opposite: #owner"

	<generated>
	<derived>
	^ repositories
]

{ #category : #accessing }
GhmdeUser >> repositories: anObject [

	<generated>
	repositories value: anObject
]

{ #category : #navigation }
GhmdeUser >> repositoriesGroup [
	<generated>
	<navigation: 'Repositories'>
	^ MooseSpecializedGroup withAll: self repositories asSet
]
