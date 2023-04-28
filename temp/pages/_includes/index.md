### Background

In this Implementation Guide (IG), test scripts for sending and receiving [HospitalNotifications](https://medcomdk.github.io/dk-medcom-hospitalnotification) ([link to HospitalNotification IG](https://medcomfhir.dk/ig/hospitalnotification/)) v. 3.0.0 are included. 

The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. However, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [test script FHIR resource](https://www.hl7.org/fhir/testscript.html). They are profiled by MedCom using FSH and published using the FHIR publisher. 


### Governance
A description of <a href="https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning">governance concerning change management and versioning of MedComs FHIR artefacts, can be found on here</a>.

#### Quality Assurance Report
In the Quality Assurance report (QA-report) for this IG. An example of the errors: *Unable to resolve resource with reference '/FHIRSandbox/MedCom/HospitalNotificationTMS/HospitalNotification-fixture-SLOR.xml* and *Unable to resolve resource with reference 'http://medcomfhir.dk/ig/hospitalnotification/StructureDefinition/medcom-hospitalNotification-message'*. The errors occur when creating a test script, as the fixture and profile are not reachable in the IG. However, they are reachable from TouchStone, why it is of less concern. For vendors who uses the test scripts locally should be aware of the error and e.g. create the fixtures and define the profile locally.

#### Contact
<a href="https://www.medcom.dk/">MedCom</a> is responsible for this IG.

If you have any questions, please contact <a href="mailto:fhir@medcom.dk">fhir@medcom.dk</a> or write to MedCom’s stream in <a href="https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup">Zulip</a>.