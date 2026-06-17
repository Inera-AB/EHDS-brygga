Instance: SEEHDSPatientExample
InstanceOf: SEEHDSPatient
Title: "SE EHDS Patient Example"
Description: "Minimalt exempel på en patient som uppfyller SEEHDSPatient-profilen."
Usage: #example

* identifier[personnummer].system = "http://electronichealth.se/identifier/personnummer"
* identifier[personnummer].value = "195001011234"

* name.use = #official
* name.family = "Andersson"
* name.given[0] = "Anna"

* gender = #female

* birthDate = "1950-01-01"
