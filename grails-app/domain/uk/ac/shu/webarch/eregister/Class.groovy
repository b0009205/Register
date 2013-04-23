package uk.ac.shu.webarch.eregister

class Class {
String className
Date classDate
Instructorgrails classInstructor

Set classesEnrolled
static hasMany = [classesEnrolled: Enrollment]
static mappedBy = [classesEnrolled: "classEnrollment"]
    static constraints = {
    }
}
