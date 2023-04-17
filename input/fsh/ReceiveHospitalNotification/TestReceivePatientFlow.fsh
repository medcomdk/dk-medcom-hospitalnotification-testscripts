 //PF-receive-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-01"
* name = "Receive: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient."
* title = "Receive: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient. - PF-receive-imp-01"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(SLHJ, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)
* insert readMessage(SLHJ, 04, destinationUri-SLHJ, bundleid-SLHJ)


 //PF-receive-imp-02 - STIN-STOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-02"
* name = "Receive: Admit patient, register patient as being on leave, patient doesn't return from leave, discharge patient."
* title = "Receive: Admit patient, register patient as being on leave, patient doesn't return from leave, discharge patient. - PF-receive-imp-02"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLHJ, 03, destinationUri-SLHJ, bundleid-SLHJ)


 //PF-receive-imp-03 - MORS - SLOR
Instance: HospitalNotification_TestScript_PF-receive-imp-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-03"
* name = "Receive: Admit patient, register patient as being on leave, patient returns from leave, patient dies"
* title = "Receive: Admit patient, register patient as being on leave, patient returns from leave, patient dies - PF-receive-imp-03"
* description = "Test of receiving of HospitalNotification Message - deceased"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(MORS, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR-MORS.xml, destinationUri-MORS)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)
* insert readMessage(MORS, 04, destinationUri-MORS, bundleid-MORS)

 //PF-receive-imp-04 - STIN-STOR-SLOR-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-receive-imp-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-04"
* name = "Receive: Admit patient, *register patient as being on leave, patient returns from leave*, * to * x2 "
* title = "Receive: Admit patient, *register patient as being on leave, patient returns from leave*, * to * x2 - PF-receive-imp-04"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR.xml, destinationUri-STOR)
* insert createMessageSetup(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml, destinationUri-SLOR)
* insert createMessageSetup(STOR2, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STOR2.xml, destinationUri-STOR2)
* insert createMessageSetup(SLOR2, 05, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR2.xml, destinationUri-SLOR2)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STOR, 02, destinationUri-STOR, bundleid-STOR)
* insert readMessage(SLOR, 03, destinationUri-SLOR, bundleid-SLOR)
* insert readMessage(STOR2, 04, destinationUri-STOR2, bundleid-STOR2)
* insert readMessage(SLOR2, 05, destinationUri-SLOR2, bundleid-SLOR2)

 //PF-receive-imp-05 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-receive-imp-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-05"
* name = "Receive: Admit patient, correct message due to incorrect hospital department."
* title = "Receive: Admit patient, correct message due to incorrect hospital department - PF-receive-imp-05"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-RE-STIN-Hospital.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN)

 //PF-receive-imp-06 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-receive-imp-06
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-imp-06"
* name = "Receive: Admit patient, correct message due to incorrect time of admission."
* title = "Receive: Admit patient, correct message due to incorrect time of admission - PF-receive-imp-06"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-RE-STIN-admissionTime.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN)

 //PF-receive-emer-02 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-emer-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-01"
* name = "Receive: Admit patient, correct message due to incorrect hospital department."
* title = "Receive: Admit patient, correct message due to incorrect hospital department - PF-receive-emer-01"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-RE-STAA-Hospital.xml, destinationUri-RE-STAA)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(RE-STAA, 02, destinationUri-RE-STAA, bundleid-RE-STAA)

 //PF-receive-emer-01 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-emer-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-02"
* name = "Receive: Admit patient, correct message due to incorrect time of admission."
* title = "Receive: Admit patient, correct message due to incorrect time of admission - PF-receive-emer-02"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-RE-STAA-admissionTime.xml, destinationUri-RE-STAA)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(RE-STAA, 02, destinationUri-RE-STAA, bundleid-RE-STAA)


 //PF-receive-emer-imp-01 
Instance: HospitalNotification_TestScript_PF-receive-emer-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-emer-imp-01"
* name = "Receive: Admit patient as emergency, Admit patient as inpatient, discharge patient"
* title = "Receive: Admit patient as emergency, Admit patient as inpatient, discharge patient - PF-receive-emer-imp-01"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA-STIN-SLHJ.xml, destinationUri-SLHJ)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(STIN, 02, destinationUri-STIN, bundleid-STIN)
* insert readMessage(SLHJ, 03, destinationUri-SLHJ, bundleid-SLHJ)


 //PF-receive-tec-01 - STIN-STIN
Instance: HospitalNotification_TestScript_PF-receive-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-01"
* name = "Receive: Receive dublet: Admit patient, admit patient."
* title = "Receive: Receive dublet: Admit patient, admit patient. - PF-receive-tec-01"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(STIN, 02, destinationUri-STIN, bundleid-STIN)

//PF-receive-tec-02 - STIN, RE, AN
Instance: HospitalNotification_TestScript_PF-receive-tec-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-02"
* name = "Receive: Cancel an admission: Admit patient, correct admit patient and cancel the correction"
* title = "Receive: Cancel an admission: Admit patient, correct admit patient and cancel the correction - PF-receive-tec-02"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-RE-STIN-admissionTime.xml, destinationUri-RE-STIN)
* insert createMessageSetup(AN-STIN, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-AN-RE-STIN.xml, destinationUri-AN-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN) 
* insert readMessage(AN-STIN, 03, destinationUri-AN-STIN, bundleid-AN-STIN) 
 
 //PF-receive-tec-03 - STAA-SLHJ-STIN
Instance: HospitalNotification_TestScript_PF-receive-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-03"
* name = "Receive: Messages received in wrong order: Acute ambulant, discharge patient, admit inpatient."
* title = "Receive: Messages received in wrong order: Acute ambulant, discharge patient, admit inpatient - PF-receive-tec-03"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STAA.xml, destinationUri-STAA)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLHJ-emer.xml, destinationUri-SLHJ)
* insert createMessageSetup(STIN, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLHJ-STIN.xml, destinationUri-STIN)
* insert readMessage(STAA, 01, destinationUri-STAA, bundleid-STAA)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)
* insert readMessage(STIN, 03, destinationUri-STIN, bundleid-STIN)

//PF-receive-tec-04 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-tec-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-04"
* name = "Receive: Receive a message with different timezones: summertime (+02:00) and vintertime (+01:00). "
* title = "Receive: Receive a message with different timezones: summertime (+02:00) and vintertime (+01:00). - PF-receive-tec-04"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLHJ-difftimezone.xml, destinationUri-SLHJ)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(SLHJ, 02, destinationUri-SLHJ, bundleid-SLHJ)

//PF-receive-tec-05 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-receive-tec-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-receive-tec-05"
* name = "Receive: Receive a message on the 29th of February 2024 (leap year)"
* title = "Receive: Receive a message on the 29th of February 2024 (leap year) - PF-receive-tec-05"
* description = "Test of receiving of HospitalNotification Message"
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-STIN-leapyear.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)