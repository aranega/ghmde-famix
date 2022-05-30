Class {
	#name : #GhmdeGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'gHEntity',
		'mainModel',
		'repository',
		'user',
		'technology',
		'file',
		'commit',
		'developer'
	],
	#category : #Ghmde
}

{ #category : #accessing }
GhmdeGenerator class >> packageName [
	^ 'Ghmde'
]

{ #category : #accessing }
GhmdeGenerator class >> prefix [
	^ 'Ghmde'
]

{ #category : #accessing }
GhmdeGenerator class >> submetamodels [

	^ { FamixGenerator }
]

{ #category : #definition }
GhmdeGenerator >> defineClasses [
  super defineClasses.

  gHEntity := builder newClassNamed: #GHEntity.
  mainModel := builder newClassNamed: #MainModel.
  repository := builder newClassNamed: #Repository.
  user := builder newClassNamed: #User.
  technology := builder newClassNamed: #Technology.
  file := builder newClassNamed: #File.
  commit := builder newClassNamed: #Commit.
  developer := builder newClassNamed: #Developer.
]

{ #category : #definition }
GhmdeGenerator >> defineHierarchy [
  super defineHierarchy.


 gHEntity --|> #TEntityMetaLevelDependency.
  repository --|> gHEntity.
  user --|> gHEntity.
  technology --|> gHEntity.
  developer --|> gHEntity.
]

{ #category : #definition }
GhmdeGenerator >> defineProperties [
  super defineProperties.

  repository property: #name type: #String.
  repository property: #stargazers type: #Number.
  repository property: #watchers type: #Number.
  repository property: #forks type: #Number.
  repository property: #fork type: #Boolean.
  repository property: #size type: #Number.
  user property: #id type: #String.
  user property: #name type: #String.
  technology property: #name type: #String.
  technology property: #title type: #String.
  technology property: #searchResults type: #Number.
  file property: #path type: #String.
  commit property: #date type: #String.
  developer property: #name type: #String.
  developer property: #email type: #String.
]

{ #category : #definition }
GhmdeGenerator >> defineRelations [
  super defineRelations.

   (mainModel property: #users)  <>-* (user property: #model).
   (mainModel property: #technologies)  <>-* (technology property: #model).
   (mainModel property: #developers)  <>-* (developer property: #model).
   (repository property: #files)  <>-* (file property: #repository).
   (repository property: #owner)  *-<> (user property: #repositories).
   (user property: #commits)  -* (commit property: #user).
   (technology property: #files)  *-* (file property: #technologies).
   (file property: #commits)  <>-* (commit property: #file).
   (commit property: #author)  *- (developer property: #commits).
]
