# Personnummer - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **Personnummer**

## NamingSystem: Personnummer 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/NamingSystem/NsPersonnummer | *Version*:0.1.0 |
| Active as of 2024-01-01 | *Computable Name*:NsPersonnummer |

 
Nationellt personnummer (OID 1.2.752.129.2.1.3.1) utfärdat av Skatteverket. Kanonisk URI enligt HL7 Sweden basprofiler-r4. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "NsPersonnummer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.inera.se/NamingSystem/NsPersonnummer"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "NsPersonnummer",
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
  "description" : "Nationellt personnummer (OID 1.2.752.129.2.1.3.1) utfärdat av Skatteverket. Kanonisk URI enligt HL7 Sweden basprofiler-r4.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "uniqueId" : [{
    "type" : "oid",
    "value" : "1.2.752.129.2.1.3.1"
  },
  {
    "type" : "uri",
    "value" : "http://electronichealth.se/identifier/personnummer",
    "preferred" : true
  }]
}

```
