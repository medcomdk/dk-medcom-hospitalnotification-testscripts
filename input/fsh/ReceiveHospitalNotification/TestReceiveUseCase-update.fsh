//Get RE-STIN
Instance: HospitalNotification_TestScript_receive-RE-STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-stin"
* description = "Receive: Update Start hospital stay"
* title = "Receive: Update Start hospital stay - RE_STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-stin" 
* name = "HospitalNotificationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STIN.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN)


//Get RE-SLHJ-imp
Instance: HospitalNotification_TestScript_receive-RE-SLHJ-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-slhj-imp"
* description = "Receive: Update End hospital stay - patient completed to home/primary sector"
* title = "Receive: Update End hospital stay - patient completed to home/primary sector - RE-SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-slhj-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLHJ-imp.xml, destinationUri-SLHJ)
* insert createMessageSetup(RE-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-SLHJ-imp.xml, destinationUri-RE-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)
* insert readMessage(RE-SLHJ, 03, destinationUri-RE-SLHJ, bundleid-RE-SLHJ)


//Get RE-STAA
Instance: HospitalNotification_TestScript_receive-RE-STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-staa"
* description = "Receive: Update Start hospital stay - acute ambulant"
* title = "Receive: Update Start hospital stay - acute ambulant - RE-STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STAA.xml, destinationUri-RE-STAA)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(RE-STAA, 02, destinationUri-RE-STAA, bundleid-RE-STAA)

//Get RE-SLHJ-emer
Instance: HospitalNotification_TestScript_receive-RE-SLHJ-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-slhj-emer"
* description = "Receive: Update End hospital stay - patient completed to home/primary sector"
* title = "Receive: Update End hospital stay - patient completed to home/primary sector - RE-SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-slhj-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLHJ-emer.xml, destinationUri-SLHJ)
* insert createMessageSetup(RE-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-SLHJ-emer.xml, destinationUri-RE-SLHJ)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)
* insert readMessage(RE-SLHJ, 03, destinationUri-RE-SLHJ, bundleid-RE-SLHJ)

//Get RE-STOR
Instance: HospitalNotification_TestScript_receive-RE-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-stor"
* description = "Receive: Update Start leave"
* title = "Receive: Update Start leave - RE-STOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(RE-STOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STOR.xml, destinationUri-RE-STOR)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(RE-STOR, 03, destinationUri-RE-STOR, bundleid-RE-STOR)

//Get RE-SLOR
Instance: HospitalNotification_TestScript_receive-RE-SLOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-slor"
* description = "Receive: Update End leave"
* title = "Receive: Update End leave	- RE-SLOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-slor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(RE-SLOR, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-SLOR.xml, destinationUri-RE-SLOR)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)
* insert readMessage(RE-SLOR, 04, destinationUri-RE-SLOR, bundleid-RE-SLOR)

//Get RE-MORS
Instance: HospitalNotification_TestScript_receive-RE-MORS
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-mors"
* description = "Receive: Update Deceased - is dead at arrival to the hospital"
* title = "Receive: Update Deceased - is dead at arrival to the hospital - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-mors" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(MORS, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS.xml, destinationUri-MORS)
* insert createMessageSetup(RE-MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-MORS.xml, destinationUri-RE-MORS)
* insert readMessage(MORS, 01, destinationUri-MORS, bundleid-MORS)
* insert readMessage(RE-MORS, 02, destinationUri-RE-MORS, bundleid-RE-MORS)

//Get RE-MORS-imp
Instance: HospitalNotification_TestScript_receive-RE-MORS-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-mors-imp"
* description = "Receive: Update Deceased - deceased during hospital stay"
* title = "Receive: Update Deceased - deceased during hospital stay - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-mors-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-imp.xml, destinationUri-MORS)
* insert createMessageSetup(RE-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-MORS-imp.xml, destinationUri-RE-MORS)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(MORS, 02, destinationUri-MORS, bundleid-MORS)
* insert readMessage(RE-MORS, 03, destinationUri-RE-MORS, bundleid-RE-MORS)

 
//Get RE-MORS-emer
Instance: HospitalNotification_TestScript_receive-RE-MORS-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-mors-emer"
* description = "Receive: Update Deceased - deceased during acute ambulant"
* title = "Receive: Update Deceased - deceased during acute ambulant - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-mors-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-emer.xml, destinationUri-MORS)
* insert createMessageSetup(RE-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-MORS-emer.xml, destinationUri-RE-MORS)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(MORS, 02, destinationUri-MORS, bundleid-MORS)
* insert readMessage(RE-MORS, 03, destinationUri-RE-MORS, bundleid-RE-MORS)

//Get RE-MORS_STOR
Instance: HospitalNotification_TestScript_receive-RE-MORS-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-re-mors-stor"
* description = "Receive: Update Deceased - deceased during a period of leave"
* title = "Receive: Update Deceased - deceased during a period of leave - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-re-mors-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-STOR.xml, destinationUri-MORS)
* insert createMessageSetup(RE-MORS, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-MORS-STOR.xml, destinationUri-RE-MORS)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(MORS, 03, destinationUri-MORS, bundleid-MORS)
* insert readMessage(RE-MORS, 04, destinationUri-RE-MORS, bundleid-RE-MORS)
