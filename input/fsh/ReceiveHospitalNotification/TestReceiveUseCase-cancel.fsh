//Get AN-STIN
Instance: HospitalNotification_TestScript_receive-AN-STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-stin"
* description = "Receive: Cancellation Start hospital stay"
* title = "Receive: Cancellation Start hospital stay - AN-STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-stin" 
* name = "HospitalNotificationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(AN-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-STIN.xml, destinationUri-AN-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(AN-STIN, 02, bundleid-AN-STIN)

//Get AN-SLHJ-imp
Instance: HospitalNotification_TestScript_receive-AN-SLHJ-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-slhj-imp"
* description = "Receive: Cancellation End hospital stay - patient completed to home/primary sector"
* title = "Receive: Cancellation End hospital stay - patient completed to home/primary sector - AN-SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-slhj-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLHJ-imp.xml, destinationUri-SLHJ)
* insert createMessageSetup(AN-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-SLHJ-imp.xml, destinationUri-AN-SLHJ)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(SLHJ, 02, bundleid-SLHJ)
* insert readMessage(AN-SLHJ, 03, bundleid-AN-SLHJ)


//Get AN-STAA
Instance: HospitalNotification_TestScript_receive-AN-STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-staa"
* description = "Receive: Cancellation Start hospital stay - acute ambulant"
* title = "Receive: Cancellation Start hospital stay - acute ambulant - AN-STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(AN-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-STAA.xml, destinationUri-AN-STAA)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(AN-STAA, 02, bundleid-AN-STAA)

//Get AN-SLHJ-emer
Instance: HospitalNotification_TestScript_receive-AN-SLHJ-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-slhj-emer"
* description = "Receive: Cancellation End hospital stay - patient completed to home/primary sector"
* title = "Receive: Cancellation End hospital stay - patient completed to home/primary sector - AN-SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-slhj-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLHJ-emer.xml, destinationUri-SLHJ)
* insert createMessageSetup(AN-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-SLHJ-emer.xml, destinationUri-AN-SLHJ)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(SLHJ, 02, bundleid-SLHJ)
* insert readMessage(AN-SLHJ, 03, bundleid-AN-SLHJ)

//Get AN-STOR
Instance: HospitalNotification_TestScript_receive-AN-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-stor"
* description = "Receive: Cancellation Start leave"
* title = "Receive: Cancellation Start leave - AN-STOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(AN-STOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-STOR.xml, destinationUri-AN-STOR)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(AN-STOR, 03, bundleid-AN-STOR)

//Get AN-SLOR
Instance: HospitalNotification_TestScript_receive-AN-SLOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-slor"
* description = "Receive: Cancellation End leave"
* title = "Receive: Cancellation End leave	- AN-SLOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-slor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(AN-SLOR, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-SLOR.xml, destinationUri-AN-SLOR)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(SLOR, 03, bundleid-SLOR)
* insert readMessage(AN-SLOR, 04, bundleid-AN-SLOR)

//Get AN-MORS
Instance: HospitalNotification_TestScript_receive-AN-MORS
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-mors"
* description = "Receive: Cancellation Deceased - is dead at arrival to the hospital"
* title = "Receive: Cancellation Deceased - is dead at arrival to the hospital - AN-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-mors" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(MORS, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS.xml, destinationUri-MORS)
* insert createMessageSetup(AN-MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-MORS.xml, destinationUri-AN-MORS)
* insert readMessage(MORS, 01, bundleid-MORS)
* insert readMessage(AN-MORS, 02, bundleid-AN-MORS)

//Get AN-MORS-imp
Instance: HospitalNotification_TestScript_receive-AN-MORS-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-mors-imp"
* description = "Receive: Cancellation Deceased - deceased during hospital stay"
* title = "Receive: Cancellation Deceased - deceased during hospital stay - AN-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-mors-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-imp.xml, destinationUri-MORS)
* insert createMessageSetup(AN-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-MORS-imp.xml, destinationUri-AN-MORS)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(MORS, 02, bundleid-MORS)
* insert readMessage(AN-MORS, 03, bundleid-AN-MORS)

 
//Get AN-MORS-emer
Instance: HospitalNotification_TestScript_receive-AN-MORS-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-mors-emer"
* description = "Receive: Cancellation Deceased - deceased during acute ambulant"
* title = "Receive: Cancellation Deceased - deceased during acute ambulant - AN-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-mors-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-emer.xml, destinationUri-MORS)
* insert createMessageSetup(AN-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-MORS-emer.xml, destinationUri-AN-MORS)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(MORS, 02, bundleid-MORS)
* insert readMessage(AN-MORS, 03, bundleid-AN-MORS)

//Get AN-MORS_STOR
Instance: HospitalNotification_TestScript_receive-AN-MORS-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-an-mors-stor"
* description = "Receive: Cancellation Deceased - deceased during a period of leave"
* title = "Receive: Cancellation Deceased - deceased during a period of leave - AN-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-receive-an-mors-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-MORS-STOR.xml, destinationUri-MORS)
* insert createMessageSetup(AN-MORS, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-MORS-STOR.xml, destinationUri-AN-MORS)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(MORS, 03, bundleid-MORS)
* insert readMessage(AN-MORS, 04, bundleid-AN-MORS)
