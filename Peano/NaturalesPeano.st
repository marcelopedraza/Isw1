!classDefinition: #I category: 'NaturalesPeano'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: 'NaturalesPeano'!
I class
	instanceVariableNames: 'next'!

!I class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 22:30:33'!
* aNaturalNumber
	^ aNaturalNumber! !

!I class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:02:16'!
+ aNaturalNumber
	^aNaturalNumber next! !

!I class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:08:37'!
< aNaturalNumber
 ^ true! !

!I class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:08:41'!
> aNaturalNumber
 ^false! !

!I class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 22:39:58'!
dividiteA: aNaturalNumber
	^ aNaturalNumber! !

!I class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:32:11'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	^next 

	! !


!I class methodsFor: 'aux' stamp: 'Mp 8/24/2023 22:04:28'!
restateA: AnaturalNumber
	^ AnaturalNumber previous
! !


!I class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := II.! !


!classDefinition: #II category: 'NaturalesPeano'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: 'NaturalesPeano'!
II class
	instanceVariableNames: 'next previous'!

!II class methodsFor: 'auxiliares' stamp: 'Mp 8/24/2023 21:21:24'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!II class methodsFor: 'auxiliares' stamp: 'Mp 8/24/2023 22:02:21'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!II class methodsFor: 'auxiliares' stamp: 'Mp 8/24/2023 22:01:35'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!II class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 22:30:15'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:26:09'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:53:27'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:18:39'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:08:32'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:22:20'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:24:59'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:35:22'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!II class methodsFor: 'operaciones' stamp: 'Mp 8/24/2023 21:21:49'!
previous
	^ previous! !


!II class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := III.
	previous := I.! !


!classDefinition: #III category: 'NaturalesPeano'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: 'NaturalesPeano'!
III class
	instanceVariableNames: 'next previous'!

!III class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!III class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!III class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!III class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
previous
	^ previous! !


!III class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIII.
	previous := II.! !


!classDefinition: #IIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: 'NaturalesPeano'!
IIII class
	instanceVariableNames: 'next previous'!

!IIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:23'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:23'!
previous
	^ previous! !


!IIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIII.
	previous := III.! !


!classDefinition: #IIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIII class' category: 'NaturalesPeano'!
IIIII class
	instanceVariableNames: 'next previous'!

!IIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
previous
	^ previous! !


!IIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIII.
	previous := IIII.! !


!classDefinition: #IIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIII class' category: 'NaturalesPeano'!
IIIIII class
	instanceVariableNames: 'next previous'!

!IIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
previous
	^ previous! !


!IIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIII.
	previous := IIIII.! !


!classDefinition: #IIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIII class' category: 'NaturalesPeano'!
IIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
previous
	^ previous! !


!IIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIIII.
	previous := IIIIII.! !


!classDefinition: #IIIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIII class' category: 'NaturalesPeano'!
IIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
previous
	^ previous! !


!IIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIIIII.
	previous := IIIIIII.! !


!classDefinition: #IIIIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIIII class' category: 'NaturalesPeano'!
IIIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
previous
	^ previous! !


!IIIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIIIIII.
	previous := IIIIIIII.! !


!classDefinition: #IIIIIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIIIII class' category: 'NaturalesPeano'!
IIIIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:38'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:38'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
previous
	^ previous! !


!IIIIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIIIIIII.
	previous := IIIIIIIII.! !


!classDefinition: #IIIIIIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIIIIII class' category: 'NaturalesPeano'!
IIIIIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
previous
	^ previous! !


!IIIIIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIIIIIIIII.
	previous := IIIIIIIIII.! !


!classDefinition: #IIIIIIIIIIII category: 'NaturalesPeano'!
DenotativeObject subclass: #IIIIIIIIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NaturalesPeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIIIIIIIII class' category: 'NaturalesPeano'!
IIIIIIIIIIII class
	instanceVariableNames: 'next previous'!

!IIIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
previous: aNaturalNumber
	^previous:=aNaturalNumber! !

!IIIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
restaSinIf: aNaturalNumber
	^aNaturalNumber restateA: self
	! !

!IIIIIIIIIIII class methodsFor: 'auxiliares' stamp: 'Mp 8/26/2023 23:25:39'!
restateA: AnaturalNumber
	^ AnaturalNumber previous  restaSinIf: self previous.
! !


!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber)! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
+ aNaturalNumber
	^self previous + aNaturalNumber next! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
- aNaturalNumber
	aNaturalNumber = I 
	ifTrue: [^self previous] 
	ifFalse: [ ^self previous - aNaturalNumber  previous]! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
/ aNaturalNumber
	^ aNaturalNumber dividiteAux: self-aNaturalNumber cociente:I ! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
< aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^false]
	^ self previous < aNaturalNumber previous! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
> aNaturalNumber
	aNaturalNumber =I
	ifTrue: [ ^true].
	^ self previous > aNaturalNumber previous! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
dividiteAux: aNaturalNumber cociente: cociente
	self=aNaturalNumber 
	ifTrue: [^cociente next].
	self > aNaturalNumber
	ifTrue: [^cociente].
	^self dividiteAux: aNaturalNumber-self cociente: cociente next! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
next
	next ifNotNil: [^next]. 
	next:= self cloneNamed: self name, 'I'.
	next previous: self.
	^next ! !

!IIIIIIIIIIII class methodsFor: 'operaciones' stamp: 'Mp 8/26/2023 23:25:39'!
previous
	^ previous! !


!IIIIIIIIIIII class methodsFor: '--** private fileout/in **--' stamp: 'Mp 8/26/2023 23:27:32'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := nil.
	previous := IIIIIIIIIII.! !

I initializeAfterFileIn!
II initializeAfterFileIn!
III initializeAfterFileIn!
IIII initializeAfterFileIn!
IIIII initializeAfterFileIn!
IIIIII initializeAfterFileIn!
IIIIIII initializeAfterFileIn!
IIIIIIII initializeAfterFileIn!
IIIIIIIII initializeAfterFileIn!
IIIIIIIIII initializeAfterFileIn!
IIIIIIIIIII initializeAfterFileIn!
IIIIIIIIIIII initializeAfterFileIn!