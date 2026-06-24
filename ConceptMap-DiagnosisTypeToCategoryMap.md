# DiagnosisType → Condition.category - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **DiagnosisType → Condition.category**

## ConceptMap: DiagnosisType → Condition.category (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ConceptMap/DiagnosisTypeToCategoryMap | *Version*:0.1.0 |
| Draft as of 2026-06-24 | *Computable Name*:DiagnosisTypeToCategoryMap |

 
Mappning av RIVTA diagnosisType (HD/BY) från kv_diagnostyp till FHIR Condition.category[diagnostyp] 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "DiagnosisTypeToCategoryMap",
  "url" : "https://fhir.inera.se/ConceptMap/DiagnosisTypeToCategoryMap",
  "version" : "0.1.0",
  "name" : "DiagnosisTypeToCategoryMap",
  "title" : "DiagnosisType → Condition.category",
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
  "description" : "Mappning av RIVTA diagnosisType (HD/BY) från kv_diagnostyp till FHIR Condition.category[diagnostyp]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "sourceUri" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
  "targetUri" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
  "group" : [{
    "source" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
    "target" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
    "element" : [{
      "code" : "HD",
      "display" : "Huvuddiagnos",
      "target" : [{
        "code" : "HD",
        "display" : "Huvuddiagnos",
        "equivalence" : "equal"
      }]
    },
    {
      "code" : "BY",
      "display" : "Bidiagnos",
      "target" : [{
        "code" : "BY",
        "display" : "Bidiagnos",
        "equivalence" : "equal"
      }]
    }]
  }]
}

```
