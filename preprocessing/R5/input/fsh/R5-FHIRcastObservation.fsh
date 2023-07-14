Alias: Loinc = http://loinc.org

Profile: FHIRcastR5Observation
Parent: Observation
Id: fhircast-r5-observation
Title: "FHIRcastR5 Observation"
Description: "Defines the minimum set of attributes which an application wanting to share observation content must support"
* subject 0..0
* hasMember MS
* derivedFrom MS

Instance: FHIRcastR5Observation-Example
InstanceOf: FHIRcastR5Observation
Usage: #example
Description: "Example of a simple observation which could be exchanged using FHIRcast"
* id = "r5-435098234"
* derivedFrom.identifier.system = "urn:dicom:uid"
* derivedFrom.identifier.value = "urn:oid:2.16.124.113543.6003.1154777499.30276.83661.3632298176"
* status = #preliminary
* code = Loinc#45651-7 "Pathological bone fracture [Minimum Data Set]"
* issued = "2020-09-07T15:02:03.651Z"
* valueCodeableConcept.coding = Loinc#LA33-6 "Yes"
