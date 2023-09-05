!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: 'firstCustomer secondCustomer emptyCustomerBook customerBookWithFirstCustomer customerBookWithFirstCustomerSuspended'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'assertions' stamp: 'fd 9/4/2023 21:57:49'!
assertThat: aTestBlock errorsOn: anExpectedErrorClass andThenDo: aVerificationBlock
	
	[ 
		aTestBlock value.
		self fail
	]
		on: anExpectedErrorClass
		do: aVerificationBlock.
! !

!CustomerBookTest methodsFor: 'assertions' stamp: 'fd 9/4/2023 21:53:45'!
assertThat: aCustomerBook numberOfActiveCustomersEquals: aNumberOfActiveCustomers andNumberOfSuspendedCustomersEquals: aNumberOfSuspendedCustomers andNumberOfCustomersEquals: aNumberOfCustomers 
	
	self assert: aNumberOfActiveCustomers equals: aCustomerBook numberOfActiveCustomers.
	self assert: aNumberOfSuspendedCustomers equals: aCustomerBook numberOfSuspendedCustomers.
	self assert: aNumberOfCustomers equals: aCustomerBook numberOfCustomers.! !

!CustomerBookTest methodsFor: 'assertions' stamp: 'fd 9/4/2023 21:28:48'!
assertThat: aBlock runsInLessThan: aTimeLimit

	| millisecondsAfterRunning millisecondsBeforeRunning |
	
	millisecondsBeforeRunning := Time millisecondClockValue * millisecond.
	aBlock value.
	millisecondsAfterRunning := Time millisecondClockValue * millisecond.
	
	self assert: (millisecondsAfterRunning-millisecondsBeforeRunning) < aTimeLimit.! !


!CustomerBookTest methodsFor: 'setUp/tearDown' stamp: 'fd 9/4/2023 21:45:33'!
setUp
	firstCustomer := 'Paul McCartney'.
	secondCustomer := 'John Lennon'.
	
	emptyCustomerBook := 
		CustomerBook new.
		
	customerBookWithFirstCustomer := [		| customerBook |
		customerBook := CustomerBook new.
		customerBook addCustomerNamed: firstCustomer.
		customerBook. ] value.
	
	customerBookWithFirstCustomerSuspended := [		| customerBook |
		customerBook := CustomerBook new.
		customerBook addCustomerNamed: firstCustomer.
		customerBook suspendCustomerNamed: firstCustomer.
		customerBook. ] value.
	! !


!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:43:57'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook |
	
	customerBook := emptyCustomerBook.
	
	self
		assertThat: [customerBook addCustomerNamed: firstCustomer.]
		runsInLessThan: 50 * millisecond.! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:43:29'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	| customerBook |
	
	customerBook := customerBookWithFirstCustomer.
	
	self
		assertThat: [customerBook removeCustomerNamed: firstCustomer.]
		runsInLessThan: 100 * millisecond.
	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:59:40'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook |
			
	customerBook := emptyCustomerBook.

	self assertThat: [ customerBook addCustomerNamed: ''.]
		errorsOn: Error 
		andThenDo: [ :anError | 
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ]! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 22:00:06'!
test04CanNotRemoveAnInvalidCustomer
	
	| customerBook |
			
	customerBook := customerBookWithFirstCustomer.
	
	self assertThat: [ customerBook removeCustomerNamed: secondCustomer.]
		errorsOn: NotFound 
		andThenDo: [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: firstCustomer) ]
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 22:00:31'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook

	| customerBook |
	
	customerBook := customerBookWithFirstCustomerSuspended.
	
	
	self assertThat: customerBook 
		numberOfActiveCustomersEquals: 0
		andNumberOfSuspendedCustomersEquals: 1
		andNumberOfCustomersEquals: 1.
	
	self assert: (customerBook includesCustomerNamed: firstCustomer).
	

	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:54:04'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook

	| customerBook |
	
	customerBook := customerBookWithFirstCustomerSuspended.
	customerBook removeCustomerNamed: firstCustomer.
	
	self assertThat: customerBook 
		numberOfActiveCustomersEquals: 0
		andNumberOfSuspendedCustomersEquals: 0
		andNumberOfCustomersEquals: 0.
		
	self deny: (customerBook includesCustomerNamed: firstCustomer).


	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:58:08'!
test07CanNotSuspendAnInvalidCustomer
	
	| customerBook |
	
	customerBook := customerBookWithFirstCustomer.
	
	self assertThat: [ customerBook suspendCustomerNamed: secondCustomer.]
		errorsOn: CantSuspend 
		andThenDo: [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: firstCustomer) ]
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'fd 9/4/2023 21:58:25'!
test08CanNotSuspendAnAlreadySuspendedCustomer
	
	| customerBook |
			
	customerBook := customerBookWithFirstCustomerSuspended.
	
	self assertThat: [ customerBook suspendCustomerNamed: firstCustomer.]
		errorsOn: CantSuspend 
		andThenDo: [ :anError | 
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: firstCustomer) ]
! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspended active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
addCustomerNamed: aName

	aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ].
	((active includes: aName) or: [suspended includes: aName]) ifTrue: [ self signalCustomerAlreadyExists ].
	
	active add: aName ! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
numberOfActiveCustomers
	
	^active size! !

!CustomerBook methodsFor: 'customer management' stamp: 'fd 9/4/2023 22:02:44'!
numberOfCustomers
	
	^self numberOfActiveCustomers + self numberOfSuspendedCustomers! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 9/19/2018 17:36:09'!
numberOfSuspendedCustomers
	
	^suspended size! !

!CustomerBook methodsFor: 'customer management' stamp: 'fd 9/4/2023 22:05:49'!
removeCustomerNamed: aName 
	(self removeFrom: active customerNamed: aName) ifNotNil: [ ^aName].
	(self removeFrom: suspended customerNamed: aName) ifNotNil: [ ^aName].
	
	^ NotFound signal.
! !

!CustomerBook methodsFor: 'customer management' stamp: 'fd 9/4/2023 22:04:48'!
removeFrom: aCollection customerNamed: aNameToRemove

	1 to: aCollection size do: 
	[ :index |
		aNameToRemove = (aCollection at: index)
			ifTrue: [
				aCollection removeAt: index.
				^ aNameToRemove
			] 
	].

	^nil.
! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:52'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:51'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
suspendCustomerNamed: aName 
	
	(active includes: aName) ifFalse: [^CantSuspend signal].
	
	active remove: aName.
	
	suspended add: aName
! !


!CustomerBook methodsFor: 'initialization' stamp: 'NR 9/17/2020 07:23:04'!
initialize

	active := OrderedCollection new.
	suspended:= OrderedCollection new.! !


!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
includesCustomerNamed: aName

	^(active includes: aName) or: [ suspended includes: aName ]! !

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
isEmpty
	
	^active isEmpty and: [ suspended isEmpty ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 9/4/2023 17:02:48'!
customerAlreadyExistsErrorMessage

	^'Customer already exists!!!!!!'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 9/4/2023 17:02:52'!
customerCanNotBeEmptyErrorMessage

	^'Customer name cannot be empty!!!!!!'! !
