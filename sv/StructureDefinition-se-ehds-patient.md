# SE EHDS Patient - SE EHDS Brygga Implementation Guide v0.1.0

## Resursprofil: SE EHDS Patient 

**Användningar:**

* Referera till denna Profil: [SE EHDS Condition](StructureDefinition-se-ehds-condition.md) and [SE EHDS DocumentReference](StructureDefinition-se-ehds-document-reference.md)
* Exempel för denna Profil: [Patient/SEEHDSPatientExample](Patient-SEEHDSPatientExample.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/se.ehds.brygga|current/StructureDefinition/se-ehds-patient)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Skyldigheter](#tabs-obligations) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [PatientUvIps](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Patient-uv-ips.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [PatientUvIps](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Patient-uv-ips.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [PatientUvIps](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Patient-uv-ips.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [PatientUvIps](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Patient-uv-ips.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-se-ehds-patient.csv), [Excel](../StructureDefinition-se-ehds-patient.xlsx), [Schematron](../StructureDefinition-se-ehds-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "se-ehds-patient",
  "url" : "https://fhir.inera.se/StructureDefinition/se-ehds-patient",
  "version" : "0.1.0",
  "name" : "SEEHDSPatient",
  "title" : "SE EHDS Patient",
  "status" : "draft",
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
  "description" : "FHIR Patient-profil för EHDS-bryggan, byggd ovanpå IPS Patient (Patient-uv-ips).\nLägger till svenska identifier-slicar för personnummer, samordningsnummer och\nnationelltReservnummer i enlighet med HL7 Sweden basprofiler (SEBasePatient).\nAnvänds som subject i SEEHDSCondition och SEEHDSDocumentReference.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Patientidentifierare – personnummer, samordningsnummer eller nationelltReservnummer"
    },
    {
      "id" : "Patient.identifier:personnummer",
      "path" : "Patient.identifier",
      "sliceName" : "personnummer",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:personnummer.system",
      "path" : "Patient.identifier.system",
      "short" : "http://electronichealth.se/identifier/personnummer",
      "min" : 1,
      "fixedUri" : "http://electronichealth.se/identifier/personnummer"
    },
    {
      "id" : "Patient.identifier:personnummer.value",
      "path" : "Patient.identifier.value",
      "short" : "Personnummer, t.ex. 191212121212",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:samordningsnummer",
      "path" : "Patient.identifier",
      "sliceName" : "samordningsnummer",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:samordningsnummer.system",
      "path" : "Patient.identifier.system",
      "short" : "http://electronichealth.se/identifier/samordningsnummer",
      "min" : 1,
      "fixedUri" : "http://electronichealth.se/identifier/samordningsnummer"
    },
    {
      "id" : "Patient.identifier:samordningsnummer.value",
      "path" : "Patient.identifier.value",
      "short" : "Samordningsnummer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nationelltReservnummer",
      "path" : "Patient.identifier",
      "sliceName" : "nationelltReservnummer",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nationelltReservnummer.system",
      "path" : "Patient.identifier.system",
      "short" : "http://electronichealth.se/identifier/nationelltReservnummer",
      "min" : 1,
      "fixedUri" : "http://electronichealth.se/identifier/nationelltReservnummer"
    },
    {
      "id" : "Patient.identifier:nationelltReservnummer.value",
      "path" : "Patient.identifier.value",
      "short" : "Nationellt reservnummer",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
