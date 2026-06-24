# HOSP-yrken (Socialstyrelsen) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **HOSP-yrken (Socialstyrelsen)**

## NamingSystem: HOSP-yrken (Socialstyrelsen) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsHospYrken | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsHospYrken |

 
Klassifikation av yrkeskategorier i hälso- och sjukvård (OID 1.2.752.116.3.1.3) från Socialstyrelsens HOSP-register. Förekommer i RIVTA-svar som professionskod. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsHospYrken",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsHospYrken"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsHospYrken",
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
  "description" : "Klassifikation av yrkeskategorier i hälso- och sjukvård (OID 1.2.752.116.3.1.3) från Socialstyrelsens HOSP-register. Förekommer i RIVTA-svar som professionskod.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.3.1.3"
  },
  {
    "type" : "uri",
    "value" : "urn:oid:1.2.752.116.3.1.3",
    "preferred" : true
  }]
}

```
