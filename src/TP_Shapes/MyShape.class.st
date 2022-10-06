Class {
	#name : #MyShape,
	#superclass : #Object,
	#instVars : [
		'color',
		'isFilled'
	],
	#category : #'TP_Shapes'
}

{ #category : #creating }
MyShape class >> color: aString isFilled: aBoolean [ 
	| shape |
	
	shape := MyShape new.
	shape color: aString.
	shape isFilled: aBoolean.
	
	^ shape
]

{ #category : #getting }
MyShape >> color [
	^ color
]

{ #category : #setting }
MyShape >> color: aString [ 
	color := aString.
]

{ #category : #initialization }
MyShape >> initialize [
	"comment stating purpose of instance-side method"
	
	super initialize.
	color := 'white'.
	isFilled := false.
]

{ #category : #getting }
MyShape >> isFilled [
	^ isFilled
]

{ #category : #setting }
MyShape >> isFilled: aBoolean [ 
	isFilled := aBoolean.
]
