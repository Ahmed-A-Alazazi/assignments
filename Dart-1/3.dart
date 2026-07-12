void main() {

  print(Division(10 , 2));
  print(Division(10 , 0));
  print(Division(null , 2));
}

String Division(int? a, int? b) {

  a ??=0;
  b ??=0;

  try {

    if (b==0){
      throw Exception("Cannot Be Devided by 0!");
    }

    return 'result : ${a/b}';
  }

  catch (e) {

    return 'error : $e';
  }

}