# Mappning: GetDocumentList → DocumentReference - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Mappning: GetDocumentList → DocumentReference**

## Mappning: GetDocumentList → DocumentReference

# Mappning: GetDocumentList → DocumentReference

## Tjänstekontrakt

**RIVTA-kontrakt:** `urn:riv:clinicalprocess:healthrecord:GetDocumentListResponder:1`
 **FHIR-resurstyp:** `DocumentReference` (profil: `se-ehds-document-reference`) + `Provenance`

## Fältmappning

| | | |
| :--- | :--- | :--- |
| `documentEntry.documentId` | `DocumentReference.masterIdentifier.value` | Unik dokumentidentifierare |
| `documentEntry.title` | `DocumentReference.description` | Dokumenttitel i klartext |
| `documentEntry.documentTime` | `DocumentReference.date` | ISO 8601 via parseRivDate |
| `documentEntry.typeCode.code` | `DocumentReference.type.coding.code` | Dokumenttypskod |
| `documentEntry.typeCode.codeSystem` | `DocumentReference.type.coding.system` | OID→URI via NamingSystemRegistry |
| `documentEntry.typeCode.displayName` | `DocumentReference.type.coding.display` | Kodverkets officiella benämning |
| `documentEntry.typeCode.originalText` | `DocumentReference.type.text` | Fritext från källsystemet; om saknad används`displayName`som fallback |
| `documentEntry.patientId` | `DocumentReference.subject.identifier` | Personnummer/samordningsnummer |
| `documentEntry.accountableHealthcareProfessional` | `DocumentReference.author`(Reference(PractitionerRole)) | Ansvarig hälso- och sjukvårdspersonal |
| `documentEntry.legalAuthenticator` | `DocumentReference.authenticator`(Reference(PractitionerRole)) | Rättslig äkthetsintygsgivare |
| `documentEntry.careProviderHSAId` | `Provenance.agent[role=custodian].who.identifier` | Juridiskt ansvarig vårdgivare – bärs**enbart**i Provenance |
| `documentEntry.careUnitHSAId` | `Provenance.agent[role=author].who.identifier` | Vårdenhet i Provenance |
| `documentEntry.sourceSystemHSAId` | `DocumentReference.meta.source` | Källsystemets HSA-id som URI (urn:oid:{OID}#{hsaId}) |
| `statusCode == "active"` | `status = current` | Annars`superseded` |

## healthcareProfessionalType → PractitionerRole

Både `accountableHealthcareProfessional` och `legalAuthenticator` är av RIVTA-typen `healthcareProfessionalType`, som innehåller uppgifter om en person och deras yrkesroll vid tidpunkten för dokumentet. Dessa mappas till FHIR `PractitionerRole` som anges som logisk referens via HSA-identifierare.

| | | |
| :--- | :--- | :--- |
| `healthcareProfessional.personId` | `PractitionerRole.identifier` | HSA-id för personen |
| `healthcareProfessional.personId.root` | `PractitionerRole.identifier.system` | OID→URI via NamingSystemRegistry |
| `roleAtTime` | `PractitionerRole.code` | Yrkeskategori/roll vid tillfället |

## content.attachment – platshållare

`DocumentReference.content.attachment` sätts alltid med `contentType = application/pdf` och `title` från dokumentets titel. **Ingen binär dokumentdata bäddas in.**

RIVTA GetDocumentList:1 är ett **registeranrop** — det returnerar metadata om dokument, inte dokumentinnehållet. `attachment.data` och `attachment.url` lämnas tomma. För att hämta det faktiska dokumentet krävs ett separat anrop till producenten (t.ex. via GetDocument-kontraktet).

## EURIDICE/IPS-alignment

Profilen `SEEHDSDocumentReference` alignar med EU EHDS dokumentspecifikationer och IHE-dokumentkategorier (LOINC c80-doc-typecodes).

## OID-URI-mappningar

Personnummer, samordningsnummer och HSA-id konverteras till kanoniska URI:er via `NamingSystemRegistry`. Se [OID-till-URI-mappningar](naming-systems.md) för den kompletta tabellen.

De OID:er som förekommer i GetDocumentList:1-svar:

| | | |
| :--- | :--- | :--- |
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` | Personnummer |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` | Samordningsnummer |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.129.2.1.4.1` | HSA-id (Inera NTjP) — author, authenticator, meta.source, Provenance |
| `1.2.752.29.4.19` | `urn:oid:1.2.752.29.4.19` | HSA-id (HL7 Sweden basprofiler) |

## Provenance

Varje `DocumentReference` åtföljs av en `Provenance`-resurs som bär den organisatoriska härkomsten. `careProviderHSAId` placeras **enbart** i Provenance och inte inne i `DocumentReference`-resursen.

| | | | |
| :--- | :--- | :--- | :--- |
| `agent[0].type` | – | `custodian` | Juridiskt ansvarig vårdgivare |
| `agent[0].who.identifier` | `careProviderHSAId` | – | HSA-id för vårdgivaren |
| `agent[1].type` | – | `author` | Informationsägare vårdenhet |
| `agent[1].who.identifier` | `careUnitHSAId` | – | HSA-id för vårdenheten |
| `agent[2].type` | – | `assembler` | EHDS-bryggan |
| `agent[2].who.identifier` | `bridgeHsaId` | – | Bryggans HSA-id |

## Spärr (Sparr)

Spärrkontrollen läser `careProviderHSAId` och `careUnitHSAId` från Provenance — samma mönster som Condition-flödet via `SparrFilterService`.

| | | |
| :--- | :--- | :--- |
| `Provenance.agent[custodian].who` | `careProviderHSAId` | Yttre spärr (organisationsnivå) |
| `Provenance.agent[author].who` | `careUnitHSAId` | Inre spärr (avdelningsnivå) |

## PoC-begränsningar

### Binary document data

Binär dokumentdata hämtas inte; `attachment.data` och `attachment.url` är tomma.

