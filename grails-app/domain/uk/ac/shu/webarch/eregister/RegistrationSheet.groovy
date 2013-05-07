package uk.ac.shu.webarch.eregister

class RegistrationSheet {
String registerSheetName
Date registerSheetDate

Class theClass

Set regEntries
static hasMany = [regEntries: RegisterEntry]
static mappedBy = [regEntries: "regEntry"]
    static constraints = {
    }
}
