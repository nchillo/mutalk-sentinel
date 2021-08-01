"
A MutalkResultLoaderTest is a test class for testing the behavior of MutalkResultLoader
"
Class {
	#name : #SentinelAnalysisTest,
	#superclass : #TestCase,
	#category : #'Mutalk-Sentinel-Model-Tests'
}

{ #category : #tests }
SentinelAnalysisTest >> emptyAnalysisJson [
	^ '{"numberOfEvaluatedMutants":0,"numberOfKilledMutants":0,"numberOfAliveMutants":0,"numberOfTerminatedMutants":0,"mutationScore":0,"elapsedTime":"0:00:00:00","message":"","particularResults":[]}'
]

{ #category : #tests }
SentinelAnalysisTest >> nonEmptyAnalysis [

	^'{
   "numberOfEvaluatedMutants":12,
   "numberOfKilledMutants":10,
   "numberOfAliveMutants":2,
   "numberOfTerminatedMutants":0,
   "mutationScore":83,
   "elapsedTime":"0:00:00:00.897",
   "message":"",
   "particularResults":[
      {
         "status":"Mutant Killed",
         "result":"3 ran, 1 passed, 0 skipped, 0 expected failures, 2 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"visaNumbered: aNumber \r\r\t^self new initializeWith: #visa numbered: aNumber",
            "mutatedSource":"visaNumbered: aNumber\r\r\tself new initializeWith: #visa numbered: aNumber",
            "class":"DebitCard class",
            "operator":"Remove ^"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 2 passed, 0 skipped, 0 expected failures, 1 failure, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"number\r\t^number",
            "mutatedSource":"number\r\r\tnumber",
            "class":"DebitCard",
            "operator":"Remove ^"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 0 passed, 0 skipped, 0 expected failures, 0 failures, 3 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               
            ],
            "failures":[
               
            ],
            "errors":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\ttype = anotherDebitCard type and: [ number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Remove ^"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 2 passed, 0 skipped, 0 expected failures, 1 failure, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type ~= anotherDebitCard type and: [ \r\t\t  number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace = with ~="
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 0 passed, 0 skipped, 0 expected failures, 3 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type = anotherDebitCard type and: [ \r\t\t  number ~= anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace = with ~="
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 1 passed, 0 skipped, 0 expected failures, 2 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type = anotherDebitCard type and: [ true ]",
            "class":"DebitCard",
            "operator":"Replace #and: argument with [true]"
         }
      },
      {
         "status":"Mutant Alive",
         "result":"3 ran, 3 passed, 0 skipped, 0 expected failures, 0 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ true and: [ number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace #and: receiver with true"
         }
      },
      {
         "status":"Mutant Alive",
         "result":"3 ran, 3 passed, 0 skipped, 0 expected failures, 0 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type = anotherDebitCard type bEqv: [ \r\t\t  number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace and: with bEqv:"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 0 passed, 0 skipped, 0 expected failures, 3 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type = anotherDebitCard type nand: [ \r\t\t  number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace and: with nand:"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 1 passed, 0 skipped, 0 expected failures, 2 failures, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "failures":[
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ type = anotherDebitCard type or: [ \r\t\t  number = anotherDebitCard number ]",
            "class":"DebitCard",
            "operator":"Replace and: with or:"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 2 passed, 0 skipped, 0 expected failures, 1 failure, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"= anotherDebitCard\r\r\t^(type = anotherDebitCard type) and: [ number = anotherDebitCard number ]",
            "mutatedSource":"= anotherDebitCard\r\r\t^ false",
            "class":"DebitCard",
            "operator":"Replace #and: with false"
         }
      },
      {
         "status":"Mutant Killed",
         "result":"3 ran, 2 passed, 0 skipped, 0 expected failures, 1 failure, 0 errors, 0 passed unexpected",
         "testResult":{
            "passed":[
               "DebitCardTest>>#testDebitCardWithDifferentNumberShouldBeDifferent",
               "DebitCardTest>>#testOtherDebitCardWithDifferentNumberShouldBeDifferent"
            ],
            "failures":[
               "DebitCardTest>>#testDebitCardWithSameNumberShouldBeEqual"
            ],
            "errors":[
               
            ]
         },
         "mutant":{
            "source":"type\r\t^type",
            "mutatedSource":"type\r\r\ttype",
            "class":"DebitCard",
            "operator":"Remove ^"
         }
      }
   ]
}'
]

{ #category : #tests }
SentinelAnalysisTest >> testMutantsByTestForNoneEmptyAnalysis [

	| sentinelAnalysis results |
	sentinelAnalysis := SentinelAnalysis for: self nonEmptyAnalysis.
	results := sentinelAnalysis testByMutants.
	self assert: results size equals: 12 * 3.
	self assert: (results select: [:test | test hasError]) size equals: 3.
	self assert: (results select: [:test | test hasFailure ]) size equals: 16.
	self assert: (results select: [:test | test hasPassed  ]) size equals: 17.

	self assert: (results groupedBy: [:test | test test]) size equals: 3.
	self assert: (results groupedBy: [:test | test mutant]) size equals: 12.
]

{ #category : #tests }
SentinelAnalysisTest >> testMutationBasicStatisticsForEmptyAnalysis [
	| emptyResult sentinelAnalysis|
	sentinelAnalysis := SentinelAnalysis for: self emptyAnalysisJson.
	emptyResult := sentinelAnalysis generateResult.
	self
		assert: emptyResult basicStatistics numberOfEvaluatedMutants
		equals: 0.
	self
		assert: emptyResult basicStatistics numberOfKilledMutants
		equals: 0.
	self
		assert: emptyResult basicStatistics numberOfAliveMutants
		equals: 0.
	self
		assert: emptyResult basicStatistics numberOfTerminatedMutants
		equals: 0.
	self
		assert: emptyResult basicStatistics mutationScore
		equals: 0 percent
]

{ #category : #tests }
SentinelAnalysisTest >> testMutationBasicStatisticsForNoneEmptyAnalysis [

	| sentinelAnalysis result |
	sentinelAnalysis := SentinelAnalysis for: self nonEmptyAnalysis.
	result := sentinelAnalysis generateResult.
	self
		assert: result basicStatistics numberOfEvaluatedMutants
		equals: 12.
	self
		assert: result basicStatistics numberOfKilledMutants
		equals: 10.
	self
		assert: result basicStatistics numberOfAliveMutants
		equals: 2.
	self
		assert: result basicStatistics numberOfTerminatedMutants
		equals: 0.
	self
		assert: result basicStatistics mutationScore
		equals: 83 percent
]
