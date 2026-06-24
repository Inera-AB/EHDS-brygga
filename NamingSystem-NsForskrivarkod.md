# Förskrivarkod (Socialstyrelsen) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **Förskrivarkod (Socialstyrelsen)**

## NamingSystem: Förskrivarkod (Socialstyrelsen) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsForskrivarkod | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsForskrivarkod |

 
Förskrivarkod (OID 1.2.752.116.3.1.2) utfärdat av Socialstyrelsen. Identifierar förskrivare av läkemedel. Förekommer i Provenance-resurser. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsForskrivarkod",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsForskrivarkod"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsForskrivarkod",
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
  "description" : "Förskrivarkod (OID 1.2.752.116.3.1.2) utfärdat av Socialstyrelsen. Identifierar förskrivare av läkemedel. Förekommer i Provenance-resurser.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.3.1.2"
  },
  {
    "type" : "uri",
    "value" : "urn:oid:1.2.752.116.3.1.2",
    "preferred" : true
  }]
}

```
