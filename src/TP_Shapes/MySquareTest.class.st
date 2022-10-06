Class {
	#name : #MySquareTest,
	#superclass : #TestCase,
	#category : #'TP_Shapes'
}

{ #category : #tests }
MySquareTest >> testArea [

	| square side |
	
	side := 4.
	square := MySquare side: side.
	
	self assert: square area equals: 16.
]

{ #category : #tests }
MySquareTest >> testCreateSquare [

	| square side |
	
	side := 4.
	square := MySquare side: side.
	
	self assert: square side equals: side.
]

{ #category : #tests }
MySquareTest >> testPerimeter [

	| square side |
	
	side := 4.
	square := MySquare side: side.
	
	self assert: square perimeter equals: 16.
]

{ #category : #tests }
MySquareTest >> testSetSide [

	| square side |
	
	side := 4.
	square := MySquare new.
	square side: side.
	
	self assert: square side equals: side.
]
