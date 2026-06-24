# SOSNYK – yrkeskategorier (Socialstyrelsen) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SOSNYK – yrkeskategorier (Socialstyrelsen)**

## NamingSystem: SOSNYK – yrkeskategorier (Socialstyrelsen) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsSosnyk | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsSosnyk |

 
SOSNYK – Socialstyrelsens klassifikation av yrkeskategorier (OID 1.2.752.116.1.3.6). Förekommer i RIVTA-svar som professionskod och i HSA-katalogens yrkesklassificering. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsSosnyk",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsSosnyk"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsSosnyk",
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
  "description" : "SOSNYK – Socialstyrelsens klassifikation av yrkeskategorier (OID 1.2.752.116.1.3.6). Förekommer i RIVTA-svar som professionskod och i HSA-katalogens yrkesklassificering.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.1.3.6"
  },
  {
    "type" : "uri",
    "value" : "urn:oid:1.2.752.116.1.3.6",
    "preferred" : true
  }]
}

```
