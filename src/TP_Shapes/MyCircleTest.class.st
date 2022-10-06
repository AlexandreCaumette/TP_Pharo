Class {
	#name : #MyCircleTest,
	#superclass : #TestCase,
	#category : #'TP_Shapes'
}

{ #category : #tests }
MyCircleTest >> testArea [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| circle radius |
	
	radius := 4.
	circle := MyCircle radius: radius.
	
	self assert: circle area closeTo: 50.27 precision: 0.01
]

{ #category : #tests }
MyCircleTest >> testCreateCircle [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| circle radius |
	
	radius := 4.
	circle := MyCircle radius: radius.
	
	self assert: circle radius equals: radius.
]

{ #category : #tests }
MyCircleTest >> testPerimeter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| circle radius |
	
	radius := 4.
	circle := MyCircle radius: radius.
	
	self assert: circle perimeter closeTo: 25.13 precision: 0.01
]

{ #category : #tests }
MyCircleTest >> testSetRadius [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| circle radius |
	
	radius := 4.
	circle := MyCircle new.
	circle radius: radius.
	
	self assert: circle radius equals: radius.
]
