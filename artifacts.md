# Artefakter - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artefakter**

## Artefakter

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [SE EHDS Condition](StructureDefinition-se-ehds-condition.md) | FHIR Condition-profil för EHDS-bryggan, alignad med IPS (International Patient Summary) och EURIDICE/EHDS EU-specifikationer. Mappas från Ineras RIVTA-tjänstekontrakt GetDiagnosis (clinicalprocess:activity:conditions:GetDiagnosis:2).Profilen säkerställer att:* Diagnoskod (ICD-10-SE) är angiven
* Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)
* Diagnostyp (HD/BY) är angiven som ett namngivet snitt i category
* Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})
* Ansvarig hälso- och sjukvårdspersonal anges som recorder (SEBasePractitionerRole)
* Rättslig äkthetsintygsgivare anges som asserter (SEBasePractitionerRole)
* Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)
 |
| [SE EHDS DocumentReference](StructureDefinition-se-ehds-document-reference.md) | FHIR DocumentReference-profil för EHDS-bryggan. Mappas från Ineras RIVTA-tjänstekontrakt GetDocumentList (clinicalprocess:healthrecord:GetDocumentList:1).Profilen alignar med EURIDICE/EHDS EU-specifikationer för kliniska dokument och säkerställer att:* Dokumentidentifierare (documentId) är angiven som masterIdentifier
* Dokumenttyp (LOINC) är angiven
* Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)
* Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})
* Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional) är angiven som author (SEBasePractitionerRole)
* Rättslig äkthetsintygsgivare (legalAuthenticator) är angiven som authenticator (SEBasePractitionerRole)
* Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)
 |
| [SE EHDS Patient](StructureDefinition-se-ehds-patient.md) | FHIR Patient-profil för EHDS-bryggan, byggd ovanpå IPS Patient (Patient-uv-ips). Lägger till svenska identifier-slicar för personnummer, samordningsnummer och nationelltReservnummer i enlighet med HL7 Sweden basprofiler (SEBasePatient). Används som subject i SEEHDSCondition och SEEHDSDocumentReference. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Asserted Date](StructureDefinition-ext-asserted-date.md) | Administrativt datum när diagnosen registrerades kliniskt (author-time). Mappas från EPS-extensionen extension:assertedDate i GetDiagnosis. Skiljer sig från recordedDate (systemtidsstämpel) och onsetDateTime (klinisk debut). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [SE Diagnos Typ](ValueSet-SEDiagnosisType.md) | ValueSet med Ineras diagnostyper (HD/BY) från kv_diagnostyp på terminologitjänsten. Används i Condition.category[diagnostyp] för att ange diagnostyp enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Diagnos Typ (kv_diagnostyp)](CodeSystem-DiagnosisTypeCS.md) | Ineras kodverk för diagnostyp (kv_diagnostyp) hämtat från terminologitjänsten. Anger om en diagnos är huvud- eller bidiagnos enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2. Koderna HD och BY används direkt som värden i FHIR Condition.category. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Förskrivarkod (Socialstyrelsen)](NamingSystem-NsForskrivarkod.md) | Förskrivarkod (OID 1.2.752.116.3.1.2) utfärdat av Socialstyrelsen. Identifierar förskrivare av läkemedel. Förekommer i Provenance-resurser. |
| [HOSP-yrken (Socialstyrelsen)](NamingSystem-NsHospYrken.md) | Klassifikation av yrkeskategorier i hälso- och sjukvård (OID 1.2.752.116.3.1.3) från Socialstyrelsens HOSP-register. Förekommer i RIVTA-svar som professionskod. |
| [HSA-id (HL7 Sweden basprofiler)](NamingSystem-NsHsaIdBasprofil.md) | HSA-identifierare (OID 1.2.752.29.4.19) i HL7 Sweden basprofiler-r4. Alternativ OID för samma identifierarespace som 1.2.752.129.2.1.4.1. Bevaras som urn:oid: eftersom ingen kanonisk URI finns. |
| [HSA-id (Inera NTjP/RIVTA)](NamingSystem-NsHsaIdInera.md) | HSA-identifierare (OID 1.2.752.129.2.1.4.1) i Ineras RIVTA-profil och NTjP. Används för sourceSystemHSAId, careProviderHSAId och careUnitHSAId i RIVTA-svar. Bevaras som urn:oid: eftersom ingen kanonisk URI finns. |
| [ICD-10 (International)](NamingSystem-NsIcd10International.md) | ICD-10 internationell version (OID 2.16.840.1.113883.6.3) utgiven av WHO. Används när diagnoskodsystemets OID inte är det svenska (1.2.752.116.1.1.1.1.3). |
| [ICD-10-SE](NamingSystem-NsIcd10Se.md) | ICD-10-SE (OID 1.2.752.116.1.1.1.1.3) – det svenska tillägget till ICD-10, utgivet av Socialstyrelsen. Primärt diagnoskodsystem i RIVTA GetDiagnosis:2. |
| [KVÅ – Klassifikation av vårdåtgärder](NamingSystem-NsKva.md) | KVÅ (OID 1.2.752.116.1.1.1.1.1) – Socialstyrelsens klassifikation av åtgärder. Kan förekomma i RIVTA-svar som kompletterande kodsystem. |
| [Legitimationsnummer (Socialstyrelsen)](NamingSystem-NsLegitimationsnummer.md) | Legitimationsnummer (OID 1.2.752.116.3.1.1) utfärdat av Socialstyrelsen för legitimerade yrkesgrupper inom hälso- och sjukvård. Förekommer i Provenance-resurser för vård- och behandlingsansvariga. |
| [Personnummer](NamingSystem-NsPersonnummer.md) | Nationellt personnummer (OID 1.2.752.129.2.1.3.1) utfärdat av Skatteverket. Kanonisk URI enligt HL7 Sweden basprofiler-r4. |
| [SNOMED CT](NamingSystem-NsSnomedCt.md) | SNOMED Clinical Terms (OID 2.16.840.1.113883.6.96). Kan förekomma som kodsystem i RIVTA-svar om producenten kodar med SNOMED CT. |
| [SOSNYK – yrkeskategorier (Socialstyrelsen)](NamingSystem-NsSosnyk.md) | SOSNYK – Socialstyrelsens klassifikation av yrkeskategorier (OID 1.2.752.116.1.3.6). Förekommer i RIVTA-svar som professionskod och i HSA-katalogens yrkesklassificering. |
| [Samordningsnummer](NamingSystem-NsSamordningsnummer.md) | Samordningsnummer (OID 1.2.752.129.2.1.3.3) utfärdat av Skatteverket. Kanonisk URI enligt HL7 Sweden basprofiler-r4. |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [DiagnosisType → Condition.category](ConceptMap-DiagnosisTypeToCategoryMap.md) | Mappning av RIVTA diagnosisType (HD/BY) från kv_diagnostyp till FHIR Condition.category[diagnostyp] |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [SE EHDS Patient Example](Patient-SEEHDSPatientExample.md) | Minimalt exempel på en patient som uppfyller SEEHDSPatient-profilen. |

