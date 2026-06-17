Profile: SEEHDSDocumentReference
Parent: DocumentReference
Id: se-ehds-document-reference
Title: "SE EHDS DocumentReference"
Description: """
FHIR DocumentReference-profil för EHDS-bryggan.
Mappas från Ineras RIVTA-tjänstekontrakt GetDocumentList
(clinicalprocess:healthrecord:GetDocumentList:1).

Profilen alignar med EURIDICE/EHDS EU-specifikationer för kliniska dokument
och säkerställer att:
- Dokumentidentifierare (documentId) är angiven som masterIdentifier
- Dokumenttyp (LOINC) är angiven
- Patient är identifierad med personnummer eller samordningsnummer (SEBasePatient)
- Källsystem identifieras via meta.source (urn:oid:{HSA_OID}#{hsaId})
- Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional) är angiven som author (SEBasePractitionerRole)
- Rättslig äkthetsintygsgivare (legalAuthenticator) är angiven som authenticator (SEBasePractitionerRole)
- Ansvarig vårdgivare bärs av Provenance.agent[role=custodian] (inte inne i resursen)
"""

* meta.source MS
* meta.source ^short = "HSA-id för källsystemet, format: urn:oid:1.2.752.129.2.1.4.1#{hsaId}"

* masterIdentifier 1..1 MS
* masterIdentifier ^short = "Dokumentets unika identifierare (documentId från RIVTA)"

* status 1..1 MS
* status ^short = "current för aktiva dokument, superseded för inaktiva"

* type 1..1 MS
* type ^short = "Dokumenttyp (t.ex. LOINC-kod från c80-doc-typecodes)"
* type from http://hl7.org/fhir/ValueSet/c80-doc-typecodes (extensible)
* type.text MS
* type.text ^short = "Fritext dokumenttyp (typeCode.originalText från RIVTA); används om displayName saknas"

* subject 1..1 MS
* subject only Reference($seEhdsPatient)
* subject ^short = "Patient som dokumentet gäller – identifieras med personnummer eller samordningsnummer (SEEHDSPatient)"
* subject.identifier 1..1 MS
* subject.identifier.system 1..1 MS
* subject.identifier.value 1..1 MS

* date 1..1 MS
* date ^short = "Dokumentets skapandetid (documentTime från RIVTA)"

* author 1..* MS
* author only Reference($seBasePractitionerRole)
* author ^short = "Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]"

* authenticator MS
* authenticator only Reference($seBasePractitionerRole)
* authenticator ^short = "Rättslig äkthetsintygsgivare (legalAuthenticator från RIVTA) – SEBasePractitionerRole med HSA-id i identifier[hsaid]"

* description MS
* description ^short = "Dokumenttitel (title från RIVTA)"

* content 1..* MS
* content.attachment 1..1 MS
* content.attachment.contentType MS
* content.attachment.contentType ^short = "application/pdf eller text/plain"
* content.attachment.title MS
