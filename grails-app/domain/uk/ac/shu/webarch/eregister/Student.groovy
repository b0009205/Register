package uk.ac.shu.webarch.eregister

class Student {
String studentName
String studentYear
String studentCourse

Set studentsEnrolled
static hasMany = [studentsEnrolled: Enrollment]
static mappedBy = [studentsEnrolled: "studentEnrollment"]
    static constraints = {
    }
}
