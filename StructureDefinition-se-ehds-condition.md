# SE EHDS Condition - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SE EHDS Condition**

## Resource Profile: SE EHDS Condition 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/StructureDefinition/se-ehds-condition | *Version*:0.1.0 |
| Draft as of 2026-06-24 | *Computable Name*:SEEHDSCondition |

 
FHIR Condition-profil för EHDS-bryggan, alignad med IPS (International Patient Summary) och EURIDICE/EHDS EU-specifikationer. Mappas från Ineras RIVTA-tjänstekontrakt GetDiagnosis (clinicalprocess:activity:conditions:GetDiagnosis:2). 
Profilen säkerställer att: 
* Diagnoskod (ICD-10-SE) är angiven
* Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)
* Diagnostyp (HD/BY) är angiven som ett namngivet snitt i category
* Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})
* Ansvarig hälso- och sjukvårdspersonal anges som recorder (SEBasePractitionerRole)
* Rättslig äkthetsintygsgivare anges som asserter (SEBasePractitionerRole)
* Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)
 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/se.ehds.brygga|current/StructureDefinition/se-ehds-condition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-se-ehds-condition.csv), [Excel](StructureDefinition-se-ehds-condition.xlsx), [Schematron](StructureDefinition-se-ehds-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "se-ehds-condition",
  "url" : "https://fhir.inera.se/StructureDefinition/se-ehds-condition",
  "version" : "0.1.0",
  "name" : "SEEHDSCondition",
  "title" : "SE EHDS Condition",
  "status" : "draft",
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
  "description" : "FHIR Condition-profil för EHDS-bryggan, alignad med IPS (International Patient Summary)\noch EURIDICE/EHDS EU-specifikationer.\nMappas från Ineras RIVTA-tjänstekontrakt GetDiagnosis\n(clinicalprocess:activity:conditions:GetDiagnosis:2).\n\nProfilen säkerställer att:\n- Diagnoskod (ICD-10-SE) är angiven\n- Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)\n- Diagnostyp (HD/BY) är angiven som ett namngivet snitt i category\n- Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})\n- Ansvarig hälso- och sjukvårdspersonal anges som recorder (SEBasePractitionerRole)\n- Rättslig äkthetsintygsgivare anges som asserter (SEBasePractitionerRole)\n- Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.meta.source",
      "path" : "Condition.meta.source",
      "short" : "HSA-id för källsystemet, format: urn:oid:1.2.752.129.2.1.4.1#{hsaId}",
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.extension:assertedDate",
      "path" : "Condition.extension",
      "sliceName" : "assertedDate",
      "short" : "Administrativt intygsgivningsdatum för legalAuthenticator (YYYYMMDD → YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.inera.se/StructureDefinition/ext-asserted-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Klinisk status: active om inget slutdatum, resolved om slutdatum finns",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/CodeSystem/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Verifieringsstatus – sätts normalt till confirmed vid mappning från RIVTA",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "short" : "Diagnostyp: måste innehålla minst ett snitt med kod från Ineras kv_diagnostyp",
      "min" : 1
    },
    {
      "id" : "Condition.category:diagnostyp",
      "path" : "Condition.category",
      "sliceName" : "diagnostyp",
      "short" : "Diagnostyp (HD=Huvuddiagnos, BY=Bidiagnos) från Ineras terminologitjänst",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ValueSet/SEDiagnosisType"
      }
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Diagnoskod (t.ex. ICD-10-SE)"
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Diagnoskodning med stöd för ICD-10-SE som namngivet snitt",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:ICD10SE",
      "path" : "Condition.code.coding",
      "sliceName" : "ICD10SE",
      "short" : "ICD-10-SE diagnoskod",
      "definition" : "Diagnoskodning enligt ICD-10-SE, det svenska tillägget till ICD-10",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding:ICD10SE.system",
      "path" : "Condition.code.coding.system",
      "short" : "ICD-10-SE kodsystem (https://www.icd10.se/)",
      "min" : 1,
      "fixedUri" : "https://www.icd10.se/"
    },
    {
      "id" : "Condition.code.coding:ICD10SE.code",
      "path" : "Condition.code.coding.code",
      "short" : "ICD-10-SE kod, t.ex. J18.9",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:ICD10SE.display",
      "path" : "Condition.code.coding.display",
      "short" : "Klartext för diagnosen, t.ex. Pneumoni, ospecificerad",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Patient som diagnosen gäller – identifieras med personnummer eller samordningsnummer (SEEHDSPatient)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/StructureDefinition/se-ehds-patient"]
      }]
    },
    {
      "id" : "Condition.subject.identifier",
      "path" : "Condition.subject.identifier",
      "short" : "Patientidentifierare (personnummer eller samordningsnummer)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject.identifier.system",
      "path" : "Condition.subject.identifier.system",
      "short" : "http://electronichealth.se/identifier/personnummer eller http://electronichealth.se/identifier/samordningsnummer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject.identifier.value",
      "path" : "Condition.subject.identifier.value",
      "short" : "Personnummer eller samordningsnummer, t.ex. 191212121212",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.onset[x]:onsetDateTime",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetDateTime",
      "short" : "Diagnosens startdatum, mappat från diagnosisBody.diagnosisTimePeriod.start",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "Diagnosens slutdatum, mappat från diagnosisBody.diagnosisTimePeriod.end",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Registreringsdatum, mappat från diagnosisHeader.documentTime (YYYYMMDDHHMMSS → ISO 8601)",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "short" : "Rättslig äkthetsintygsgivare (legalAuthenticator från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]; datum i extension[assertedDate]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
