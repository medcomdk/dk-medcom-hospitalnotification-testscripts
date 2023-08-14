General: 
* Links to Conformance suites are added.
* Date and time for all test scripts are updated.

Test scripts for sending NospitalNotification messages are updated: 
* Paths to identify the MessageHeader is updated. Instead of using the MessageHeader.fullUrl, the MessageHeader.id is used.
* Assert concerning Encounter.episodeOfCare.identifier is updated to allow both lower and uppercase letters.
* Assert concerning Provenance.entity.what.role is updated to evaluate against the latest message sent.
* Assert concerning Encounter.period. is corrected, as a ' was missing.
* Test script [PF-send-imp-01](https://medcomfhir.dk/ig/hospitalnotificationtestscripts/TestScript-hospitalnotification-PF-send-imp-01.html) is updated, so it expects “discharge-inpatient-home” in Provenance.activity.
