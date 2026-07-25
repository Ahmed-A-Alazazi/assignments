import 'dart:io';

List<Person> listOfPersons = [];

abstract class Person{

  static int _counter = 1;

  final int id;
  late String name;
  late String department;


  Person({required this.id, required this.name, required this.department});

  void printDetails();

  static int generateID() {
   return _counter++; 
  }

  bool hasID (int PersonID) {
    return this.id == PersonID;
  }
}

class Student extends Person {

  late int level;
  late double _gpa; 

  double get gpa => _gpa;

  set setGPA (double studentGPA) {
    if (studentGPA >= 0 && studentGPA <= 100) {
      _gpa = studentGPA;
    }
    else {
      throw Exception("GPA must be between 0 and 100");
    }
  }

  Student({
    required super.id,
    required super.name,
    required super.department,
    required this.level,
    required double studentGPA
  }) {
    this.setGPA = studentGPA;
  }

  Student.Guest() : this.level = 1, this._gpa = 0, super(id : 0, name : 'Unknown', department : 'Unknown');

  @override
  void printDetails() {
    print("Student's ID: ${super.id} \nName: ${super.name} /nDepartment: ${super.department} \nLevel: ${this.level} \nGPA: ${this._gpa}");
  }
}

class Doctors extends Person {

  late int salary;

  Doctors({
    required super.id,
    required super.name,
    required super.department,
    required this.salary
  });

  @override
  void printDetails() {
    print("Doctor's ID: ${super.id} \nName: ${super.name} /nDepartment: ${super.department} \nSalary: ${this.salary}");
  }
}

void showMessage() {
  
  print("1- Add Student");
  print("2- Remove Student");
  print("3- Show Students");
  print("4- Find Student");
  print("5- Add Guest Student");
  print("6- Add Doctor Student");
  print("7- Exit");
  stdout.write("\nChoose Number: ");
}

void addStudent () {
  stdout.write("Enter Student's Name: ");
  String FullName = stdin.readLineSync() ??"";
  
  stdout.write("Enter Student's Level: ");
  int studentLevel = int.tryParse(stdin.readLineSync() ?? "") ?? 1;

  stdout.write("Enter Student's Department: ");
  String studentDepartment = stdin.readLineSync() ?? "";

  stdout.write("Enter Student's GPA: ");
  double studentGPA = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  try {
  listOfPersons.add(
    Student(
    id: Person.generateID(),
    name: FullName,
    level: studentLevel,
    department: studentDepartment,
    studentGPA: studentGPA
  )
  );

  print("Student Has Added Successfully!.");
  } 
  catch (error) {
    print(error);
  }
}

void addDoctor() {

  stdout.write("Enter Doctor's Name: ");
  String doctorFullName = stdin.readLineSync() ??"";

  stdout.write("Enter Doctor's Department: ");
  String doctorDepartment = stdin.readLineSync() ?? "";

  stdout.write("Enter Doctor's Salary: ");
  int doctorSalary = int.tryParse(stdin.readLineSync() ?? "") ?? 1;

  listOfPersons.add(
    Doctors(
    id: Person.generateID(),
    name: doctorFullName,
    department: doctorDepartment,
    salary: doctorSalary
  )
  );

  print("Doctor Has Added Successfully");
}

void addGuestStudent(){
  listOfPersons.add(Student.Guest());
  print('Guest Student Added Successfuly!');
}

void removePerson() {
  stdout.write("Enter Student's ID: ");
  int? id = int.tryParse(stdin.readLineSync() ?? "");

  if (id==null) {
    print("Invalid Input!!.");
    return;
  } 

  if (listOfPersons.any((Person) => Person.hasID(id))) {
      listOfPersons.removeWhere((Person) => Person.hasID(id));
      print("Student Has Removed Successfully!.");
  } 
  else {
      print("Student Was Not Found!.");
  }

}

void showPerson() {
  if(listOfPersons.isEmpty) {
    print("Student's List is Empty!.");
    return;
  }

  for (Person student in listOfPersons) {
    student.printDetails();
  }
}

void findPerson() {
  stdout.write("Enter Student's ID: ");
  int? id = int.tryParse(stdin.readLineSync() ?? "");

  if (id==null) {
    print("Invalid Input!!.");
    return;
  } 

  for (Person student in listOfPersons) {
    if (student.hasID(id)) {
      student.printDetails();
      return;
    }
  }

  print("Student Was Not Found!.");
}

void main() {
  String appName = "Students Managment System";
  print(appName);

  bool work = true;
  while (work) {

    showMessage();

    String number = stdin.readLineSync() ?? "";

    switch(number) {
      case "1":
        addStudent();
        break;
      case "2":
        removePerson();
        break;
      case "3":
        showPerson();
        break;
      case "4":
        findPerson();
        break;
      case "5":
        addGuestStudent();
        break;
      case "6":
        addDoctor();
        break;
      case "7":
        work = false;
      default:
        print("Invalid Input!.");
    }
  }
}