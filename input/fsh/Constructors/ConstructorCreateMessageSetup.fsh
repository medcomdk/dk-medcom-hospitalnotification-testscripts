RuleSet: createMessageSetup(type, number, fixture, destinationUri, bundleid)
/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})

/* 
Beskriver anvendte variable
*/
//* insert variableMessageHeaderId({type})
* insert variableDestinationUri({type}, {number})
//* insert variableSearchParamIdentifier({type})
* insert variableBundleid({type}, {number})
//* insert variableEndpoint({type}, {number})


/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
//* insert operationDeleteSetup({destinationUri})
* insert operationCreateSetup({type}, {number})
* insert operationUpdateCreateSetup({type}, {number}, {bundleid})

/* 
Beskriver den vurdering der sker af setup'et. Er det gået ok?
*/
* insert assertResponseCodeSetup