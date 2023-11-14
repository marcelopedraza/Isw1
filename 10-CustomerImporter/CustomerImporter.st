!classDefinition: #ImportTest category: 'CustomerImporter'!
TestCase subclass: #ImportTest
	instanceVariableNames: 'inputTextFileStream session'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter'!

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:36:08'!
selectCustomerNamed: aFirstName

	| customers |
	
	customers := session
		select: [ :aCustomer | aCustomer firstName = aFirstName]
		ofType: Customer.
		
	^ customers anyOne! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:49:00'!
test01ImportInputFileHasTwoCustomers

	| customers |
	
	ImportProcess new importCustomersFromStream: inputTextFileStream toSession: session.
	
	customers := session
		select: [ :aCustomer | true]
		ofType: Customer.

	self assert: customers size equals: 2.
	
	"self halt."! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:37:06'!
test02ImportInputFilePepeHasTwoAddresses

	| customer |
	
	ImportProcess new importCustomersFromStream: inputTextFileStream toSession: session.
	
	customer := self selectCustomerNamed: 'Pepe'.
	
	self assert: customer addresses size equals: 2.! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:37:04'!
test03ImportInputFileJuanHasOneAddress

	| customer |
	
	ImportProcess new importCustomersFromStream: inputTextFileStream toSession: session.
	
	customer := self selectCustomerNamed: 'Juan'.
	
	self assert: customer addresses size equals: 1.! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:39:35'!
test04ImportInputFilePepeHasNumberInIdentificationNumber

	| customer |
	
	ImportProcess new importCustomersFromStream: inputTextFileStream toSession: session.
	
	customer := self selectCustomerNamed: 'Pepe'.
	
	self assert: customer identificationNumber first isDigit.! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:45:40'!
test05ImportInputFileHasAddressInFloridaTownInBuenosAiresProvince

	| addresses |
	
	ImportProcess new importCustomersFromStream: inputTextFileStream toSession: session.
	
	addresses := session
		select: [ :anAddress | (anAddress town = 'Florida') and: (anAddress province = 'Buenos Aires')]
		ofType: Address.
	
	self assert: addresses size > 0.! !

!ImportTest methodsFor: 'tests' stamp: 'fd 11/13/2023 21:49:28'!
test06ImportStringWithSixCustomers

	| customers importString |
	
	importString := 
		'C,Juan Carlos,Batman,D,11222333', String newLineString,
		'C,Juan Carlos,Batman,D,11222333', String newLineString,
		'C,Juan Carlos,Batman,D,11222333', String newLineString,
		'C,Juan Carlos,Batman,D,11222333', String newLineString,
		'C,Juan Carlos,Batman,D,11222333', String newLineString,
		'C,Juan Carlos,Batman,D,11222333', String newLineString.
		
	ImportProcess new importCustomersFromStream: (ReadStream on: importString) toSession: session.
	
	customers := session
		select: [ :aCustomer | true]
		ofType: Customer.

	self assert: customers size equals: 6.! !


!ImportTest methodsFor: 'setUp/tearDown' stamp: 'fd 11/13/2023 21:26:26'!
setUp
	inputTextFileStream := UniFileStream new open: 'input.txt' forWrite: false.
	session := DataBaseSession for: (Array with: Address with: Customer).
! !

!ImportTest methodsFor: 'setUp/tearDown' stamp: 'fd 11/13/2023 21:26:26'!
tearDown
	session close.
	inputTextFileStream close.
	! !


!classDefinition: #Address category: 'CustomerImporter'!
Object subclass: #Address
	instanceVariableNames: 'id streetName streetNumber town zipCode province'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter'!

!Address methodsFor: 'province' stamp: 'HAW 5/22/2022 00:19:29'!
province

	^province! !

!Address methodsFor: 'province' stamp: 'HAW 5/22/2022 00:19:29'!
province: aProvince

	province := aProvince
	! !


!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetName

	^streetName ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetName: aStreetName

	streetName := aStreetName ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetNumber

	^streetNumber ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetNumber: aStreetNumber

	streetNumber := aStreetNumber ! !


!Address methodsFor: 'twon' stamp: 'HAW 5/22/2022 00:19:29'!
town

	^town! !

!Address methodsFor: 'twon' stamp: 'HAW 5/22/2022 00:19:29'!
town: aTown

	town := aTown! !


!Address methodsFor: 'zip code' stamp: 'HAW 5/22/2022 00:19:29'!
zipCode

	^zipCode! !

!Address methodsFor: 'zip code' stamp: 'HAW 5/22/2022 00:19:29'!
zipCode: aZipCode

	zipCode := aZipCode! !


