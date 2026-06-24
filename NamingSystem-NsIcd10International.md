# ICD-10 (International) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **ICD-10 (International)**

## NamingSystem: ICD-10 (International) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsIcd10International | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsIcd10International |

 
ICD-10 internationell version (OID 2.16.840.1.113883.6.3) utgiven av WHO. Används när diagnoskodsystemets OID inte är det svenska (1.2.752.116.1.1.1.1.3). 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsIcd10International",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsIcd10International"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsIcd10International",
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
  "description" : "ICD-10 internationell version (OID 2.16.840.1.113883.6.3) utgiven av WHO. Används när diagnoskodsystemets OID inte är det svenska (1.2.752.116.1.1.1.1.3).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "2.16.840.1.113883.6.3"
  },
  {
    "type" : "uri",
    "value" : "http://hl7.org/fhir/sid/icd-10",
    "preferred" : true
  }]
}

```
