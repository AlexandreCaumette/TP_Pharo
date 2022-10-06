Class {
	#name : #MyPointTest,
	#superclass : #TestCase,
	#category : #'TP_Points_Lines'
}

{ #category : #tests }
MyPointTest >> testCreatePoint [
			
	| point x y |
	
	x := 4.
	y := 3.
	point := MyPoint x: x y: y.
	
	self assert: point x equals: x.
	self assert: point y equals: y.
]

{ #category : #tests }
MyPointTest >> testPrintOn [
			
	| point x y aStream |
	
	x := 4.
	y := 3.
	point := MyPoint x: x y: y.
	aStream := ReadWriteStream on: String new.
	
	self assert: (point printOn: aStream) asString equals: '(4, 3)'.
]

{ #category : #tests }
MyPointTest >> testSetX [
			
	| point x |
	
	x := 4.
	point := MyPoint new.
	point x: x.
	
	self assert: point x equals: x.
]

{ #category : #tests }
MyPointTest >> testSetY [
			
	| point y |
	
	y := 3.
	point := MyPoint new.
	point y: y.
	
	self assert: point y equals: y.
]
