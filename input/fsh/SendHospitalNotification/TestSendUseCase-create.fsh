//STIN.A1
Instance: HospitalNotification_TestScript_STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-stin-a1"
* description = "Send: Start hospital stay - admitted, without request for a reportOfAdmission."
* title = "Send: Start hospital stay - admitted - STIN.A1"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-stin-a1" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false) 

//STIN
Instance: HospitalNotification_TestScript_STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-stin"
* description = "Send: Start hospital stay - admitted."
* title = "Send: Start hospital stay - admitted - STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-stin" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true) 

//STAA
Instance: HospitalNotification_TestScript_STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-staa"
* description = "Send: Start hospital stay - acute ambulant."
* title = "Send: Start hospital stay - acute ambulant - STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true) 

//STOR
Instance: HospitalNotification_TestScript_STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-stor"
* description = "Send: Start leave"
* title = "Send: Start leave - STOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)

//SLOR
Instance: HospitalNotification_TestScript_SLOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-slor"
* description = "Send: End leave"
* title = "Send: End leave - SLOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-slor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)

//SLHJ - IMP
Instance: HospitalNotification_TestScript_SLHJ-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-slhj-imp"
* description = "Send: End hospital stay - patient completed to home/primary sector"
* title = "Send: End hospital stay - patient completed to home/primary sector - SLHJ-imp"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-slhj-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, discharge-inpatient-home, IMP, finished, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)

 //SLHJ - EMER
Instance: HospitalNotification_TestScript_SLHJ-EMER
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-slhj-emer"
* description = "Send: End hospital stay - patient completed to home/primary sector"
* title = "Send: End hospital stay - patient completed to home/primary sector - SLHJ-emer"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-slhj-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert createMessage(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, discharge-emergency-home, EMER, finished, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)

//MORS
Instance: HospitalNotification_TestScript_MORS
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-mors"
* description = "Send: Deceased - dead at arrival to the hospital."
* title = "Send: Deceased - dead at arrival to the hospital - MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-mors" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageDeceased(MORS, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false, true) 

//MORS - EMER
Instance: HospitalNotification_TestScript_MORS-EMER
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-mors-emer"
* description = "Send: Deceased - deceased during hospital stay"
* title = "Send: Deceased - deceased during hospital stay - MORS-EMER"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-mors-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert createMessageDeceased(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, finished, revision, true, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
 
 //MORS - STOR
Instance: HospitalNotification_TestScript_MORS-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-mors-stor"
* description = "Send: Deceased - deceased during a period of leave"
* title = "Send: Deceased - deceased during period of leave - MORS-STOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-mors-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessageDeceased(MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, finished, revision, true, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
 
 //MORS - IMP
Instance: HospitalNotification_TestScript_MORS-IMP
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-mors-imp"
* description = "Send: Deceased - deceased during admission"
* title = "Send: Deceased - deceased during admission - MORS-IMP"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-mors-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessageDeceased(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300/Send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, finished, revision, true, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
 
