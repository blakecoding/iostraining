//
//  p4.swift
//  ios.day1.hw
//
//  Created by iFunMac on 9/26/21.
//

import Foundation

struct Student: CustomStringConvertible {
    var name: String
    var age: Int
    var phone: String? = nil
    
    init(name: String,age: Int, phone: String) {
        self.name = name
        self.age = age
        self.phone = phone
    }
    
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
    
    public var description: String { return "\n[name: \(name) | age: \(age) | phone: \(String(phone ?? "Unknow"))]" }
}

class Classroom: CustomStringConvertible {
    var className: String = ""
    var teacherName: String = ""
    var students: [Student] = []
    
    init(className: String, teacherName: String, students: [Student]){
        self.className = className
        self.teacherName = teacherName
        self.students = students
    }
    
    func toString() -> Void {
        print("class name: \(className)")
        print("teacher name: \(teacherName)")
        print("students:")
        print("\(students)")
    }
    
    func setTeacherName(_ newTeacher: String) -> Void {
        self.teacherName = newTeacher
        print("teacher name: \(newTeacher)")
    }
    
    func removeStudentByName(_ name: String) -> Void {
        let newStudentList = students.filter { $0.name != name }
        if newStudentList.count == students.count {
            print("(!) There is no student name \(name)")
        } else {
            print("Remove \(name) success!")
        }
        self.students = newStudentList
    }
    
    func updateStudent(currentStudentName: String, newStudent: Student) -> Void {
        var isUpdated: Bool = false
        let newStudentList = students.map { (student) -> Student in
            if (student.name == currentStudentName) {
                isUpdated = true
                return newStudent
            }else {
                return student
            }
        }
        if isUpdated {
            print("Updated \(currentStudentName) to \(newStudent.name)")
        } else {
            print("(!) Updated fail. There is no \(currentStudentName)")
        }
        self.students = newStudentList
    }
    
    public var description: String {
        return "class name: \(className) \nteacher name: \(teacherName)\nstudents:\n\(students)"
        
    }
}

//Nam, Hoàng, Linh, Huyền, Đức, Dương, Tùng, Bằng, Bắc, Thanh

func p4() -> Void {
    print("\nP4\n")
    let className: String = "NWS IOs Training"
    let teacherName: String = "Quynh"
    let students: [Student] = [Student(name: "Nam", age: 18, phone: "0123456789"),
                               Student(name: "Hoàng", age: 18),
                               Student(name: "Linh", age: 18, phone: "0123456789"),
                               Student(name: "Huyền", age: 18),
                               Student(name: "Đức", age: 18, phone: "0123456789"),
                               Student(name: "Dương", age: 18),
                               Student(name: "Tùng", age: 18, phone: "0123456789"),
                               Student(name: "Bằng", age: 18),
                               Student(name: "Bắc", age: 18, phone: "0123456789"),
                               Student(name: "Thanh", age: 18)]
    let classroom: Classroom = Classroom(className: className, teacherName: teacherName, students: students)
    classroom.setTeacherName("Tao Quynh")
    classroom.updateStudent(currentStudentName: "Nam", newStudent: Student(name: "Đông", age: 18))
    classroom.updateStudent(currentStudentName: "Bá", newStudent: Student(name: "Đông", age: 18))
    classroom.removeStudentByName("Đức")
    classroom.removeStudentByName("Lan")
    print("===")
    print(classroom)
}


