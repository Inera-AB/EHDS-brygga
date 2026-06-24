# SE Diagnos Typ - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SE Diagnos Typ**

## ValueSet: SE Diagnos Typ (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ValueSet/SEDiagnosisType | *Version*:0.1.0 |
| Draft as of 2026-06-24 | *Computable Name*:SEDiagnosisTypeVS |

 
ValueSet med Ineras diagnostyper (HD/BY) från kv_diagnostyp på terminologitjänsten. Används i Condition.category[diagnostyp] för att ange diagnostyp enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2. 

 **References** 

* [SE EHDS Condition](StructureDefinition-se-ehds-condition.md)

### Logisk definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "SEDiagnosisType",
  "url" : "https://fhir.inera.se/ValueSet/SEDiagnosisType",
  "version" : "0.1.0",
  "name" : "SEDiagnosisTypeVS",
  "title" : "SE Diagnos Typ",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-24T18:55:38+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    },
    {
      "system" : "email",
      "value" : "oskar.thunman@inera.se"
    }]
  }],
  "description" : "ValueSet med Ineras diagnostyper (HD/BY) från kv_diagnostyp på terminologitjänsten.\nAnvänds i Condition.category[diagnostyp] för att ange diagnostyp enligt\nIneras RIVTA-tjänstekontrakt GetDiagnosis:2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
    }]
  }
}

```
