#  String Class In Dart Programming Language
- is a part of dart:core.

- is an abstract class.
  
- implement Comparable,Pattern.
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
  **Properties :**
    - _length_ : get length of string 
    ```dart
    print("hiThisIsAString".length);//15
   ```
  - _hashCode_ : get hasCode derived from code unit of string.
    ```dart
    print("hashCode Prop 1 :"+"himySTr".hashCode.toString());
    print("hashCode Prop 2 :"+"himySTr23".hashCode.toString());
    ```
    
  - _isEmpty_ : return true if string is empty ,false otherwise.
    ```dart
    print("isEmpty 1: "+"".isEmpty.toString());//true
    print("isEmpty 2: "+" ".isEmpty.toString());//false
    print("isEmpty 3: "+"Hi String".isEmpty.toString());//false
    ```
    
  - _isNotEmpty_ : return true if string is not empty ,false otherwise.
    
  - 
   Note : You can't set these properties.
    ```dart
  // "histr".length =4;//main.dart:63:11: Error: The setter 'length' isn't defined for the class 'String'.  
  ```
#### Important Methods :
1. stringObj._toUpperCase()_ : return an uppercase string comparable to original string.
   **Returns :** String
   ```dart
    print("UpperCase 1: "+"mystr".toUpperCase());
    print("UpperCase 2: "+"Hishds sdkjskd32".toUpperCase());
    /*Ouput:
    * UpperCase 1: MYSTR
    * UpperCase 2: HISHDS SDKJSKD32
    * */
   ```
2. stringObj._toLowerCase()_ : return a lower case string comparable to original string.
   **Returns :** String
   ```dart
   print("LowerCase 1:"+"MY StriNg heRe".toLowerCase());
   //LowerCase 1:my string here
   ```
   
3. stringObj._toCompare()_ :
   ```
    * Compares this string to [other].
   *
   * Returns a negative value if `this` is ordered before `other`,
   * a positive value if `this` is ordered after `other`,
   * or zero if `this` and `other` are equivalent.
   *
   * The ordering is the same as the ordering of the code points at the first
   * position where the two strings differ.
   * If one string is a prefix of the other,
   * then the shorter string is ordered before the longer string.
   * If the strings have exactly the same content, they are equivalent with
   * regard to the ordering.
   * Ordering does not check for Unicode equivalence.
   * The comparison is case sensitive.
   ```
   **Returns :** int
   
    Example:
    ```dart
    print("Compare 1: "+ "this String".compareTo("other string").toString());
    print("Compare 2: "+ "this String".compareTo("this String").toString());
   
   /*Output:
   
   */ 
    ```