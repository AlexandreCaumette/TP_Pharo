Class {
	#name : #NodeTest,
	#superclass : #TestCase,
	#category : #'TP_Linked_List'
}

{ #category : #tests }
NodeTest >> testCreate [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	node := Node value: 2 prevNode: NulNode new nextNode: NulNode new.
	self assert: node value equals: 2
]

{ #category : #tests }
NodeTest >> testSetNext [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node aNode |
	node := Node new.
	aNode := Node new.
	node nextNode: aNode.
	self assert: node nextNode equals: aNode.
]

{ #category : #tests }
NodeTest >> testSetPrev [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node aNode |
	node := Node new.
	aNode := Node new.
	node prevNode: aNode.
	self assert: node prevNode equals: aNode.
]

{ #category : #tests }
NodeTest >> testSetValue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| node |
	node := Node new.
	node value: 5.
	self assert: node value equals: 5.
]
