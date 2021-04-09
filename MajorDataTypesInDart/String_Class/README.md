#  String Class In Dart Programming Language
- is a part of dart:core.

- is an abstract class.
  
- implement Comparable,Pattern.
- ## **String Literal**
  
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
- ## **Concatenation in String Using '+' Opeartor**

    Example :
  
    ```dart
  var myStr ="first string"+" second string"+"third string";
  print(myStr);
  /*Output:
  first string second stringthird string
  */  
  ```
  
## Remarks 
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
##  **Properties**

  - ### _length_ : 
    
    get length of string 

    ```dart
    print("hiThisIsAString".length);//15
    ```

  - ### _hashCode_ : 
  
    get hasCode derived from code unit of string.
    
    ```dart
    print("hashCode Prop 1 :"+"himySTr".hashCode.toString());
    print("hashCode Prop 2 :"+"himySTr23".hashCode.toString());
    ```
    
  - ### _isEmpty_ : 
  return true if string is empty ,false otherwise.

    ```dart
    print("isEmpty 1: "+"".isEmpty.toString());//true
    print("isEmpty 2: "+" ".isEmpty.toString());//false
    print("isEmpty 3: "+"Hi String".isEmpty.toString());//false
    ```
    
  - ### _isNotEmpty_ : 
  return true if string is not empty ,false otherwise.
    
  - ### Note :
   You can't set these properties.

  ```dart
  "histr".length =4;
  //main.dart:63:11: Error: The setter 'length' isn't defined for the class 'String'.  
  ```
## **Important Methods**

### 1. stringObj._toUpperCase()_ 
: return an uppercase string comparable to original string.

   **Return Type:** String

   ```dart
    print("UpperCase 1: "+"mystr".toUpperCase());
    print("UpperCase 2: "+"Hishds sdkjskd32".toUpperCase());
    /*Ouput:
    * UpperCase 1: MYSTR
    * UpperCase 2: HISHDS SDKJSKD32
    * */
   ```
### 2. stringObj._toLowerCase()_ 
: return a lower case string comparable to original string.
   **Return Type:** String
   ```dart
   print("LowerCase 1:"+"MY StriNg heRe".toLowerCase());
   //LowerCase 1:my string here
   ```
   
### 3. stringObj._toCompare()_ 

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
   **Return Type:** int
   
  Example:

  ```dart
    print("Compare 1: "+ "this String".compareTo("other string").toString());
    print("Compare 2: "+ "this String".compareTo("this String").toString());
    print("Compare 3: "+ "this String".compareTo("thisstring").toString());
    print("Compare 4: "+"Z".compareTo('A').toString());
    print("Compare 5: "+'a'.compareTo('A').toString());
    print("Compare 6: "+'A'.compareTo('Z').toString());
    /*Output:
    Compare 1: 1
    Compare 2: 0
    Compare 3: -1
    Compare 4: 1
    Compare 5: 1
    Compare 6: -1
    */ 
  ```
   
### 4. stringObj._indexOf(String pattern,int start) :_
    
  used to find the starting index of given string inside stringObject which matches
     the pattern.
   
   **Return Type**: int

  ```dart
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
   /*Output :
   * Index Of 1: "hi i hate to use regex".indexOf("hate") : 5
    Index Of 2: "hi i hate to use use regex".indexOf("use"): 13
    Index Of 3: "hi i hate to use use use regex".indexOf("use"): 13
    Index Of 4: hi i hate to  regex".indexOf("use") : -1
    Index Of 5: "hi i hate touse regex".indexOf("use") : 12
    Index Of 6: "hi i hate touse use regex".indexOf("\suse"): -1
    Index Of 7: : -1
    Index Of : : 17
   * */
  ```

### 5. stringObj._substring(int start,int end)_
  : returns substring of str-object from start index to end index -1.
   
  **Return Type :** string

  ```dart
  //substring(start[,end])
  //setting start only
  print("substring 1: : "+ "1234567890AString Containing Numerical Characters".substring(10));
  print("substring 2: : "+ "1234567890AString Containing Numerical Characters".substring(20));
  print("substring 3: :"+ "1234567890AString Containing Numerical Characters".substring(10,20));
  // print("substring 4: :"+ "1234567890AString Containing Numerical Characters".substring(20,10));
  //Error : Unhandled exception:
  // RangeError: Value not in range: 20
  print("substring 5: : "+ "hi its there".substring(2,8));
  /*Ouput:
  * substring 1: "1234567890AString Containing Numerical Characters".substring(10) : AString Containing Numerical Characters
  substring 2: "1234567890AString Containing Numerical Characters".substring(10) : ntaining Numerical Characters
  substring 3: "1234567890AString Containing Numerical Characters".substring(10) :AString Co
  substring 5: "hi its there".substring(2,8):  its t
  * */
  ```

### 6. stringObj._replaceAll(Pattern form,String replace)_
   : returns a string which replaces all matches of form found in String Object
   with replace string.

   **Return Type :** string 
    
   ```dart
   //replace(pattern,replace)
    //pattern - dtype Pattern
    //replace - dtype String
    print("replaceAll 1 : : "+"hi hi hi hi".replaceAll("hi","hey"));
    print("replaceAll 2 : : "+ "hi di gi ri".replaceAll(RegExp('[a-z]i'),"ho"));
    print("replaceAll 3 : : "+"hi gi di ri".replaceAll(" ","-"));
    print("replaceAll 4 : : "+"hi gi di ri".replaceAll("","-"));
   /*Ouput:
   * replaceAll 1 : : hey hey hey hey
    replaceAll 2 : : ho ho ho ho  
    replaceAll 3 : : hi-gi-di-ri
    replaceAll 4 : : -h-i- -g-i- -d-i- -r-i-
   * */
   ```
   