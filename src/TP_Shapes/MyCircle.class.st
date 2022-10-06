Class {
	#name : #MyCircle,
	#superclass : #MyShape,
	#instVars : [
		'radius'
	],
	#category : #'TP_Shapes'
}

{ #category : #creating }
MyCircle class >> radius: anInteger [ 
	| circle |
	
	circle := MyCircle new.
	circle radius: anInteger.
	
	^ circle
]

{ #category : #getting }
MyCircle >> area [
	^ 3.14 * (radius ** 2)
]

{ #category : #initialization }
MyCircle >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	radius := 0.
]

{ #category : #getting }
MyCircle >> perimeter [
	^ 2 * radius * 3.14
]

{ #category : #getting }
MyCircle >> radius [
	^ radius
]

{ #category : #setting }
MyCircle >> radius: anInteger [ 
	radius := anInteger
]
