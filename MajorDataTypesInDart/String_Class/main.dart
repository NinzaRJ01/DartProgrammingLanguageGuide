main(){
  String myStr;
  //Since **String** class is an abstract class it has no public/protected constructors
  // myStr = new String();//Error: Method not found: 'String'

  //Syntax :-
  myStr = "Hi from String class";
  print("1: $myStr");
  //Literal
  myStr = 'single Quotes literal';//1
  print("Single Quote String Literal Dart : "+myStr);
  myStr = "double Quote literal";//2
  print("Double Quote String Literal Dart : "+myStr);
  myStr ='''Multi line string in dart
          here  go go
          using single quotes''';
  print(myStr);
  myStr = """Muti line string 
  in dart using 
  double quotes""";
  print(myStr);


  //Concatenation of two String using '+' operator
  myStr = "First String" +" Second String";
  print("1.Concatenation Using + operator : "+myStr);
  myStr = "First "+"Second "+"Third "+"More ";//Multiple
  print("2.Concatenation Using + operator : "+myStr);

  //Using '*' operator with String : return multiplied string concatenated to
  // num value that multiplied
  myStr ="hi str "*5;
  print("1.* operator on String : "+myStr);
  myStr ="hi str"*0;//Zero
  print("2.* operator String :"+ myStr);//Print Nothing
  myStr ="hi str"*-2;//Negative
  print("3.* operator String :"+ myStr);//Print Nothing
  // myStr ="hi str"*"ohh";//String * String gives Error: A value of type 'String'
  // can't be assigned to a variable of type 'int'.

  //Using '/' operator with String : No Support

  //getting a single character out of String
  myStr = "Hello String";
  print("myStr[0] : "+myStr[0]);
  print("myStr[3] : "+myStr[3]);
  print("myStr[6] : "+myStr[6]);
  print("myStr[8] : "+myStr[8]);
  // print("myStr[14] : "+myStr[14]);/*Unhandled exception:
// RangeError (index): Invalid value: Not in inclusive range 0..11: 14*/
//   print("myStr[-1] : "+myStr[-1]);
  /*Unhandled exception:
RangeError (index): Invalid value: Not in inclusive range 0..11: -1
*/
  // myStr[0]= 'k';//Try correcting the operator to an existing operator, or defining a '[]=' operator.






}