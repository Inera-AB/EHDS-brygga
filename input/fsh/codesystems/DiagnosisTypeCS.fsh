CodeSystem: DiagnosisTypeCS
Id: DiagnosisType
Title: "Diagnos Typ"
Description: """
Kodsystem för svenska diagnosklassifikationer som inte täcks av FHIR-standarden.
Används för att ange om en diagnos är huvud- eller bidiagnos enligt svenska journalsystem
och Ineras RIVTA-tjänstekontrakt.
"""
* ^url = https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* ^version = "1.1.0"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #bi-diagnos "Bidiagnos" "Bidiagnos (BY) – sekundär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType BY"
* #huvud-diagnos "Huvuddiagnos" "Huvuddiagnos (HD) – primär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType HD"
