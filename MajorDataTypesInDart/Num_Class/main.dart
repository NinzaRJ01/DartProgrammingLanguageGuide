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
  myDouble = num.parse("vv2",printHi).toDouble();
  print("8: "+myDouble.toString());
  //toString() method Examples  - - >
  num myNumber = 2;
  print("Hi, val of my number is "+myNumber.toString());
  myNumber=3.14;
  print("Value of pi : "+myNumber.toString());
  myNumber = 3.14232424242121232487878787878782;
  print("New Value of pi : "+myNumber.toString());
  myNumber = 1.234e5;
  print("New Value of myNumber is : "+myNumber.toString());
  //toDouble() method Example - - >
  myNumber = 2;
  // myDouble =myNumber;//Error type 'int' is not a subtype of type 'double'
  myDouble=myNumber.toDouble();
  print("myDouble = $myDouble");
  //clamp(num lowerlimit,num upperlimt)
  myNumber =873;
  print("Before : "+myNumber.toString());
  //close to high
  print("clamp 1: "+myNumber.clamp(0, 1212).toString());
  print("clamp 2: "+myNumber.clamp(0, 872).toString());
  print("clamp 3: "+myNumber.clamp(0, 50).toString());
  // print("clamp 4: "+myNumber.clamp(0, -50).toString());//Unhandled exception
  print("clamp 5: "+myNumber.clamp(-100, 0).toString());
  print("clamp 6: "+myNumber.clamp(-110, -90).toString());
  //close to low
  print("clamp 7: "+myNumber.clamp(872, 1000).toString());
  print("clamp 8: "+myNumber.clamp(874, 1000).toString());
  print("clamp 9: "+myNumber.clamp(1212.2323, 12121).toString());
  //toInt()
  myNumber = 2323.232.toInt();
  print("toInt : "+myNumber.toString());
  //round()
  myNumber = 2323.232.round();
  print("Round : "+myNumber.toString());
  myNumber = 234.982.roundToDouble();
  print("Round : "+myNumber.toString());
  //floor()
  myNumber = 2323.232.floor();
  print("Floor : "+myNumber.toString());
  //ceil()
  myNumber = 2323.232.ceil();
  print("Ceil : "+myNumber.toString());
  //truncate()
  myNumber = 2323.232.truncate();
  print("Truncate : "+myNumber.toString());
  //floorToDouble
  myDouble = 2323.232.floorToDouble();
  print("Floor(Double) : "+myDouble.toString());
  //roundToDouble
  myDouble = 2323.232.roundToDouble();
  print("Round(Double) : "+myDouble.toString());
  myDouble = 234.982.roundToDouble();
  print("Round(Double) : "+myDouble.toString());
  //ceilToDouble
  myDouble = 2323.232.ceilToDouble();
  print("Ceil(Double) : "+myDouble.toString());
  //TruncateToDouble
  myDouble = 2323.232.truncateToDouble();
  print("Truncate(Double) : "+myDouble.toString());






}