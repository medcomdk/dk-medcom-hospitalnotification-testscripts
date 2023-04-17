 //PF-send-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-send-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-01"
* name = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient."
* title = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient. - PF-send-imp-01"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessage(SLHJ, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, discharge-patient-home, IMP, finished, revision, messageHeaderid-SLOR, 4, episodeOfCareID-SLOR)

 //PF-send-imp-02 - STIN-STOR-SLHJ
Instance: HospitalNotification_TestScript_PF-send-imp-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-02"
* name = "Send: Admit patient, register patient as being on leave, patient doesn't return from leave, discharge patient."
* title = "Send: Admit patient, register patient as being on leave, patient doesn't return from leave, discharge patient. - PF-send-imp-02"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, discharge-patient-home, IMP, finished, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)

 //PF-send-imp-03 - MORS - SLOR
Instance: HospitalNotification_TestScript_PF-send-imp-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-03"
* name = "Send: Admit patient, register patient as being on leave, patient returns from leave, patient dies"
* title = "Send: Admit patient, register patient as being on leave, patient returns from leave, patient dies - PF-send-imp-03"
* description = "Testing correct use of send HospitalNotification - deceased"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessageDeceased(MORS, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, finished, revision, true, messageHeaderid-SLOR, 4, episodeOfCareID-SLOR)

 //PF-send-imp-04 - STIN-STOR-SLOR-STOR-SLOR-SLHJ
Instance: HospitalNotification_TestScript_PF-send-imp-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-04"
* name = "Send: Admit patient, *register patient as being on leave, patient returns from leave*, * to * x2 "
* title = "Send: Admit patient, *register patient as being on leave, patient returns from leave*, * to * x2 - PF-send-imp-04"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessage(STOR, 04, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 4, episodeOfCareID-STIN)
* insert createMessage(SLOR, 05, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 5, episodeOfCareID-STOR)

 //PF-send-imp-05 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-send-imp-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-05"
* name = "Send: Admit patient, correct message due to incorrect hospital department. Evaluation is based on SOR number."
* title = "Send: Admit patient, correct message due to incorrect hospital department. Evaluation is based on SOR number.- PF-send-imp-05"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert variableHospitalSOR(STIN)
* insert variableHospitalGLN(STIN)
* insert createMessage(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, revise-admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert assertSenderSOR(hospitalSOR-STIN)
* insert assertSenderGLN(hospitalGLN-STIN)

 //PF-send-imp-06 - STIN-RE_STIN
Instance: HospitalNotification_TestScript_PF-send-imp-06
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-imp-06"
* name = "Send: Admit patient, correct message due to incorrect time of admission."
* title = "Send: Admit patient, correct message due to incorrect time of admission - PF-send-imp-06"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert variableEncounterDateTime(STIN)
* insert createMessage(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, revise-admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert assertEncounterDateTime(encounterDateTime-STIN)

 //PF-send-emer-02 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-send-emer-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-emer-02"
* name = "Send: Admit patient, correct message due to incorrect hospital department. Evaluation is based on SOR number."
* title = "Send: Admit patient, correct message due to incorrect hospital department. Evaluation is based on SOR number.- PF-send-emer-02"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert variableHospitalSOR(STAA)
* insert variableHospitalGLN(STAA)
* insert createMessage(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, revise-admit-emergency, EMER, in-progress, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
* insert assertSenderSOR(hospitalSOR-STAA)
* insert assertSenderGLN(hospitalGLN-STAA)

 //PF-send-emer-01 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-send-emer-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-emer-01"
* name = "Send: Admit patient, correct message due to incorrect time of admission."
* title = "Send: Admit patient, correct message due to incorrect time of admission - PF-send-emer-01"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert variableEncounterDateTime(STAA)
* insert createMessage(RE-STAA, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, revise-admit-emergency, EMER, in-progress, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
* insert assertEncounterDateTime(encounterDateTime-STAA)

 //PF-send-emer-imp-01 
Instance: HospitalNotification_TestScript_PF-send-emer-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-emer-imp-01"
* name = "Send: Admit patient as emergency, Admit patient as inpatient, discharge patient"
* title = "Send: Admit patient as emergency, Admit patient as inpatient, discharge patient - PF-send-emer-imp-01"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-emergency, EMER, in-progress, true)
* insert createMessage(STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, revision, messageHeaderid-STAA, 2, episodeOfCareID-STAA)
* insert createMessage(SLHJ, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, discharge-inpatient-home, IMP, finished, revision, messageHeaderid-STIN, 3, episodeOfCareID-STIN)

 //PF-send-tec-01 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-send-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-tec-01"
* name = "Send: Cancel a corrected admission: Admit patient, correct admit patient and cancel the correction"
* title = "Send: Cancel a corrected admission: Admit patient, correct admit patient and cancel the correction - PF-send-tec-01"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(RE-STIN, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(AN-STIN, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, cancel-admit-inpatient, IMP, entered-in-error, removal, messageHeaderid-RE-STIN, 3, episodeOfCareID-RE-STIN)

 /* //PF-send-tec-02 -MUSTSUPPORT
Instance: HospitalNotification_TestScript_PF-send-tec-02
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-tec-02"
* name = "Send: Evaluating on included MustSupport elements"
* title = "Send: Evaluating on included MustSupport elements - PF-send-tec-02"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
  */
 //PF-send-tec-03 - STin-stin-stin
Instance: HospitalNotification_TestScript_PF-send-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-tec-03"
* name = "Send: Send max dublets, due to no acknowledgement of the messages: Send admit patient, admit patient, admit patient. Ids are handled correct"
* title = "Send: Send max dublets, due to no acknowledgement of the messages: Send admit patient, admit patient, admit patient. Ids are handled correct - PF-send-tec-03"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STIN2, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(STIN3, 03, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, revision, messageHeaderid-STIN2, 3, episodeOfCareID-STIN2)

//PF-send-tec-04 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-send-tec-04
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-tec-04"
* name = "Send: Correct use of timezone of summertime (+02:00) and vintertime (+01:00). Send STIN and SLHJ-imp in different timezones."
* title = "Send: Correct use of timezone of summertime (+02:00) and vintertime (+01:00). Send STIN and SLHJ-imp in different timezones. - PF-send-tec-04"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert variableTimeZone(STIN)
* insert assertEncounterStartTimeZone
* insert createMessage(SLHJ, 02, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, discharge-inpatient-home, IMP, finished, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert assertEncounterEndTimeZone
* insert assertCompareTimeZone(encounterTimeZone-STIN)

//PF-send-tec-05 - STAA-RE_STAA
Instance: HospitalNotification_TestScript_PF-send-tec-05
InstanceOf: TestScript
* insert Metadata
* id = "hospitalnotification-PF-send-tec-05"
* name = "Send: Send a message on the 29th of February 2024 (leap year)."
* title = "Send: Send a message on the 29th of February 2024 (leap year). - PF-send-tec-05"
* description = "Testing correct use of send HospitalNotification"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert assertEncounterLeapYear