package uk.ac.shu.webarch.eregister

class Student {
String studentId
String studentName
String studentYear
String studentCourse

RegisterEntry studentRegister

Set studentsEnrolled
static hasMany = [studentsEnrolled: Enrollment]
static mappedBy = [studentsEnrolled: "studentEnrollment"]
    static constraints = {
    }
}
