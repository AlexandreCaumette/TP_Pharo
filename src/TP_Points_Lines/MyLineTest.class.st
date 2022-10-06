Class {
	#name : #MyLineTest,
	#superclass : #TestCase,
	#category : #'TP_Points_Lines'
}

{ #category : #tests }
MyLineTest >> testCreateLine [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end |
	
	begin := MyPoint x: 4 y: 5.
	end := MyPoint x: 5 y: 6.
	line := MyLine begin: begin end: end.
	
	self assert: line begin equals: begin.
	self assert: line end equals: end.
]

{ #category : #tests }
MyLineTest >> testGradient [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end |
	
	begin := MyPoint x: 1 y: 1.
	end := MyPoint x: 4 y: 4.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient closeTo: 1 precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testGradientHorizontal [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end |
	
	begin := MyPoint x: 0 y: 4.
	end := MyPoint x: 4 y: 4.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient closeTo: 0 precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testGradientInvariant [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line1 line2 point1 point2 |
	
	point1 := MyPoint x: 0 y: 3.
	point2 := MyPoint x: 6 y: 5.
	
	line1 := MyLine begin: point1 end: point2.
	line2 := MyLine begin: point2 end: point1.
	
	self assert: line1 gradient closeTo: line2 gradient precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testGradientVertical [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end |
	
	begin := MyPoint x: 0 y: 0.
	end := MyPoint x: 0 y: 4.
	line := MyLine begin: begin end: end.
	
	self assert: line gradient closeTo: 0 precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testLength [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end |
	
	begin := MyPoint x: 1 y: 1.
	end := MyPoint x: 4 y: 4.
	line := MyLine begin: begin end: end.
	
	self assert: line length closeTo: 4.24 precision: 0.01.
]

{ #category : #tests }
MyLineTest >> testPrintOn [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin end aStream |
	
	begin := MyPoint x: 0 y: 3.
	end := MyPoint x: 6 y: 5.
	
	line := MyLine begin: begin end: end.
	aStream := ReadWriteStream on: String new.
	
	self assert: (line printOn: aStream) asString equals: '(0, 3) --> (6, 5)'.
]

{ #category : #tests }
MyLineTest >> testSetBegin [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line begin |
	
	begin := MyPoint x: 4 y: 5.
	line := MyLine new.
	line begin: begin.
	
	self assert: line begin equals: begin.
]

{ #category : #tests }
MyLineTest >> testSetEnd [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| line end |
	
	end := MyPoint x: 4 y: 5.
	line := MyLine new.
	line end: end.
	
	self assert: line end equals: end.
]
