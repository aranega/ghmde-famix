Class {
	#name : #GhmdeCommit,
	#superclass : #GhmdeEntity,
	#instVars : [
		'#date => FMProperty',
		'#user => FMOne type: #GhmdeUser opposite: #commits',
		'#file => FMOne type: #GhmdeFile opposite: #commits',
		'#author => FMOne type: #GhmdeDeveloper opposite: #commits'
	],
	#category : #'Ghmde-Entities'
}

{ #category : #meta }
GhmdeCommit class >> annotation [

	<FMClass: #Commit super: #GhmdeEntity>
	<package: #Ghmde>
	<generated>
	^self
]

{ #category : #accessing }
GhmdeCommit >> author [
	"Relation named: #author type: #GhmdeDeveloper opposite: #commits"

	<generated>
	^ author
]

{ #category : #accessing }
GhmdeCommit >> author: anObject [

	<generated>
	author := anObject
]

{ #category : #accessing }
GhmdeCommit >> date [

	<FMProperty: #date type: #String>
	<generated>
	^ date
]

{ #category : #accessing }
GhmdeCommit >> date: anObject [
	<generated>
	date := anObject
]

{ #category : #accessing }
GhmdeCommit >> file [
	"Relation named: #file type: #GhmdeFile opposite: #commits"

	<generated>
	<container>
	^ file
]

{ #category : #accessing }
GhmdeCommit >> file: anObject [

	<generated>
	file := anObject
]

{ #category : #navigation }
GhmdeCommit >> fileGroup [
	<generated>
	<navigation: 'File'>
	^ MooseSpecializedGroup with: self file
]

{ #category : #accessing }
GhmdeCommit >> user [
	"Relation named: #user type: #GhmdeUser opposite: #commits"

	<generated>
	^ user
]

{ #category : #accessing }
GhmdeCommit >> user: anObject [

	<generated>
	user := anObject
]
