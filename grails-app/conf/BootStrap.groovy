import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

println("BootStrap::init");

def ian_instructor=Instructor.findByInstructorId('123') ?: new Instructor(instructorId:'123',                                                      
instructorName:'Ian Ibbotson',
instructorRoom:'9325', 
instructorTelephone:'01144275432').save();

def matthew_instructor=Instructor.findByInstructorId('124') ?: new Instructor
(instructorId:'124', 
instructorName:'Matthew Love', 
instructorRoom:'9327', 
instructorTelephone:'011442753450').save();

def IMwA_course=Course.findByCourseId('w345') ?: new Course
(courseId:'ima2', 
courseName:'Interactive Media with Animation', 
courseYear:'2').save();

def webarch_class=Class.findByClassId('wa22') ?: new Class
(classId:'wa22', 
className:'Web Architecture', 
classDate:'Monday@4',
classInstructor: 'Ian Ibbotson').save();

def vr_class=Class.findByClassName('Virtual Reality') ?: new Class
(classId:'vr22', 
className:'Virtual Reality', 
classDate:'Thursday@10',
classInstructor: 'Penny Collier').save();


    }
    def destroy = {
    }
}
