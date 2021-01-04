// import 'dart:_native_typed_data';
import 'dart:developer';

import 'dart:typed_data';

import 'dart:wasm';
num printHi(String input){
  print("Hi"+input.toString());
  return -1;
}
main(){
  int myInt ;
  //myInt= num.parse("9.2");won't work double value can't stored in variable of datatype int
  myInt = num.parse("9.2").floor();//This will work and give output 9 to myInt
  // int myInt2 =num.parse(4.3);//not work because it take string as Parameter
  //myInt = num.parse("abc");//will throw FormatException
  // myInt = num.parse(null);//NoSuchMethodError: The method 'trim' was called on null.
  //it is so because trim method only works on string datatype
  print("1: "+myInt.toString());
  // myInt = num.parse("");//Exception : Unhandled exception
  myInt = num.parse("",printHi);//will call the result in parse String is null and also
  //won't throw FormatError
  print("2: "+myInt.toString());
  num myNum = 1;
  print("3: "+myNum.floorToDouble().toString());
  // myNum = new num();//Error: The class 'num' is abstract and can't be instantiated
  myNum =2.1;
  print("4: "+myNum.toString());
  double myDouble = num.tryParse("1.2");
  print("5: "+myDouble.toString());
  // myDouble = num.tryParse("43");//Unhandled exception:
  // type 'int' is not a subtype of type 'double'
  myDouble = num.tryParse("43").toDouble();
  print("6: "+myDouble.toString());
  myDouble =num.tryParse("aa3");//pass null if not able parse to int or double
  print("7: "+myDouble.toString());




}