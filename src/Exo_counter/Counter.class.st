"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'Exo_counter',
	#package : 'Exo_counter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
^ self new count: anInteger.
]

{ #category : 'accessing' }
Counter >> count [
	^ count 
]

{ #category : 'accessing' }
Counter >> count: anInteger [

	count := anInteger 
]

{ #category : 'operation' }
Counter >> decrement [ 
	count := count - 1
]

{ #category : 'operation' }
Counter >> increment [ 
	count := count + 1  
]

{ #category : 'initialization' }
Counter >> initialize [
"set the initial value of the value to 0"
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString
]
