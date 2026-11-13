# SE Diagnos Typ - SE EHDS Brygga Implementation Guide v0.1.0

## ValueSet: SE Diagnos Typ (Experimentell) 

 **References** 

* [SE EHDS Condition](StructureDefinition-se-ehds-condition.md)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "SEDiagnosisType",
  "url" : "https://fhir.inera.se/ValueSet/SEDiagnosisType",
  "version" : "0.1.0",
  "name" : "SEDiagnosisTypeVS",
  "title" : "SE Diagnos Typ",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-13T15:19:44+00:00",
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
  "description" : "ValueSet med Ineras diagnostyper (HD/BY) från kv_diagnostyp på terminologitjänsten.\nAnvänds i Condition.category[diagnostyp] för att ange diagnostyp enligt\nIneras RIVTA-tjänstekontrakt GetDiagnosis:2.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
    }]
  }
}

```
