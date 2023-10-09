!classDefinition: #MarsRoverTest category: 'MarsRover'!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/12/2023 16:56:20'!
assertMarsRover: aMarsRover hasPosition: aPosition andDirection: aDirection 
	self assert: ((aMarsRover position = aPosition) and: (aMarsRover direction = aDirection))! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:15:36'!
test01MarsRoverStartsOnInitializedPosition
	| mr |
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	self assert: 4@2 equals: mr position
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:15:43'!
test02MarsRoverStartsOnInitializedDirection
	| mr |
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	self assert: North equals: mr direction
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:15:53'!
test03MarsRoverDoesNotMoveOnEmptySetOfCommands
	| mr commands |
	
	commands := ''.
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:15:58'!
test04MarsRoverMovesForwardOnCommandWhenFacingNorth
	| mr commands |
	
	commands := 'f'.
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@3 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:03'!
test05MarsRoverMovesBackwardOnCommandWhenFacingNorth
	| mr commands |
	
	commands := 'b'.
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@1 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:15'!
test06MarsRoverRotatesLeftOnCommandWhenFacingNorth
	| mr commands |
	
	commands := 'l'.
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: West.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:11'!
test07MarsRoverRotatesRightOnCommandWhenFacingNorth
	| mr commands |
	
	commands := 'r'.
	
	mr := MarsRover startsOn: 4@2 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: East.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:22'!
test08MarsRoverMovesForwardOnCommandWhenFacingEast
	| mr commands |
	
	commands := 'f'.
	
	mr := MarsRover startsOn: 4@2 facing: East.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 5@2 andDirection: East.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:26'!
test09MarsRoverMovesBackwardOnCommandWhenFacingEast
	| mr commands |
	
	commands := 'b'.
	
	mr := MarsRover startsOn: 4@2 facing: East.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 3@2 andDirection: East.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:46'!
test10MarsRoverRotatesLeftOnCommandWhenFacingEast
	| mr commands |
	
	commands := 'l'.
	
	mr := MarsRover startsOn: 4@2 facing: East.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:52'!
test11MarsRoverRotatesRightOnCommandWhenFacingEast
	| mr commands |
	
	commands := 'r'.
	
	mr := MarsRover startsOn: 4@2 facing: East.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: South.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:16:59'!
test12MarsRoverMovesForwardOnCommandWhenFacingWest
	| mr commands |
	
	commands := 'f'.
	
	mr := MarsRover startsOn: 4@2 facing: West.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 3@2 andDirection: West.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:03'!
test13MarsRoverMovesBackwardOnCommandWhenFacingWest
	| mr commands |
	
	commands := 'b'.
	
	mr := MarsRover startsOn: 4@2 facing: West.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 5@2 andDirection: West.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:08'!
test14MarsRoverRotatesLeftOnCommandWhenFacingWest
	| mr commands |
	
	commands := 'l'.
	
	mr := MarsRover startsOn: 4@2 facing: West.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: South.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:15'!
test15MarsRoverRotatesRightOnCommandWhenFacingWest
	| mr commands |
	
	commands := 'r'.
	
	mr := MarsRover startsOn: 4@2 facing: West.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:19'!
test16MarsRoverMovesForwardOnCommandWhenFacingSouth
	| mr commands |
	
	commands := 'f'.
	
	mr := MarsRover startsOn: 4@2 facing: South.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@1 andDirection: South.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:25'!
test17MarsRoverMovesBackwardOnCommandWhenFacingSouth
	| mr commands |
	
	commands := 'b'.
	
	mr := MarsRover startsOn: 4@2 facing: South.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@3 andDirection: South.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:29'!
test18MarsRoverRotatesLeftOnCommandWhenFacingSouth
	| mr commands |
	
	commands := 'l'.
	
	mr := MarsRover startsOn: 4@2 facing: South.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: East.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'fd 5/12/2023 18:17:34'!
test19MarsRoverRotatesRightOnCommandWhenFacingSouth
	| mr commands |
	
	commands := 'r'.
	
	mr := MarsRover startsOn: 4@2 facing: South.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 4@2 andDirection: West.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/15/2023 16:30:24'!
test20MarsRoverMovesForwardTwice
	| mr commands |
	
	commands := 'ff'.
	
	mr := MarsRover startsOn: 0@0 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 0@2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/15/2023 16:33:33'!
test21MarsRoverMovesForwardOnlyTwiceOnUnexpectedCommand
	| mr commands |
	
	commands := 'ffXDfffffffffffffff'.
	
	mr := MarsRover startsOn: 0@0 facing: North.
	
	self 
		should: [ mr processCommands: commands ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = 'Command is invalid. Remaining commands will not be processed' ].
	
	self assertMarsRover: mr hasPosition: 0@2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/15/2023 16:31:55'!
test22MarsRoverMovesBackwardTwice
	| mr commands |
	
	commands := 'bb'.
	
	mr := MarsRover startsOn: 0@0 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 0@-2 andDirection: North.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/15/2023 16:32:17'!
test23MarsRoverRotatesLeftTwice
	| mr commands |
	
	commands := 'll'.
	
	mr := MarsRover startsOn: 0@0 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 0@0 andDirection: South.
	
	! !

