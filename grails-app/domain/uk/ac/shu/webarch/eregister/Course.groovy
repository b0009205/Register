package uk.ac.shu.webarch.eregister

class Course {
String courseName
String courseYear

Set courseClasses
static hasMany = [courseClasses: Class]
static mappedBy = [courseClasses: "courseClass"]

    static constraints = {
    }
}
