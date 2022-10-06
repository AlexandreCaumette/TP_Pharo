Class {
	#name : #MyShapeTest,
	#superclass : #TestCase,
	#category : #'TP_Shapes'
}

{ #category : #tests }
MyShapeTest >> testCreateShape [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| shape color isFilled |
	
	color := 'color'.
	isFilled := true.
	shape := MyShape color: color isFilled: isFilled.
	
	self assert: shape color equals: color.
	self assert: shape isFilled equals: isFilled.
]

{ #category : #tests }
MyShapeTest >> testSetColor [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| shape color |
	
	color := 'color'.
	shape := MyShape new.
	shape color: color.
	
	self assert: shape color equals: color.
]

{ #category : #tests }
MyShapeTest >> testSetIsFilled [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| shape isFilled |
	
	isFilled := true.
	shape := MyShape new.
	shape isFilled: isFilled.
	
	self assert: shape isFilled equals: isFilled.
]
