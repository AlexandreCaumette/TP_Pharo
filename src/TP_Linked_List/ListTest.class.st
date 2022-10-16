Class {
	#name : #ListTest,
	#superclass : #TestCase,
	#category : #'TP_Linked_List'
}

{ #category : #tests }
ListTest >> testAdd [
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.

	self assert: list begin equals: 2.	
	self assert: (list at: 2) equals: 3.
	self assert: list end equals: 4
]

{ #category : #tests }
ListTest >> testAddOne [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	self assert: list end value equals: 2
]

{ #category : #tests }
ListTest >> testAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	self assert: (list at: 2) equals: 3
]

{ #category : #tests }
ListTest >> testAtBegin [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	self assert: (list at: 1) equals: 2
]

{ #category : #tests }
ListTest >> testAtBeginPut [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	list at: 1 put: 5.
	
	self assert: (list at: 1) equals: 5
]

{ #category : #tests }
ListTest >> testAtEnd [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	list add: 5.
	self assert: (list at: 2) equals: 5
]

{ #category : #tests }
ListTest >> testAtEndPut [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	list at: 3 put: 5.
	
	self assert: (list at: 3) equals: 5
]

{ #category : #tests }
ListTest >> testAtPut [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	list at: 2 put: 5.
	
	self assert: (list at: 2) equals: 5
]

{ #category : #tests }
ListTest >> testBegin [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list begin: 2.
	self assert: list begin equals: 2
]

{ #category : #tests }
ListTest >> testCollect [
			
	| list map result |
	
	list := List new.
	list add: 1.
	list add: 2.
	
	map := list collect: [ :value | ^ value * 10 ].
	
	result := List new.
	result add: 10.
	result add: 20.
	
	self assert: map size equals: result size.
	self assert: map begin equals: result begin.
	self assert: map end equals: result end.
]

{ #category : #tests }
ListTest >> testCollectEmpty [
			
	| list map |
	
	list := List new.
	
	map := list collect: [ :value | ^ value * 10 ].
	
	self assert: map isEmpty equals: true.
]

{ #category : #tests }
ListTest >> testDetect [
			
	| list result |
	
	list := List new.
	list add: 1.
	list add: 2.
	list add: 3.
	list add: 4.
	
	result := list detect: [ :value | ^ value odd ].
	
	self assert: result equals: 2.
]

{ #category : #tests }
ListTest >> testDetectEmpty [
			
	| list result |
	
	list := List new.
	
	result := list detect: [ :value | ^ value odd ].
	
	self assert: result class equals: NulValue
]

{ #category : #tests }
ListTest >> testDo [
			
	| list |
	
	list := List new.
	list add: 1.
	list add: 2.
	list add: 3.
	
	list do: [ :value | ^ value * (-1) ].
	
	self assert: list size equals: 2.
	self assert: list begin equals: -1.
	self assert: list end equals: -3.
]

{ #category : #tests }
ListTest >> testDoEmpty [
			
	| list |
	
	list := List new.
	
	list do: [ :value | ^ value * (-1) ].
	
	self assert: list isEmpty equals: true
]

{ #category : #tests }
ListTest >> testEnd [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	self assert: list end equals: 2
]

{ #category : #tests }
ListTest >> testIsEmpty [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	self assert: list isEmpty equals: true
]

{ #category : #tests }
ListTest >> testReject [
			
	| list selection |
	
	list := List new.
	list add: 1.
	list add: 2.
	list add: 3.
	list add: 4.
	
	selection := list reject: [ :value | ^ value odd ].
	
	self assert: selection size equals: 2.
	self assert: selection begin equals: 1.
	self assert: selection end equals: 3.
]

{ #category : #tests }
ListTest >> testRejectEmpty [
			
	| list selection |
	
	list := List new.
	
	selection := list reject: [ :value | ^ value odd ].
	
	self assert: selection isEmpty equals: true.
]

{ #category : #tests }
ListTest >> testRemoveAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	list removeAt: 2.
	
	self assert: list size equals: 2.
	self assert: (list at: 2) equals: 4
]

{ #category : #tests }
ListTest >> testRemoveAtBegin [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list removeAt: 1.
	
	self assert: list isEmpty equals: true
]

{ #category : #tests }
ListTest >> testRemoveAtEnd [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	
	list := List new.
	list add: 2.
	list add: 3.
	list add: 4.
	list removeAt: 3.
	
	self assert: list size equals: 2.
	self assert: (list at: 2) equals: 3
]

{ #category : #tests }
ListTest >> testSelect [
			
	| list selection result |
	
	list := List new.
	list add: 1.
	list add: 2.
	list add: 3.
	list add: 4.
	
	selection := list select: [ :value | ^ value odd ].
	
	result := List new.
	result add: 2.
	result add: 4.
	
	self assert: selection size equals: result size.
	self assert: selection begin equals: result begin.
	self assert: selection end equals: result end.
]

{ #category : #tests }
ListTest >> testSelectEmpty [
			
	| list selection |
	
	list := List new.
	
	selection := list select: [ :value | ^ value odd ].
	
	self assert: selection isEmpty equals: true.
]

{ #category : #tests }
ListTest >> testSize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	list add: 2.
	list add: 2.
	self assert: list size equals: 3
]

{ #category : #tests }
ListTest >> testSizeOfEmpty [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	self assert: list size equals: 0
]

{ #category : #tests }
ListTest >> testSizeOfOne [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| list |
	list := List new.
	list add: 2.
	self assert: list size equals: 1
]
