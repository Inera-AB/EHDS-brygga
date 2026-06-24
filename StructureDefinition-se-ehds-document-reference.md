# SE EHDS DocumentReference - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artefakter**](artifacts.md)
* **SE EHDS DocumentReference**

## Resource Profile: SE EHDS DocumentReference 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/StructureDefinition/se-ehds-document-reference | *Version*:0.1.0 |
| Draft as of 2026-06-24 | *Computable Name*:SEEHDSDocumentReference |

 
FHIR DocumentReference-profil för EHDS-bryggan. Mappas från Ineras RIVTA-tjänstekontrakt GetDocumentList (clinicalprocess:healthrecord:GetDocumentList:1). 
Profilen alignar med EURIDICE/EHDS EU-specifikationer för kliniska dokument och säkerställer att: 
* Dokumentidentifierare (documentId) är angiven som masterIdentifier
* Dokumenttyp (LOINC) är angiven
* Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)
* Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})
* Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional) är angiven som author (SEBasePractitionerRole)
* Rättslig äkthetsintygsgivare (legalAuthenticator) är angiven som authenticator (SEBasePractitionerRole)
* Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)
 

**Användningar:**

* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/se.ehds.brygga|current/StructureDefinition/se-ehds-document-reference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-se-ehds-document-reference.csv), [Excel](StructureDefinition-se-ehds-document-reference.xlsx), [Schematron](StructureDefinition-se-ehds-document-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "se-ehds-document-reference",
  "url" : "https://fhir.inera.se/StructureDefinition/se-ehds-document-reference",
  "version" : "0.1.0",
  "name" : "SEEHDSDocumentReference",
  "title" : "SE EHDS DocumentReference",
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
  "description" : "FHIR DocumentReference-profil för EHDS-bryggan.\nMappas från Ineras RIVTA-tjänstekontrakt GetDocumentList\n(clinicalprocess:healthrecord:GetDocumentList:1).\n\nProfilen alignar med EURIDICE/EHDS EU-specifikationer för kliniska dokument\noch säkerställer att:\n- Dokumentidentifierare (documentId) är angiven som masterIdentifier\n- Dokumenttyp (LOINC) är angiven\n- Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)\n- Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})\n- Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional) är angiven som author (SEBasePractitionerRole)\n- Rättslig äkthetsintygsgivare (legalAuthenticator) är angiven som authenticator (SEBasePractitionerRole)\n- Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
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
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.meta.source",
      "path" : "DocumentReference.meta.source",
      "short" : "HSA-id för källsystemet, format: urn:oid:1.2.752.129.2.1.4.1#{hsaId}",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "Dokumentets unika identifierare (documentId från RIVTA)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "short" : "current för aktiva dokument, superseded för inaktiva",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Dokumenttyp (t.ex. LOINC-kod från c80-doc-typecodes)",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/c80-doc-typecodes"
      }
    },
    {
      "id" : "DocumentReference.type.text",
      "path" : "DocumentReference.type.text",
      "short" : "Fritext dokumenttyp (typeCode.originalText från RIVTA); används om displayName saknas",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "short" : "Patient som dokumentet gäller – identifieras med personnummer eller samordningsnummer (SEEHDSPatient)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/StructureDefinition/se-ehds-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject.identifier",
      "path" : "DocumentReference.subject.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject.identifier.system",
      "path" : "DocumentReference.subject.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject.identifier.value",
      "path" : "DocumentReference.subject.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "short" : "Dokumentets skapandetid (documentTime från RIVTA)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "short" : "Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "short" : "Rättslig äkthetsintygsgivare (legalAuthenticator från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.description",
      "path" : "DocumentReference.description",
      "short" : "Dokumenttitel (title från RIVTA)",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "short" : "application/pdf eller text/plain",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.title",
      "path" : "DocumentReference.content.attachment.title",
      "mustSupport" : true
    }]
  }
}

```
