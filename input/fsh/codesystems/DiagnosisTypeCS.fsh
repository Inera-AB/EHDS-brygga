Instance: DiagnosisTypeCS
InstanceOf: CodeSystem
Usage: #definition
Title: "Diagnos Typ (kv_diagnostyp)"
Description: """
Ineras kodverk för diagnostyp (kv_diagnostyp) hämtat från terminologitjänsten.
Anger om en diagnos är huvud- eller bidiagnos enligt Ineras RIVTA-tjänstekontrakt GetDiagnosis:2.
Koderna HD och BY används direkt som värden i FHIR Condition.category.
"""

* url = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* name = "DiagnosisTypeCS"
* version = "0.1.0"
* status = #draft
* experimental = true
* caseSensitive = true
* content = #complete
* concept[0].code = #HD
* concept[0].display = "Huvuddiagnos"
* concept[0].definition = "Huvuddiagnos (HD) – primär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType HD"
* concept[1].code = #BY
* concept[1].display = "Bidiagnos"
* concept[1].definition = "Bidiagnos (BY) – sekundär diagnos satt vid ett vårdtillfälle, motsvarar RIVTA-diagnosType BY"
