# HSA-id (Inera NTjP/RIVTA) - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **HSA-id (Inera NTjP/RIVTA)**

## NamingSystem: HSA-id (Inera NTjP/RIVTA) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsHsaIdInera | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsHsaIdInera |

 
HSA-identifierare (OID 1.2.752.129.2.1.4.1) i Ineras RIVTA-profil och NTjP. Används för sourceSystemHSAId, careProviderHSAId och careUnitHSAId i RIVTA-svar. Bevaras som urn:oid: eftersom ingen kanonisk URI finns. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsHsaIdInera",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsHsaIdInera"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsHsaIdInera",
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
  "description" : "HSA-identifierare (OID 1.2.752.129.2.1.4.1) i Ineras RIVTA-profil och NTjP. Används för sourceSystemHSAId, careProviderHSAId och careUnitHSAId i RIVTA-svar. Bevaras som urn:oid: eftersom ingen kanonisk URI finns.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.129.2.1.4.1"
  },
  {
    "type" : "uri",
    "value" : "urn:oid:1.2.752.129.2.1.4.1",
    "preferred" : true
  }]
}

```
