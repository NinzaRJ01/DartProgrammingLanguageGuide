#  String Class In Dart Programming Language
- is a part of dart:core.
- is an abstract class.
- **String Literal :**
    ```dart
  String mystr= "my string bet. double quotes";//double quote literal
  mystr = 'my string bet. single quotes.'//single quote literal
    ```
- implements Comparable,Pattern
- You can use **$**
  to interpolate the value of Dart expressions within strings.
  Example :
  ```dart
  var mystr = "Hello ${12/4}";//if single back slash'\' is showning before $ ignore it
  //it will be due Readme formating    
  print(mystr);
  /*Output :
  Hello 3
  */
  ```
- multiline string literal.
  Example :
    ```dart
    String s= """multi line 
              string
               in dart""";
    s = ''' multi line string using
    single quotes
    he
    ''';
    ```
- **Concatenation in String Using '+' Opeartor:**

    Example :
    ```dart
  var myStr ="first string"+" second string"+"third string";
  print(myStr);
  /*Output:
  first string second stringthird string
  */  
  ```
  
#### Remarks :
- You can access the string's singular element/character using 
    following syntax :
  ```dart
  mystr[i];//i be the index of element between 0(the first index) and length of string
  ```
  Example:
    ```dart
  myStr = "Hello String";
  print("myStr[0] : "+myStr[0]);
  print("myStr[3] : "+myStr[3]);
  print("myStr[6] : "+myStr[6]);
  print("myStr[8] : "+myStr[8]);
  /*Output
    myStr[0] : H
    myStr[3] : l
    myStr[6] : S
    myStr[8] : r
  */  
  ```
- String in dart are **immutable**.
    Example:
  ```dart
  var str = "Hello";
  print(str[0]);//prints H
  str[0]= 'k';//Error :Try correcting the operator to an existing operator, or defining a '[]=' operator.
  ```
- A string is represented by a sequence of Unicode UTF-16 code units
 accessible through the [codeUnitAt] or the [codeUnits] members:
    ```dart
     string = 'Dart';
     string.codeUnitAt(0); // 68
     string.codeUnits;     // [68, 97, 114, 116]
    ```
