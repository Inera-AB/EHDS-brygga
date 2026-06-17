Instance: DiagnosisTypeToCategoryMap
InstanceOf: ConceptMap
Title: "DiagnosisType → Condition.category"
Description: "Mappning av RIVTA diagnosisType (HD/BY) från kv_diagnostyp till FHIR Condition.category[diagnostyp]"
Usage: #definition

* name = "DiagnosisTypeToCategoryMap"
* status = #draft
* experimental = true
* sourceUri = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* targetUri = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"

* group[0].source = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* group[0].target = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* group[0].element[0].code = #HD
* group[0].element[0].display = "Huvuddiagnos"
* group[0].element[0].target[0].code = #HD
* group[0].element[0].target[0].display = "Huvuddiagnos"
* group[0].element[0].target[0].equivalence = #equal

* group[0].element[1].code = #BY
* group[0].element[1].display = "Bidiagnos"
* group[0].element[1].target[0].code = #BY
* group[0].element[1].target[0].display = "Bidiagnos"
* group[0].element[1].target[0].equivalence = #equal