!classDefinition: #Customer category: 'CustomerImporter'!
Object subclass: #Customer
	instanceVariableNames: 'id firstName lastName identificationType identificationNumber addresses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter'!

!Customer methodsFor: 'addresses' stamp: 'HAW 5/22/2022 00:19:29'!
addAddress: anAddress

	addresses add: anAddress ! !

!Customer methodsFor: 'addresses' stamp: 'HAW 5/22/2022 00:19:29'!
addresses

	^ addresses! !


!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
firstName

	^firstName ! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
firstName: aName

	firstName := aName! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
lastName

	^lastName ! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
lastName: aLastName

	lastName := aLastName
! !


!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationNumber

	^identificationNumber ! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationNumber: anIdentificationNumber

	identificationNumber := anIdentificationNumber! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationType

	^identificationType ! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationType: anIdentificationType

	identificationType := anIdentificationType! !


!Customer methodsFor: 'initialization' stamp: 'HAW 5/22/2022 00:19:29'!
initialize

	super initialize.
	addresses := OrderedCollection new.! !


!classDefinition: #DataBaseSession category: 'CustomerImporter'!
Object subclass: #DataBaseSession
	instanceVariableNames: 'configuration tables id'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter'!

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 00:19:29'!
beginTransaction

	! !

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 19:17:36'!
commit

	(tables at: Customer ifAbsent: [#()]) do: [ :aCustomer | self persistAddressesOf: aCustomer ]
	! !


!DataBaseSession methodsFor: 'closing' stamp: 'HAW 5/22/2022 00:19:29'!
close

	! !


!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 00:19:29'!
defineIdOf: anObject

	anObject instVarNamed: 'id' put: (self newIdFor: anObject).! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'fd 11/13/2023 21:25:50'!
delay

	"(Delay forMilliseconds: 100) wait"! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 19:29:06'!
objectsOfType: aType

	^ tables at: aType ifAbsent: [ #() ]! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 00:19:29'!
persistAddressesOf: anObjectWithAddresses

	anObjectWithAddresses addresses do: [ :anAddress | self persist: anAddress ]
	! !


!DataBaseSession methodsFor: 'initialization' stamp: 'HAW 5/22/2022 00:19:29'!
initializeFor: aConfiguration

	configuration := aConfiguration.
	tables := Dictionary new.
	id := 0.! !


!DataBaseSession methodsFor: 'id' stamp: 'HAW 5/22/2022 00:19:29'!
newIdFor: anObject

	id := id + 1.
	^id! !


!DataBaseSession methodsFor: 'persistance' stamp: 'HAW 5/22/2022 00:19:29'!
persist: anObject

	| table |

	self delay.
	table := tables at: anObject class ifAbsentPut: [ Set new ].

	self defineIdOf: anObject.
	table add: anObject.

	(anObject isKindOf: Customer) ifTrue: [ self persistAddressesOf: anObject ].! !


!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 19:29:06'!
select: aCondition ofType: aType

	self delay.
	^(self objectsOfType: aType) select: aCondition ! !

!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 19:29:06'!
selectAllOfType: aType

	self delay.
	^(self objectsOfType: aType) copy ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DataBaseSession class' category: 'CustomerImporter'!
DataBaseSession class
	instanceVariableNames: ''!

!DataBaseSession class methodsFor: 'instance creation' stamp: 'HAW 5/22/2022 00:19:29'!
for: aConfiguration

	^self new initializeFor: aConfiguration! !


!classDefinition: #ImportProcess category: 'CustomerImporter'!
Object subclass: #ImportProcess
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter'!

!ImportProcess methodsFor: 'as yet unclassified' stamp: 'fd 11/13/2023 21:45:12'!
importCustomersFromStream: inputStream toSession: session

	| line newCustomer |
	
	session beginTransaction.
	
	line := inputStream nextLine.
	[ line notNil ] whileTrue: [
		(line beginsWith: 'C') ifTrue: [ | customerData |
			customerData := line findTokens: $,.
			newCustomer := Customer new.
			newCustomer firstName: customerData second.
			newCustomer lastName: customerData third.
			newCustomer identificationType: customerData fourth.
			newCustomer identificationNumber: customerData fifth.
			session persist: newCustomer ].

		(line beginsWith: 'A') ifTrue: [ | addressData newAddress |
			addressData := line findTokens: $,.
			newAddress := Address new.
			newCustomer addAddress: newAddress.
			newAddress streetName: addressData second.
			newAddress streetNumber: addressData third asNumber .
			newAddress town: addressData fourth.
			newAddress zipCode: addressData fifth asNumber .
			newAddress province: addressData sixth ].

		line := inputStream nextLine. ].

	session commit.
	! !
