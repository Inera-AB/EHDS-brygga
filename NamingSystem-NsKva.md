# KVÅ – Klassifikation av vårdåtgärder - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **KVÅ – Klassifikation av vårdåtgärder**

## NamingSystem: KVÅ – Klassifikation av vårdåtgärder 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsKva | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsKva |

 
KVÅ (OID 1.2.752.116.1.1.1.1.1) – Socialstyrelsens klassifikation av åtgärder. Kan förekomma i RIVTA-svar som kompletterande kodsystem. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsKva",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsKva"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsKva",
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
  "description" : "KVÅ (OID 1.2.752.116.1.1.1.1.1) – Socialstyrelsens klassifikation av åtgärder. Kan förekomma i RIVTA-svar som kompletterande kodsystem.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.116.1.1.1.1.1"
  },
  {
    "type" : "uri",
    "value" : "https://www.socialstyrelsen.se/statistik-och-data/klassifikationer-och-koder/kva/",
    "preferred" : true
  }]
}

```
