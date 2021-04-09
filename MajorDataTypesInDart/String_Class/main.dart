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

  //length property
  print("length Prop 1 : "+"himystringhere ".length.toString());
  //hashCode property
  print("hashCode Prop 1 :"+"himySTr".hashCode.toString());
  print("hashCode Prop 2 :"+"himySTr23".hashCode.toString());
  //Note you can't set this properties.
  // "histr".length =4;//main.dart:63:11: Error: The setter 'length' isn't defined for the class 'String'.

  //isempty
  print("isEmpty 1: "+"".isEmpty.toString());
  print("isEmpty 2: "+" ".isEmpty.toString());
  print("isEmpty 3: "+"Hi String".isEmpty.toString());



  //Methods --->
    //toUpperCase
  print("UpperCase 1: "+"mystr".toUpperCase());
  print("UpperCase 2: "+"Hishds sdkjskd32".toUpperCase());
    //toLowerCase
    print("LowerCase 1:"+"MY StriNg heRe".toLowerCase());
    //compareTo()
  print("Compare 1: "+ "this String".compareTo("other string").toString());
  print("Compare 2: "+ "this String".compareTo("this String").toString());
  print("Compare 3: "+ "this String".compareTo("thisstring").toString());
  print("Compare 4: "+"Z".compareTo('A').toString());
  print("Compare 5: "+'a'.compareTo('A').toString());
  print("Compare 6: "+'A'.compareTo('Z').toString());
    //indexOf
  print("Index Of 1: \"hi i hate to use regex\".indexOf(\"hate\") : "+ "hi i hate to use regex".indexOf("hate").toString());
  print("Index Of 2: \"hi i hate to use use regex\".indexOf(\"use\"): "+ "hi i hate to use use regex".indexOf("use").toString());
  print("Index Of 3: \"hi i hate to use use use regex\".indexOf(\"use\"): "+ "hi i hate to use use use regex".indexOf("use").toString());
  print("Index Of 4: "+ "hi i hate to  regex\".indexOf(\"use\") : "+ "hi i hate to  regex".indexOf("use").toString());
  print("Index Of 5: \"hi i hate touse regex\".indexOf(\"use\") : "+ "hi i hate touse regex".indexOf("use").toString());
  //Note : pattern here isn't a pattern obj or regex
  print("Index Of 6: \"hi i hate touse use regex\".indexOf(\"\\suse\"): "+ "hi i hate touse use regex".indexOf("\\suse").toString());
  print("Index Of 7: : "+ "hi i hate to use use986 regex".indexOf("\\suse\\s").toString());
      //using **start** argument
  print("Index Of : : "+ "hi i hate to use use regex".indexOf("use",14).toString());
  // print("Index Of : : "+ "hi i hate to use use regex".indexOf("use",-3).toString());
  //RangeError (start): Invalid value: Not in inclusive range 0..26: -3
      //substring(start[,end])
          //setting start only
  print("substring 1: \"1234567890AString Containing Numerical Characters\".substring(10) : "+ "1234567890AString Containing Numerical Characters".substring(10));
  print("substring 2: \"1234567890AString Containing Numerical Characters\".substring(10) : "+ "1234567890AString Containing Numerical Characters".substring(20));
  print("substring 3: \"1234567890AString Containing Numerical Characters\".substring(10) :"+ "1234567890AString Containing Numerical Characters".substring(10,20));
  // print("substring 4: :"+ "1234567890AString Containing Numerical Characters".substring(20,10));
  //Error : Unhandled exception:
  // RangeError: Value not in range: 20
  print("substring 5: \"hi its there\".substring(2,8): "+ "hi its there".substring(2,8));
  // '\' is an escape symbol

  //
}