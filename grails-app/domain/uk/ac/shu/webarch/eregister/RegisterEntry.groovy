package uk.ac.shu.webarch.eregister

class RegisterEntry {
String registerEntryName
Date registerEntryDate

RegistrationSheet regEntry

Set regStudent
static hasMany = [regStudent: Student]
static mappedBy = [regStudent: "studentRegister"]


    static constraints = {
    }
}
