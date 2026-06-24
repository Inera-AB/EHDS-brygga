# Asserted Date - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **Asserted Date**

## Extension: Asserted Date (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/StructureDefinition/ext-asserted-date | *Version*:0.1.0 |
| Draft as of 2026-06-24 | *Computable Name*:ExtAssertedDate |

Administrativt datum när diagnosen registrerades kliniskt (author-time). Mappas från EPS-extensionen extension:assertedDate i GetDiagnosis. Skiljer sig från recordedDate (systemtidsstämpel) och onsetDateTime (klinisk debut).

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [SE EHDS Condition](StructureDefinition-se-ehds-condition.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/se.ehds.brygga|current/StructureDefinition/ext-asserted-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-asserted-date.csv), [Excel](StructureDefinition-ext-asserted-date.xlsx), [Schematron](StructureDefinition-ext-asserted-date.sch) 

#### Begränsningar



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-asserted-date",
  "url" : "https://fhir.inera.se/StructureDefinition/ext-asserted-date",
  "version" : "0.1.0",
  "name" : "ExtAssertedDate",
  "title" : "Asserted Date",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-24T18:55:38+00:00",
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
  "description" : "Administrativt datum när diagnosen registrerades kliniskt (author-time).\nMappas från EPS-extensionen extension:assertedDate i GetDiagnosis.\nSkiljer sig från recordedDate (systemtidsstämpel) och onsetDateTime (klinisk debut).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Asserted Date",
      "definition" : "Administrativt datum när diagnosen registrerades kliniskt (author-time).\nMappas från EPS-extensionen extension:assertedDate i GetDiagnosis.\nSkiljer sig från recordedDate (systemtidsstämpel) och onsetDateTime (klinisk debut)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/StructureDefinition/ext-asserted-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Administrativt datum för diagnosregistrering (YYYYMMDD → YYYY-MM-DD)",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
