Profile: SEEHDSPatient
Parent: $seBasePatient
Id: se-ehds-patient
Title: "SE EHDS Patient"
Description: """
FHIR Patient-profil för EHDS-bryggan, byggd ovanpå SEBasePatient (HL7 Sweden basprofiler-r4).
Ärver identifier-slicings för personnummer, samordningsnummer och nationelltReservnummer.
Används som subject i SEEHDSCondition och SEEHDSDocumentReference.
"""

* identifier MS
* identifier ^short = "Patientidentifierare – personnummer, samordningsnummer eller nationelltReservnummer"

* identifier[personnummer] MS
* identifier[personnummer] ^short = "Personnummer (http://electronichealth.se/identifier/personnummer)"
* identifier[personnummer].value 1..1 MS

* identifier[samordningsnummer] MS
* identifier[samordningsnummer] ^short = "Samordningsnummer (http://electronichealth.se/identifier/samordningsnummer)"
* identifier[samordningsnummer].value 1..1 MS

* name MS
* name.family MS
* name.given MS

* birthDate MS
