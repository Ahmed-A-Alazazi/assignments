
void main () {

  List<Map<String,dynamic>> Students = [
    {"Name: " : "Ahmed" , "Age: " : 22 , "Grade: " : 91},
    {"Name: " : "Mohammed" , "Age: " : 25 , "Grade: " : 55},
    {"Name: " : "Ali" , "Age: " : 30 , "Grade: " : 66}
    ];

  void addStudent(List<Map<String,dynamic>> list,{required name,required age,required grade}){
    list.add({'Name: ' : name , 'Age: ' : age , 'Grade: ' : grade});
  }

  addStudent(Students, name: 'khaled', age: 19, grade: 77);

  for (var Student in Students) {
    if (Student['grade']>60) {
      print("Name:  ${Student['Name']} , Age:  ${Student['Age']}, Grade: ${Student['Grade']}");
    }
  }
}