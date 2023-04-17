/* //Get STIN
Instance: HospitalNotification_TestScript_receive-STIN
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-stin"
* name = "Receive: Start hospital stay - admitted"
* title = "Receive: Start hospital stay - admitted - STIN"
* description = "Test of receiving of HospitalNotification Message."
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)

//Get STIN
Instance: HospitalNotification_TestScript_receive-STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-stin-a1"
* name = "Receive: Start hospital stay - admitted, without request for reportOfAdmission"
* title = "Receive: Start hospital stay - admitted, without request for reportOfAdmission - STIN"
* description = "Test of receiving of HospitalNotification Message."
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN-A1.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)

//Get SLHJ-imp
Instance: HospitalNotification_TestScript_receive-SLHJ-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-slhj-imp"
* name = "Receive: End hospital stay - patient completed to home/primary sector"
* title = "Receive: End hospital stay - patient completed to home/primary sector - SLHJ"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLHJ-imp.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)


//Get STAA
Instance: HospitalNotification_TestScript_receive-STAA
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-staa"
* name = "Receive: Start hospital stay - acute ambulant"
* title = "Receive: Start hospital stay - acute ambulant - STAA"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)

//Get SLHJ-emer
Instance: HospitalNotification_TestScript_receive-SLHJ-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-slhj-emer"
* name = "Receive: End hospital stay - patient completed to home/primary sector"
* title = "Receive: End hospital stay - patient completed to home/primary sector - SLHJ"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLHJ-emer.xml, destinationUri-SLHJ)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)

//Get STOR
Instance: HospitalNotification_TestScript_receive-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-stor"
* name = "Receive: Start leave"
* title = "Receive: Start leave - STOR"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)

//Get SLOR
Instance: HospitalNotification_TestScript_receive-SLOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-slor"
* name = "Receive: End leave"
* title = "Receive: End leave - SLOR"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)

//Get MORS
Instance: HospitalNotification_TestScript_receive-MORS
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-mors"
* name = "Receive: Deceased - is dead at arrival to the hospital"
* title = "Receive: Deceased - is dead at arrival to the hospital - MORS"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(MORS, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-MORS.xml, destinationUri-MORS)
* insert readMessage(MORS, 01, destinationUri-MORS, bundleid-MORS)

//Get MORS-imp
Instance: HospitalNotification_TestScript_receive-MORS-imp
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-mors-imp"
* name = "Receive: Deceased - dies during hospital stay"
* title = "Receive: Deceased - dies during hospital stay - MORS"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-MORS-imp.xml, destinationUri-MORS)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(MORS, 02, destinationUri-MORS, bundleid-STIN)

//Get MORS-emer
Instance: HospitalNotification_TestScript_receive-MORS-emer
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-mors-emer"
* name = "Receive: Deceased - dies during acute ambulant"
* title = "Receive: Deceased - dies during acute ambulant - MORS"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(MORS, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-MORS-emer.xml, destinationUri-MORS)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(MORS, 02, destinationUri-MORS, bundleid-STAA)

//Get MORS_STOR
Instance: HospitalNotification_TestScript_receive-MORS-STOR
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-receive-mors-stor"
* name = "Receive: Deceased - dies during a period of leave"
* title = "Receive: Deceased - dies during a period of leave - MORS"
* description = "Test of receiving of HospitalNotification Message."
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(MORS, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-MORS-STOR.xml, destinationUri-MORS)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(MORS, 03, destinationUri-MORS, bundleid-MORS) */