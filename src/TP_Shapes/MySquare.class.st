Class {
	#name : #MySquare,
	#superclass : #MyRectangle,
	#instVars : [
		'side'
	],
	#category : #'TP_Shapes'
}

{ #category : #creating }
MySquare class >> side: anInteger [ 
	| square |
	
	square := MySquare new.
	square side: anInteger.
	
	^ square
]

{ #category : #getting }
MySquare >> area [
	^ side ** 2
]

{ #category : #initialization }
MySquare >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	side := 0.
]

{ #category : #getting }
MySquare >> perimeter [
	^ 4 * side
]

{ #category : #getting }
MySquare >> side [
	^ side
]

{ #category : #setting }
MySquare >> side: anInteger [ 
	side := anInteger
]
