Class {
	#name : #MyRectangleTest,
	#superclass : #TestCase,
	#category : #'TP_Shapes'
}

{ #category : #tests }
MyRectangleTest >> testArea [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| rectangle |
	
	rectangle := MyRectangle width: 4 height: 3.
	
	self assert: rectangle area equals: 12.
]

{ #category : #tests }
MyRectangleTest >> testCreateRectangle [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| rectangle width height |
	
	width := 4.
	height := 3.
	rectangle := MyRectangle width: width height: height.
	
	self assert: rectangle width equals: width.
	self assert: rectangle height equals: height.
]

{ #category : #tests }
MyRectangleTest >> testPerimeter [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| rectangle |
	
	rectangle := MyRectangle width: 4 height: 3.
	
	self assert: rectangle perimeter equals: 14.
]

{ #category : #tests }
MyRectangleTest >> testSetHeight [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| rectangle height |
	
	height := 3.
	rectangle := MyRectangle new.
	rectangle height: height.
	
	self assert: rectangle height equals: height.
]

{ #category : #tests }
MyRectangleTest >> testSetWidth [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| rectangle width |
	
	width := 4.
	rectangle := MyRectangle new.
	rectangle width: width.
	
	self assert: rectangle width equals: width.
]