!MarsRoverTest methodsFor: 'testing' stamp: 'JV 5/15/2023 16:32:32'!
test24MarsRoverRotatesRightTwice
	| mr commands |
	
	commands := 'rr'.
	
	mr := MarsRover startsOn: 0@0 facing: North.
	
	mr processCommands: commands.
	
	self assertMarsRover: mr hasPosition: 0@0 andDirection: South.
	
	! !


!classDefinition: #Direction category: 'MarsRover'!
Object subclass: #Direction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Direction class' category: 'MarsRover'!
Direction class
	instanceVariableNames: 'DeltaForward Opposite RotatedLeft90Degrees RotatedRight90Degrees'!

!Direction class methodsFor: 'as yet unclassified' stamp: 'fd 5/12/2023 18:12:00'!
nextPointBackwardFrom: aPoint
	^Opposite nextPointForwardFrom: aPoint.! !

!Direction class methodsFor: 'as yet unclassified' stamp: 'fd 5/12/2023 18:12:02'!
nextPointForwardFrom: aPoint
	^aPoint + DeltaForward.! !

!Direction class methodsFor: 'as yet unclassified' stamp: 'fd 5/12/2023 18:11:49'!
rotatedLeft90Degrees
	^RotatedLeft90Degrees.! !

!Direction class methodsFor: 'as yet unclassified' stamp: 'fd 5/12/2023 18:11:55'!
rotatedRight90Degrees
	^RotatedRight90Degrees.! !


!classDefinition: #East category: 'MarsRover'!
Direction subclass: #East
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'East class' category: 'MarsRover'!
East class
	instanceVariableNames: ''!

!East class methodsFor: 'initialization' stamp: 'fd 5/12/2023 18:13:42'!
initialize
	DeltaForward := 1@0.
	Opposite := West.
	RotatedLeft90Degrees := North.
	RotatedRight90Degrees := South.! !


!classDefinition: #North category: 'MarsRover'!
Direction subclass: #North
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'North class' category: 'MarsRover'!
North class
	instanceVariableNames: ''!

!North class methodsFor: 'initialization' stamp: 'fd 5/12/2023 18:10:23'!
initialize
	DeltaForward := 0@1.
	Opposite := South.
	RotatedLeft90Degrees := West.
	RotatedRight90Degrees := East.! !


!classDefinition: #South category: 'MarsRover'!
Direction subclass: #South
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'South class' category: 'MarsRover'!
South class
	instanceVariableNames: ''!

!South class methodsFor: 'initialization' stamp: 'fd 5/12/2023 18:12:35'!
initialize
	DeltaForward := 0@-1.
	Opposite := North.
	RotatedLeft90Degrees := East.
	RotatedRight90Degrees := West.! !


!classDefinition: #West category: 'MarsRover'!
Direction subclass: #West
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'West class' category: 'MarsRover'!
West class
	instanceVariableNames: ''!

!West class methodsFor: 'initialization' stamp: 'fd 5/12/2023 18:14:10'!
initialize
	DeltaForward := -1@0.
	Opposite := East.
	RotatedLeft90Degrees := South.
	RotatedRight90Degrees := North.! !


!classDefinition: #MarsRover category: 'MarsRover'!
Object subclass: #MarsRover
	instanceVariableNames: 'direction position commandHandlers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'accessing' stamp: 'JV 5/12/2023 17:04:50'!
direction
	^direction! !

!MarsRover methodsFor: 'accessing' stamp: 'fd 5/12/2023 18:18:44'!
position
	^position! !


!MarsRover methodsFor: 'processing' stamp: 'fd 5/12/2023 19:09:17'!
handleCommand: command ifInvalid: invalidCallbackBlock
	| handler handlerName |
	handlerName := ('handleCommand' , (command asUppercase asString)) asSymbol.

	handler := self class compiledMethodAt: handlerName ifAbsent: [^invalidCallbackBlock value]. 

	handler valueWithReceiver: self arguments: #().
! !

!MarsRover methodsFor: 'processing' stamp: 'JV 5/15/2023 16:33:22'!
processCommands: commands 
	commands do: [:command |
		self handleCommand: command ifInvalid: [self error: 'Command is invalid. Remaining commands will not be processed'.].
	]
	
	
	
	! !


!MarsRover methodsFor: 'initialization' stamp: 'fd 5/12/2023 19:04:01'!
initializeWithPosition: aPosition andDirection: aDirection
	position := aPosition.
	direction := aDirection.
! !


!MarsRover methodsFor: 'command handers' stamp: 'fd 5/12/2023 19:04:15'!
handleCommandB
	position := direction nextPointBackwardFrom: position.
		! !

!MarsRover methodsFor: 'command handers' stamp: 'fd 5/12/2023 18:55:12'!
handleCommandF
	position := direction nextPointForwardFrom: position.! !

!MarsRover methodsFor: 'command handers' stamp: 'fd 5/12/2023 19:04:27'!
handleCommandL
	direction := direction rotatedLeft90Degrees.! !

!MarsRover methodsFor: 'command handers' stamp: 'fd 5/12/2023 19:04:32'!
handleCommandR
	direction := direction rotatedRight90Degrees.
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: 'MarsRover'!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'as yet unclassified' stamp: 'JV 5/12/2023 16:44:43'!
startsOn: aPosition facing: aDirection
	^self new initializeWithPosition: aPosition andDirection: aDirection ! !

East initialize!
North initialize!
South initialize!
West initialize!