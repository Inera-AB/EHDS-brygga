# ICD-10-SE - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **ICD-10-SE**

## NamingSystem: ICD-10-SE 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsIcd10Se | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsIcd10Se |

 
ICD-10-SE (OID 1.2.752.116.1.1.1.1.3) – det svenska tillägget till ICD-10, utgivet av Socialstyrelsen. Primärt diagnoskodsystem i RIVTA GetDiagnosis:2. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsIcd10Se",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsIcd10Se"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsIcd10Se",
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
  "description" : "ICD-10-SE (OID 1.2.752.116.1.1.1.1.3) – det svenska tillägget till ICD-10, utgivet av Socialstyrelsen. Primärt diagnoskodsystem i RIVTA GetDiagnosis:2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.1.1.1.1.3"
  },
  {
    "type" : "uri",
    "value" : "https://www.icd10.se/",
    "preferred" : true
  }]
}

```
