# Diagnos Typ (kv_diagnostyp) - SE EHDS Brygga Implementation Guide v0.1.0

## CodeSystem: Diagnos Typ (kv_diagnostyp) (Experimentell) 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [SE Diagnos Typ](ValueSet-SEDiagnosisType.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DiagnosisTypeCS",
  "url" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
  "version" : "0.1.0",
  "name" : "DiagnosisTypeCS",
  "title" : "Diagnos Typ (kv_diagnostyp)",
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
  "description" : "Ineras kodverk för diagnostyp (kv_diagnostyp) hämtat från terminologitjänsten.\nAnger om en diagnos är huvud- eller bidiagnos enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2.\nKoderna HD och BY används direkt som värden i FHIR Condition.category.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "concept" : [{
    "code" : "HD",
    "display" : "Huvuddiagnos",
    "definition" : "Huvuddiagnos (HD) – primär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType HD"
  },
  {
    "code" : "BY",
    "display" : "Bidiagnos",
    "definition" : "Bidiagnos (BY) – sekundär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType BY"
  }]
}

```
