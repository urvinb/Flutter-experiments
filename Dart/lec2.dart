import 'dart:io';
import 'dart:collection';
// Lists
/*void main() { 
  // static list  
  List<int> lst = [121, 12, 33, 14, 3];
  
  //Taking list elements from user
  dynamic ele = null;
  List lst = List();
  stdout.writeln("Enter length of list : ");
  var n = stdin.readLineSync();

  stdout.writeln("Enter list elements: ");
  for(var i=0; i < int.parse(n) ; i++){
    ele = stdin.readLineSync();
    lst.add(int.parse(ele));
  }
    
  // Finding largest
  var largest = lst[0]; 

  lst.forEach((e) => e > largest ? largest = e : largest=largest);

  print("Largest value in the list : $largest"); 
}*/

// Maps
// 1
/*void main(){
    var studentMap = {
    "name": "Urvi",
    "University": "K J SOMAIYA COLLEGE OF ENGINEERING",
    "Degree": "B.Tech",
    "Branch": "Computer",
    "Rollno": 1811068,
    "SEM": 5
  };
  print("\nStudent Prodile excluding contact details");
  print(studentMap);

  studentMap["Phone"] = 9876543210;
  studentMap["Email"] = "urvi.bheda@somaiya.edu";
  studentMap["Address"] = "Ghatkopar, Mumbai - 400075, Maharashtra, India";

  print("\nStudent Prodile including contact details");
  studentMap.forEach((k,v) => print('${k}: ${v}'));

}*/