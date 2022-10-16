Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode',
		'prevNode'
	],
	#category : #'TP_Linked_List'
}

{ #category : #creating }
Node class >> value: aValue prevNode: aPrevNode nextNode: aNextNode [ 
	| node |
	
	node := Node new.
	node value: aValue.
	node prevNode: aPrevNode.
	node nextNode: aNextNode.
	
	^ node
]

{ #category : #initialization }
Node >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	
	value := NulValue.
	prevNode := NulNode.
	nextNode := NulNode.
]

{ #category : #getting }
Node >> nextNode [
	^ nextNode
]

{ #category : #setting }
Node >> nextNode: aNode [ 
	nextNode := aNode
]

{ #category : #getting }
Node >> prevNode [
	^ prevNode
]

{ #category : #setting }
Node >> prevNode: aNode [ 
	prevNode := aNode
]

{ #category : #setting }
Node >> value [ 
	^ value
]

{ #category : #setting }
Node >> value: aValue [ 
	value := aValue
]
