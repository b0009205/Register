package uk.ac.shu.webarch.eregister

class Class {
String className
Date classDate
Instructor classInstructor

Course courseClass

Set classesEnrolled
Set registrationSheets

static hasMany = [classesEnrolled: Enrollment, registrationSheets: RegistrationSheet]
static mappedBy = [classesEnrolled: "classEnrollment", registrationSheets: "theClass"]
    static constraints = {
    }
}
