Class {
	#name : #MyRectangle,
	#superclass : #MyShape,
	#instVars : [
		'width',
		'height'
	],
	#category : #'TP_Shapes'
}

{ #category : #creating }
MyRectangle class >> width: aWidth height: aHeight [ 
	| rectangle |
	
	rectangle := MyRectangle new.
	rectangle width: aWidth.
	rectangle height: aHeight.
	
	^ rectangle
]

{ #category : #getting }
MyRectangle >> area [
	^ width * height.
]

{ #category : #getting }
MyRectangle >> height [
	^ height
]

{ #category : #setting }
MyRectangle >> height: anInteger [ 
	height := anInteger
]

{ #category : #initialization }
MyRectangle >> initialize [ 
	
	super initialize.
	width := 0.
	height := 0.
]

{ #category : #getting }
MyRectangle >> perimeter [
	^ 2 * (width + height).
]

{ #category : #printing }
MyRectangle >> printOn: aStream [
	
]

{ #category : #getting }
MyRectangle >> width [
	^ width
]

{ #category : #setting }
MyRectangle >> width: anInteger [ 
	width := anInteger
]
