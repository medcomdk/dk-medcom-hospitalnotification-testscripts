Alias: $Fixture3STINRefference = /FHIRSandbox/MedCom/401-Hospitalnotification/receive/Userstory/_reference/resources/STIN_12.xml
Alias: $Fixture3STIN = bundle-create-STIN

Alias: $Fixture3ANSTINRefference = /FHIRSandbox/MedCom/401-Hospitalnotification/receive/Userstory/_reference/resources/AN_STIN_12.xml
Alias: $Fixture3ANSTINID = bundle-create-AN-STIN

Instance: TestinstanceUFHV3
InstanceOf: TestScript



* id = "UFHV03"
* meta.profile = "http://touchstone.aegis.net/touchstone/fhir/testing/StructureDefinition/testscript"
* url = "http://build.fhir.org/ig/hl7dk/dk-medcom/"
* name = "receive-notification-Cancellation"
* title = "Cancellation: Wrong patient has been admitted"
* status = #active
* date = 2021-06-30
* publisher = "MedCom"
* contact.name = "MedCom"
* contact.telecom.system = #email
* contact.telecom.value = "fhir@medcom.dk"
* contact.telecom.use = #work
* description = "Testing correct use of Cancellation"
* copyright = "MedCom 2021"

* origin.index = 1
* origin.profile.system = "http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types"
* origin.profile.code = #FHIR-Client

* destination.index = 1
* destination.profile.system = "http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types"
* destination.profile.code = #FHIR-Server

* fixture[0].id = $Fixture3STIN
* fixture[0].autocreate = false
* fixture[0].autodelete = false
* fixture[0].resource.reference = $Fixture3STINRefference

* fixture[1].id = $Fixture3ANSTINID
* fixture[1].autocreate = false
* fixture[1].autodelete = false
* fixture[1].resource.reference = $Fixture3ANSTINRefference

* profile.id = "hospitalnotification-profile"
* profile.reference = "http://medcomfhir.dk/fhir/core/1.0/StructureDefinition/medcom-hospitalNotification-message"  

* variable[0].name = "destinationUri"
* variable[0].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[0].sourceId = $Fixture3STIN

* variable[1].name = "destinationUriANK1"
* variable[1].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[1].sourceId = $Fixture3ANSTINID

* setup.action[0].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[0].operation.type.code = #delete
* setup.action[0].operation.resource = #Bundle
* setup.action[0].operation.description = "System-generated search and delete operations from conditional delete on Bundle MessageHeader).destination.endpoint"
* setup.action[0].operation.accept = #xml
* setup.action[0].operation.encodeRequestUrl = true
* setup.action[0].operation.params = "?message.destination-uri=${destinationUri}"

* setup.action[1].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[1].operation.type.code = #create
* setup.action[1].operation.resource = #Bundle
* setup.action[1].operation.description = "Create the Bundle resource in XML format on the destination server."
* setup.action[1].operation.accept = #xml
* setup.action[1].operation.contentType = #xml
* setup.action[1].operation.encodeRequestUrl = true
* setup.action[1].operation.sourceId = $Fixture3STIN

* setup.action[2].assert.description = "Confirm that the returned HTTP status is 201(Created)."
* setup.action[2].assert.direction = #response
* setup.action[2].assert.responseCode = "201"
* setup.action[2].assert.warningOnly = false

* setup.action[3].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[3].operation.type.code = #delete
* setup.action[3].operation.resource = #Bundle
* setup.action[3].operation.description = "System-generated search and delete operations from conditional delete on Bundle MessageHeader).destination.endpoint"
* setup.action[3].operation.accept = #xml
* setup.action[3].operation.encodeRequestUrl = true
* setup.action[3].operation.params = "?message.destination-uri=${destinationUriANK1}"

* setup.action[4].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* setup.action[4].operation.type.code = #create
* setup.action[4].operation.resource = #Bundle
* setup.action[4].operation.description = "Create the Bundle resource in XML format on the destination server."
* setup.action[4].operation.accept = #xml
* setup.action[4].operation.contentType = #xml
* setup.action[4].operation.encodeRequestUrl = true
* setup.action[4].operation.sourceId = $Fixture3ANSTINID

* setup.action[5].assert.description = "Confirm that the returned HTTP status is 201(Created)."
* setup.action[5].assert.direction = #response
* setup.action[5].assert.responseCode = "201"
* setup.action[5].assert.warningOnly = false

* test[0].id = "01-STIN-admitted"
* test[0].name = "HospitalNotification-STIN"
* test[0].description = "GET a Hospital notification. The expected response is a 200(OK) with a payload of the Hospital notification resource in XML format."
* test[0].action[0].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[0].action[0].operation.type.code = #read
* test[0].action[0].operation.resource = #Bundle
* test[0].action[0].operation.description = "Receive notification about admission -STIN"
* test[0].action[0].operation.accept = #xml
* test[0].action[0].operation.destination = 1
* test[0].action[0].operation.encodeRequestUrl = true
* test[0].action[0].operation.origin = 1
* test[0].action[0].operation.params = "?message.destination-uri=${destinationUri}"
* test[0].action[1].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[0].action[1].assert.direction = #response
* test[0].action[1].assert.responseCode = "200"
* test[0].action[1].assert.warningOnly = false

* test[1].id = "02-RE_STIN"
* test[1].name = "HospitalNotification-RE_STIN"
* test[1].description = "GET a Hospital notification. The expected response is a 200(OK) with a payload of the Hospital notification resource in XML format."
* test[1].action[0].operation.type.system = "http://terminology.hl7.org/CodeSystem/testscript-operation-codes"
* test[1].action[0].operation.type.code = #read
* test[1].action[0].operation.resource = #Bundle
* test[1].action[0].operation.description = "The patient does not show up after ended leave -SLHJ"
* test[1].action[0].operation.accept = #xml
* test[1].action[0].operation.destination = 1
* test[1].action[0].operation.encodeRequestUrl = true
* test[1].action[0].operation.origin = 1
* test[1].action[0].operation.params = "?message.destination-uri=${destinationUriANK1}"
* test[1].action[1].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[1].action[1].assert.direction = #response
* test[1].action[1].assert.responseCode = "200"
* test[1].action[1].assert.warningOnly = false
