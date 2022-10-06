Class {
	#name : #MyLine,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'TP_Points_Lines'
}

{ #category : #creating }
MyLine class >> begin: aPointBegin end: aPointEnd [ 
	| line |
	
	line := MyLine new.
	line begin: aPointBegin.
	line end: aPointEnd.
	
	^ line
]

{ #category : #getting }
MyLine >> begin [
	^ begin
]

{ #category : #setting }
MyLine >> begin: aMyPoint [ 
	begin := aMyPoint
]

{ #category : #getting }
MyLine >> end [
	^ end
]

{ #category : #setting }
MyLine >> end: aMyPoint [ 
	end := aMyPoint
]

{ #category : #getting }
MyLine >> gradient [
	^ begin x = end x
		ifTrue: [ 0 ]
		ifFalse: [ (end y - begin y) / (end x - begin x) ]
]

{ #category : #initialization }
MyLine >> initialize [ 
			
	super initialize.
	begin := MyPoint new.
	end := MyPoint new.
]

{ #category : #getting }
MyLine >> length [
	^ ((begin y - end y) ** 2 + ((begin x - end x) ** 2)) sqrt
]

{ #category : #printing }
MyLine >> printOn: aStream [
	
	begin printOn: aStream.
	aStream space.
	aStream nextPut: $-.
	aStream nextPut: $-.
	aStream nextPut: $>.	
	aStream space.
	end printOn: aStream.
]
