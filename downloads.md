# Nedladdningar - SE EHDS Brygga Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Nedladdningar**

## Nedladdningar

# Nedladdningar

## FHIR NPM-paket

EHDS-brygga IG publiceras som ett FHIR NPM-paket och kan installeras i FHIR-verktyg som Simplifier, IG Publisher och fsh-sushi.

| | | |
| :--- | :--- | :--- |
| `se.ehds.brygga` | 0.1.0 | [package.tgz](package.tgz) |

### Installation med FHIR NPM-klienten

```
fhir install se.ehds.brygga --here

```

### Innehåll i paketet

| | | |
| :--- | :--- | :--- |
| StructureDefinition (profiler) | 2 | SEEHDSCondition, SEEHDSDocumentReference |
| StructureDefinition (extensions) | 1 | ext-asserted-date |
| NamingSystem | 12 | OID↔URI-mappningar, se[OID-till-URI-mappningar](naming-systems.md) |
| CodeSystem | 1 | DiagnosisType (HD/BY) |
| ValueSet | 1 | SEDiagnosisType |
| ConceptMap | 1 | DiagnosisTypeToCategoryMap |

### Använda paketet lokalt med IG Publisher

Lägg paketet i din lokala FHIR-cache:

```
mkdir -p ~/.fhir/packages/se.ehds.brygga#0.1.0
tar -xzf package.tgz -C ~/.fhir/packages/se.ehds.brygga#0.1.0

```

IG Publisher och SUSHI hittar sedan paketet automatiskt när det refereras som `se.ehds.brygga: 0.1.0` i `sushi-config.yaml` eller `package.json`.

## Källkod

Källkoden för EHDS-bryggan (bridge, IG, mocks) finns på [GitHub (oskthu2/EHDS-brygga)](https://github.com/oskthu2/EHDS-brygga).

