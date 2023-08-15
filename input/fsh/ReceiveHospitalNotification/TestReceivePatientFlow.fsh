//PF-receive-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-01"
* description = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is discharged"
* title = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is discharged - PF-receive-imp-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(SLHJ, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(SLOR, 03, bundleid-SLOR)
* insert readMessage(SLHJ, 04, bundleid-SLHJ)


 //PF-receive-imp-02 - STIN-STOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-02"
* description = "Receive: Patient is admitted, patient is registered as being on leave, patient doesn't return from leave, patient is discharged"
* title = "Receive: Patient is admitted, patient is registered as being on leave, patient doesn't return from leave, patient is discharged - PF-receive-imp-02"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-02" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(SLHJ, 03, bundleid-SLHJ)


 //PF-receive-imp-03 - MORS - SLOR
Instance: HospitalNotification_TestScript_PF-receive-imp-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-03"
* description = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is registered as dead"
* title = "Receive: Patient is admitted, patient is registered as being on leave, patient returns from leave, patient is registered as dead - PF-receive-imp-03"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-03" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(MORS, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR-MORS.xml, destinationUri-MORS)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(SLOR, 03, bundleid-SLOR)
* insert readMessage(MORS, 04, bundleid-MORS)

 //PF-receive-imp-04 - STIN-STOR-SLOR-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-04"
* description = "Receive: Patient is admitted, 'patient is registered as being on leave, patient returns from leave', ' to ' x 2"
* title = "Receive: Patient is admitted, 'patient is registered as being on leave, patient returns from leave', ' to ' x 2 - PF-receive-imp-04"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-04" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(STOR2, 04, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STOR2.xml, destinationUri-STOR2)
* insert createMessageSetup(SLOR2, 05, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLOR2.xml, destinationUri-SLOR2)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STOR, 02, bundleid-STOR)
* insert readMessage(SLOR, 03, bundleid-SLOR)
* insert readMessage(STOR2, 04, bundleid-STOR2)
* insert readMessage(SLOR2, 05, bundleid-SLOR2)

 //PF-receive-imp-05 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-receive-imp-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-05"
* description = "Receive: Patient is admitted, message is corrected due to incorrect hospital department"
* title = "Receive: Patient is admitted, message is corrected due to incorrect hospital department - PF-receive-imp-05"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-05" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STIN-Hospital.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(RE-STIN, 02, bundleid-RE-STIN)

 //PF-receive-imp-06 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-receive-imp-06
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-06"
* description = "Receive: Patient is admitted, message is corrected due to incorrect time of admission"
* title = "Receive: Patient is admitted, message is corrected due to incorrect time of admission - PF-receive-imp-06"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-imp-06" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STIN-admissionTime.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(RE-STIN, 02, bundleid-RE-STIN)

 //PF-receive-emer-02 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-emer-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-01"
* description = "Receive: Patient is admitted, message is corrected due to incorrect hospital department"
* title = "Receive: Patient is admitted, message is corrected due to incorrect hospital department - PF-receive-emer-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-emer-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STAA-Hospital.xml, destinationUri-RE-STAA)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(RE-STAA, 02, bundleid-RE-STAA)

 //PF-receive-emer-01 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-emer-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-02"
* description = "Receive: Patient is admitted, message is corrected due to incorrect time of admission"
* title = "Receive: Patient is admitted, message is corrected due to incorrect time of admission - PF-receive-emer-02"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-emer-02" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STAA-admissionTime.xml, destinationUri-RE-STAA)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(RE-STAA, 02, bundleid-RE-STAA)


 //PF-receive-emer-imp-01 
Instance: HospitalNotification_TestScript_PF-receive-emer-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-imp-01"
* description = "Receive: Patient is admitted as emergency, patient is admitted as inpatient, patient is discharged"
* title = "Receive: Patient is admitted as emergency, patient is admitted as inpatient, patient is discharged - PF-receive-emer-imp-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-emer-imp-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA-STIN-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(STIN, 02, bundleid-STIN)
* insert readMessage(SLHJ, 03, bundleid-SLHJ)


 //PF-receive-tec-01 - STIN-STIN
