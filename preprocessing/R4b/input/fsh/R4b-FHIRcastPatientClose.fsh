Profile: FHIRcastR4bPatientClose
Parent: Patient
Id: fhircast-r4b-patient-close
Title: "R4b FHIRcast Patient for Close Events"
Description: "Provides guidance as to which Patient attributes should be present and considerations as to how each attribute should be valued in all [FHIR resource]-close events."
* id 1..1 
* id ^short = "A logical id of the resource SHALL be provided."
* id ^definition =
"""
A logical id of the resource must be provided. The provided `id` SHALL be the same Patient resource id which was provided in the corresponding [FHIR resource]-open event
(see also [FHIRcast Patient for Open Events](StructureDefinition-fhircast-patient-open.html)).
"""
* identifier 0..* MS
* identifier ^short = "At least one identifier of the Patient SHOULD be provided in a [FHIR resource]-close request."
* identifier ^definition = 
"""
At least one `identifier` of the Patient SHOULD be provided in a [FHIR resource]-close request. Providing one or more of the `indentifier` values for the Patient
which was provided in the corresponding [FHIR resource]-open event enables Subscribers to perform identity verification according to their requirements.
"""

Instance: FHIRcastR4bPatientClose-Example
InstanceOf: FHIRcastR4bPatientClose
Usage: #example
Description: "Example of a patient which could be used in a [FHIR resource]-close event. Note that due to limitation of tools used to publishing the specification, the below
resource `id` is appended with '-close'. The specification requires that the resource `id` in the [FHIR resource]-close be identical to the resource `id` provided in the corresponding [FHIR resource]-open;
hence in the real world the '-close' suffix would not be present."
* id = "r4b-503824b8-fe8c-4227-b061-7181ba6c3926-close"
* identifier[0].use = http://hl7.org/fhir/identifier-use#official
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[=].system = "urn:oid:2.16.840.1.113883.19.5"
* identifier[=].value = "4438001"
* identifier[=].assigner.reference = "Organization/a92ac1be-fb34-49c1-be58-10928bd271cc"
* identifier[=].assigner.display = "My Healthcare Provider"
