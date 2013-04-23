package uk.ac.shu.webarch.eregister

class Instructorgrails {
String instructorName
String instructorRoom
String instructorTelephone

Set classesTaught
 static hasMany = [classesTaught: Class]
static mappedBy = [classesTaught: "classInstructor"]
    static constraints = {

    }
}
