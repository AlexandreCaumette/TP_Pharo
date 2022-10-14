Class {
	#name : #List,
	#superclass : #Object,
	#instVars : [
		'begin',
		'end'
	],
	#category : #'TP_Linked_List'
}

{ #category : #adding }
List >> add: aValue [
	| prevNode node |
	
	node := Node value: aValue prevNode: end nextNode: (NulNode new).
	prevNode := end.
	prevNode nextNode: node.
	end := node.
	
	begin class = NulNode ifTrue: [ begin := node ].
	
]

{ #category : #accessing }
List >> at: anIndex [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	| node |
	
	node := begin.
	
	1 to: anIndex - 1 do: [ :i |
		node := node nextNode].
	
	^ node value
]

{ #category : #accessing }
List >> at: anIndex put: aValue [
	| prevNode node nextNode |
	
	anIndex = 1 
		ifTrue: [ self begin: aValue ]
		ifFalse: [
			nextNode := begin.

			1 to: anIndex - 1 do: [ :i |
				nextNode := nextNode nextNode ].
	
			prevNode := nextNode prevNode.
	
			node := Node value: aValue prevNode: prevNode nextNode: nextNode.
	
			prevNode nextNode: node.
			nextNode prevNode: node.
		].
]

{ #category : #getting }
List >> begin [
	^ begin value
]

{ #category : #setting }
List >> begin: aValue [

	| node beginNode |
	
	node := Node value: aValue prevNode: (NulNode new) nextNode: begin.
	beginNode := begin.
	beginNode prevNode: node.
	begin := node.
]

{ #category : #mapping }
List >> collect: aFullBlockClosure [

	| map node |
	
	map := List new.
	node := begin.
	 
	1 to: self size do: [ :i |
		map add: (node value * 10).
		node := node nextNode ].
	
	^ map
]

{ #category : #getting }
List >> end [
	end class = NulNode ifTrue: [ ^ self begin ] ifFalse: [ ^ end value ]
]

{ #category : #getting }
List >> end: aValue [
	| node endNode |
	node := Node value: aValue prevNode: end nextNode: NulNode new.
	endNode := end.
	endNode nextNode: node.
	end := node.
]

{ #category : #initialization }
List >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize.
	begin := NulNode new.
	end := NulNode new.
]

{ #category : #getting }
List >> isEmpty [
	^ (begin class = NulNode) & (end class = NulNode)
]

{ #category : #setting }
List >> removeAt: anIndex [

	| prevNode node nextNode |
	
	node := begin.
	
	1 to: anIndex - 1 do: [ :i |
		node := node nextNode ].
	
	nextNode := node nextNode.
	prevNode := node prevNode.
	
	prevNode nextNode: nextNode.
	nextNode prevNode: prevNode.
	
	anIndex = self size ifTrue: [ end := prevNode ].
	anIndex = 1 ifTrue: [ begin := nextNode ]
]

{ #category : #getting }
List >> size [
	| node index |
	
	index := 0.
	node := begin.
	
	[ node class = NulNode ] whileFalse: [ 
		index := index + 1.
		node := node nextNode.
	].

	^ index
]
