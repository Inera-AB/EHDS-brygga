# SE EHDS Patient Example - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SE EHDS Patient Example**

## Example Patient: SE EHDS Patient Example

Profil: [SE EHDS Patient](StructureDefinition-se-ehds-patient.md)

Anna Andersson (official) Female, Födelsedatum: 1950-01-01 ( http://electronichealth.se/identifier/personnummer#NsPersonnummer#195001011234)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "SEEHDSPatientExample",
  "meta" : {
    "profile" : ["https://fhir.inera.se/StructureDefinition/se-ehds-patient"]
  },
  "identifier" : [{
    "system" : "http://electronichealth.se/identifier/personnummer",
    "value" : "195001011234"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Andersson",
    "given" : ["Anna"]
  }],
  "gender" : "female",
  "birthDate" : "1950-01-01"
}

```
