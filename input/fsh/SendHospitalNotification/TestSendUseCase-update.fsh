//RE_STAA
Instance: HospitalNotification_TestScript_RE_STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-staa"
* description = "Send: Update Start hospital stay - acute ambulant"
* title = "Send: Update Start hospital stay - acute ambulant - RE_STAA"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-staa" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true) 
* insert createMessage(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-admit-emergency, EMER, in-progress, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)


//RE_STIN
Instance: HospitalNotification_TestScript_RE_STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-stin"
* description = "Send: Update Start hospital stay - admitted"
* title = "Send: Update Start hospital stay - admitted - RE_STIN"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-stin" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true) 
* insert createMessage(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)

//RE_STOR
Instance: HospitalNotification_TestScript_RE_STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-stor"
* description = "Send: Update Start leave"
* title = "Send: Update Start leave - RE_STOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(RE-STOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)

//RE_SLOR
Instance: HospitalNotification_TestScript_RE_SLOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-slor"
* description = "Send: Update End leave"
* title = "Send: Update End leave - RE_SLOR"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-slor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessage(RE-SLOR, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-SLOR, 4, episodeOfCareID-SLOR)

//RE_SLHJ - IMP
Instance: HospitalNotification_TestScript_RE_SLHJ-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-slhj-imp"
* description = "Send: Update End hospital stay - patient completed to home/primary sector"
* title = "Send: Update End hospital stay - patient completed to home/primary sector - RE_SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-slhj-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true) 
* insert createMessage(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, discharge-inpatient-home, IMP, finished, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(RE-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-discharge-inpatient-home, IMP, finished, revision, messageHeaderid-SLHJ, 3, episodeOfCareID-SLHJ)


//RE_SLHJ - EMER
Instance: HospitalNotification_TestScript_RE_SLHJ-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-slhj-emer"
* description = "Send: Update End hospital stay - patient completed to home/primary sector"
* title = "Send: Update End hospital stay - patient completed to home/primary sector - RE_SLHJ"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-slhj-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert createMessage(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, discharge-emergency-home, EMER, finished, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
* insert createMessage(RE-SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, revise-discharge-emergency-home, EMER, finished, revision, messageHeaderid-SLHJ, 3, episodeOfCareID-SLHJ)




 //RE-MORS - EMER
Instance: HospitalNotification_TestScript_RE-MORS-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-mors-emer"
* description = "Send: Update Deceased - deceased during acute ambulant"
* title = "Send: Update Deceased - deceased during acute ambulant - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-mors-emer" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert createMessageDeceased(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, finished, revision, true, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
* insert createMessageDeceased(RE-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-emergency, EMER, finished, revision, true, messageHeaderid-MORS, 3, episodeOfCareID-MORS)

//RE-MORS
Instance: HospitalNotification_TestScript_RE-MORS
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-mors"
* description = "Send: Update Deceased - dead at arrival to the hospital"
* title = "Send: Update Deceased - dead at arrival to the hospital - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-mors" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageDeceased(MORS, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, false, true) 
* insert createMessageDeceased(RE-MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, revision, true, messageHeaderid-MORS, 2, episodeOfCareID-MORS)


 //RE-MORS - IMP
Instance: HospitalNotification_TestScript_RE-MORS-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-mors-stor"
* description = "Send: Update Deceased - deceased during a period of leave"
* title = "Send: Update Deceased - deceased during a period of leave - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-mors-stor" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessageDeceased(MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, finished, revision, true, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessageDeceased(RE-MORS, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, finished, revision, true, messageHeaderid-MORS, 4, episodeOfCareID-MORS)

 //RE-MORS - IMP
Instance: HospitalNotification_TestScript_RE-MORS-IMP
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-send-re-mors-imp"
* description = "Send: Update Deceased - deceased during hospital Stay"
* title = "Send: Update Deceased - deceased during hospital Stay - RE-MORS"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-send-re-mors-imp" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessageDeceased(MORS, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, finished, revision, true, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessageDeceased(RE-MORS, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-send/Fixtures/HospitalNotification-fixture.xml, admit-inpatient, IMP, finished, revision, true, messageHeaderid-MORS, 3, episodeOfCareID-MORS)
