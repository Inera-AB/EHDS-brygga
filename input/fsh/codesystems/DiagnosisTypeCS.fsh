CodeSystem: DiagnosisTypeCS
Id: DiagnosisType
Title: "Diagnos Typ (kv_diagnostyp)"
Description: """
Ineras kodverk för diagnostyp (kv_diagnostyp) hämtat från terminologitjänsten.
Anger om en diagnos är huvud- eller bidiagnos enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2.
Koderna HD och BY används direkt som värden i FHIR Condition.category.
"""
* ^url = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete

* #HD "Huvuddiagnos" "Huvuddiagnos (HD) – primär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType HD"
* #BY "Bidiagnos" "Bidiagnos (BY) – sekundär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType BY"
