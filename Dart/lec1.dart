//1. Static type and Type inference

import 'dart:io';
main() {
  var fname = 'Urvi';

  stdout.writeln("Is your first name : "+ fname + "?\n");
  stdout.writeln("Enter your Last name");
  String lname = stdin.readLineSync();

  print('You Entered $lname');
  print("Your full name is $fname $lname\n");

  int length = 10;
  var breadth = 20;
  var rect_area = length*breadth;
  print('Area of rectangle with length $length and breadth $breadth is $rect_area \n');

  double base = 2.5;
  var height = 7.5;
  var tri_area = (1/2)*base*height;
  print("Area of traingle with base $base and height $height is $tri_area \n");

  dynamic radius = 2.5;
  var pi = 3.142;
  var cir_area = (pi)*radius*radius;
  bool iscircle = true;
  var isrectangle = false;
  print("Ouestion : \nIs $cir_area area of circle with radius $radius ? \n");
  print("Answer(Using single quote inside double quote): \n It's $iscircle \n");
  print("Ouestion : \nIs $cir_area area of rectangle with radius $radius ? \n");
  print('Answer(with escape character): \n It\'s $isrectangle');

  radius = "Radius is $radius";
  print("Radius now is -- $radius");

  String str1 = '''       I'm writing multiline srting
        which means string with multiple lines.
        It's written using three single quotes at
        start and three single quotes at the end''';

  print(str1);

  String str2 = """I'm writing multiline srting
which means string with multiple lines.
It's written using three double quotes at
start and three double quotes at the end""";

  print(str2);
  
  var str_to_int = int.parse('10');
  assert(str_to_int == 10);
  var str_to_double = double.parse('9.86');
  assert(str_to_double == 9.86);
  String int_to_str = 1.15.toString();
  assert(int_to_str == '1.15');
  String float_to_str = 3.14159.toStringAsFixed(2);
  assert(float_to_str == '3.14');

}
