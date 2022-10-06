Class {
	#name : #MyPoint,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'TP_Points_Lines'
}

{ #category : #creating }
MyPoint class >> x: aNumberX y: aNumberY [ 
	| point |
	
	point := MyPoint new.
	point x: aNumberX.
	point y: aNumberY.
	
	^ point
]

{ #category : #initialization }
MyPoint >> initialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	x := 0.
	y := 0.
]

{ #category : #printing }
MyPoint >> printOn: aStream [
		
	aStream nextPut: $(.
	x printOn: aStream.
	aStream nextPut: $,.
	aStream space.
	y printOn: aStream.
	aStream nextPut: $).

]

{ #category : #getting }
MyPoint >> x [
	^ x
]

{ #category : #setting }
MyPoint >> x: anInteger [ 
	x := anInteger
]

{ #category : #getting }
MyPoint >> y [
	^ y
]

{ #category : #setting }
MyPoint >> y: anInteger [ 
	y := anInteger
]
