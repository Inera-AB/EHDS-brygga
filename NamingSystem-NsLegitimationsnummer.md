# Legitimationsnummer (Socialstyrelsen) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **Legitimationsnummer (Socialstyrelsen)**

## NamingSystem: Legitimationsnummer (Socialstyrelsen) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsLegitimationsnummer | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsLegitimationsnummer |

 
Legitimationsnummer (OID 1.2.752.116.3.1.1) utfärdat av Socialstyrelsen för legitimerade yrkesgrupper inom hälso- och sjukvård. Förekommer i Provenance-resurser för vård- och behandlingsansvariga. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsLegitimationsnummer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsLegitimationsnummer"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsLegitimationsnummer",
  "status" : "active",
  "kind" : "identifier",
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
  "description" : "Legitimationsnummer (OID 1.2.752.116.3.1.1) utfärdat av Socialstyrelsen för legitimerade yrkesgrupper inom hälso- och sjukvård. Förekommer i Provenance-resurser för vård- och behandlingsansvariga.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.3.1.1"
  },
  {
    "type" : "uri",
    "value" : "urn:oid:1.2.752.116.3.1.1",
    "preferred" : true
  }]
}

```
