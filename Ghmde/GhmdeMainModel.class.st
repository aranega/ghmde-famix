Class {
	#name : #GhmdeMainModel,
	#superclass : #GhmdeEntity,
	#instVars : [
		'#users => FMMany type: #GhmdeUser opposite: #model',
		'#technologies => FMMany type: #GhmdeTechnology opposite: #model',
		'#developers => FMMany type: #GhmdeDeveloper opposite: #model'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeMainModel class >> annotation [

	<FMClass: #MainModel super: #GhmdeEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #adding }
GhmdeMainModel >> addDeveloper: anObject [
	<generated>
	^ self developers add: anObject
]

{ #category : #adding }
GhmdeMainModel >> addTechnology: anObject [
	<generated>
	^ self technologies add: anObject
]

{ #category : #adding }
GhmdeMainModel >> addUser: anObject [
	<generated>
	^ self users add: anObject
]

{ #category : #accessing }
GhmdeMainModel >> developers [
	"Relation named: #developers type: #GhmdeDeveloper opposite: #model"

	<generated>
	<derived>
	^ developers
]

{ #category : #accessing }
GhmdeMainModel >> developers: anObject [

	<generated>
	developers value: anObject
]

{ #category : #navigation }
GhmdeMainModel >> developersGroup [
	<generated>
	<navigation: 'Developers'>
	^ MooseSpecializedGroup withAll: self developers asSet
]

{ #category : #accessing }
GhmdeMainModel >> technologies [
	"Relation named: #technologies type: #GhmdeTechnology opposite: #model"

	<generated>
	<derived>
	^ technologies
]

{ #category : #accessing }
GhmdeMainModel >> technologies: anObject [

	<generated>
	technologies value: anObject
]

{ #category : #navigation }
GhmdeMainModel >> technologiesGroup [
	<generated>
	<navigation: 'Technologies'>
	^ MooseSpecializedGroup withAll: self technologies asSet
]

{ #category : #accessing }
GhmdeMainModel >> users [
	"Relation named: #users type: #GhmdeUser opposite: #model"

	<generated>
	<derived>
	^ users
]

{ #category : #accessing }
GhmdeMainModel >> users: anObject [

	<generated>
	users value: anObject
]

{ #category : #navigation }
GhmdeMainModel >> usersGroup [
	<generated>
	<navigation: 'Users'>
	^ MooseSpecializedGroup withAll: self users asSet
]