Instance: HospitalNotification_TestScript_PF-receive-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-01"
* description = "Receive dublicate: Patient is admitted, doesn't get acknowledged, patient is admitted"
* title = "Receive dublicate: Patient is admitted, doesn't get acknowledged, patient is admitted. - PF-receive-tec-01"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-01" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STIN2, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN2)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(STIN2, 02, bundleid-STIN2)

//PF-receive-tec-02 - STIN, RE, AN
Instance: HospitalNotification_TestScript_PF-receive-tec-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-02"
* description = "Receive: Receive cancellation of admit patient: Patient is admitted, correction of admit patient and cancellation admit patient"
* title = "Receive: Receive cancellation of admit patient: Patient is admitted, correction of admit patient and cancellation admit patient - PF-receive-tec-02"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-02" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-RE-STIN-admissionTime.xml, destinationUri-RE-STIN)
* insert createMessageSetup(AN-STIN, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-AN-RE-STIN.xml, destinationUri-AN-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(RE-STIN, 02, bundleid-RE-STIN) 
* insert readMessage(AN-STIN, 03, bundleid-AN-STIN) 
 
 //PF-receive-tec-03 - STAA-SLHJ-STIN
Instance: HospitalNotification_TestScript_PF-receive-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-03"
* description = "Receive: Messages received in wrong order: Patient is admitted as emergency, patient is discharged, patient is admitted as inpatient."
* title = "Receive: Messages received in wrong order: Patient is admitted as emergency, patient is discharged, patient is admitted as inpatient. - PF-receive-tec-03"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-03" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA-STIN-SLHJ.xml, destinationUri-SLHJ)
* insert createMessageSetup(STIN, 03, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STAA-STIN.xml, destinationUri-STIN)
* insert readMessage(STAA, 01, bundleid-STAA)
* insert readMessage(SLHJ, 02, bundleid-SLHJ)
* insert readMessage(STIN, 03, bundleid-STIN)

//PF-receive-tec-04 - different timezone
Instance: HospitalNotification_TestScript_PF-receive-tec-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-04"
* description = "Receive: Receive a message with different timezones (+01:00 and +02:00): Patient is admitted in one timezone, patient is discharged in a different timezone."
* title = "Receive: Receive a message with different timezones (+01:00 and +02:00): Patient is admitted in one timezone, patient is discharged in a different timezone. - PF-receive-tec-04"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-04" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-SLHJ-difftimezone.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, bundleid-STIN)
* insert readMessage(SLHJ, 02, bundleid-SLHJ)

//PF-receive-tec-05 - leapyear
Instance: HospitalNotification_TestScript_PF-receive-tec-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-05"
* description = "Receive: Receive a message on the 29th of February 2024 (leap year): Patient is admitted on the date of leap year"
* title = "Receive: Receive a message on the 29th of February 2024 (leap year): Patient is admitted on the date of leap year - PF-receive-tec-05"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-05" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN-leapyear.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, bundleid-STIN)

//PF-receive-tec-05 - different serviceprovider
Instance: HospitalNotification_TestScript_PF-receive-tec-06
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-06"
* description = "Receive: Receive a message where the serviceprovider is different from the sender: Patient is admitted"
* title = "Receive: Receive a message where the serviceprovider is different from the sender: Patient is admitted - PF-receive-tec-06"
* url = "http://medcomfhir.dk/ig/hospitalnotificationtestscript/hospitalnotification-PF-receive-tec-06" 
* name = "HospitalNotificationTestScript"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotification/v300-receive/Fixtures/HospitalNotification-fixture-STIN-diffServiceProvider.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, bundleid-STIN) 