# SNOMED CT - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SNOMED CT**

## NamingSystem: SNOMED CT 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsSnomedCt | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsSnomedCt |

 
SNOMED Clinical Terms (OID 2.16.840.1.113883.6.96). Kan förekomma som kodsystem i RIVTA-svar om producenten kodar med SNOMED CT. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsSnomedCt",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsSnomedCt"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsSnomedCt",
  "status" : "active",
  "kind" : "codesystem",
  "date" : "2024-01-01",
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
  "description" : "SNOMED Clinical Terms (OID 2.16.840.1.113883.6.96). Kan förekomma som kodsystem i RIVTA-svar om producenten kodar med SNOMED CT.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "2.16.840.1.113883.6.96"
  },
  {
    "type" : "uri",
    "value" : "http://snomed.info/sct",
    "preferred" : true
  }]
}

```
