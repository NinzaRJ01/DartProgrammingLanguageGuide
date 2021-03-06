## Num Class in Dart Programming Language
  
  - num is an _abstract class_ in dart

  - num class can't create objects of its own.
  
  ```dart
    num myNum = new num();//Error: The class 'num' is abstract and can't be instantiated
  ```
  - ### Well Known SubClasses 
    
    | **int** | **double** |
    |---------|------------|


  - It gives a compile-time error for any type other than [int] or [double]   
  - can hold/represent int or double datatype . 
   
Most its methods are <ins>abstract method</ins> (methods which need to be overridden in subclasses ).

  ### Important Methods    
   
   1. __parse(String input,[@deprecated num onError(String input)?])__  : 
   
      - Parses a string containing a number literal into a number.
        Example :
        ```dart
        int myInt = num.parse("12");
        double myDouble = num.parse("4.55");
        num myNum = num.parse("435");
        num myNewNum = num.parse("hi");//FormatException
        ```
   
        - It uses its static member function for this task named _tryParse(String)_.
   
        - You can pass a function as parameter to handle <ins>Unhandled Exception</ins> to this member function of num class.
   
        Example :
   
        ```dart
        num myFun(String input){
        print("My fun is exceuting");
          return 0;
        }
        main(){
        int myInt = num.parse("",myFun);
        print(myInt);//Output : 0 
        myInt = num.parse("hi",myFun);
        print(myInt);//Output : 0
        }
        ```
   2. **tryParse(String input) :**
   
        - Parses a string containing a number literal into a number.
        - **Note** - It will return _null_ if string can't be parsed.
        ```dart
        num myNum =num.tryParse("43");//will return 43
        myNum = num.tryParse("5.22");//will return 5.22
        myNum = num.tryParse("Hi");//will return null
        ```
**Other Important Non-Static Methods:**
    
- _toString() :_ Returns the shortest string that correctly represent the input number.
  ```dart
  num myNumber = 2;
  print("Hi, val of my number is "+myNumber.toString());
  //Out: Hi, val of my number is 2
  myNumber = 3.14;
  print("Value of pi : "+myNumber.toString());
  //Out: Value of pi : 3.14
  ```
   **Note :** the conversion may round the output if the returned string.
  
    ```dart
    myNumber = 3.14232424242121232487878787878782;
    print("New Value of pi : "+myNumber.toString());
   myNumber = 1.234e5;
   print("New Value of myNumber is : "+myNumber.toString());
   
  /*
  Output:
  New Value of pi : 3.1423242424212123
  New Value of myNumber is : 123400.0
  */
   ```
- _toDouble() :_ Return this [num] as a [double].
    ```dart
  num myNum = 2;
  double myDouble =myNumber;//Error : type 'int' is not a subtype of type 'double'
  myDouble = myNumber.toDouble();//No error 
   print("myDouble = $myDouble");
  /*Output:
    myDouble = 2.0
  */
  ```
- _toInt() :_ Truncates this [num] to an integer and returns the result as an [int].
    ```dart
  num myNum =1.23232;
  int myInt = myNum;//Error
  myInt =myNum.toInt();//Works  
  ```
- _clamp(num lowerLimit,num upperLimit) :_ Returns this [num] clamped to be in the range [lowerLimit]-[upperLimit].
  ```dart
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
  /*Output :
  Before : 873
    clamp 1: 873
    clamp 2: 872
    clamp 3: 50
    clamp 5: 0
    clamp 6: -90
    clamp 7: 873
    clamp 8: 874
    clamp 9: 1212.2323
  */
  ```

- _round() :_ round and return the num(int,double) to the nearest int.
  
    ```dart
    myNumber = 2323.232.round();
    print("Round : "+myNumber.toString());//Round : 2323
    myNumber = 234.982.round();
    print("Round : "+myNumber.toString());//Round : 235
    ```
- _floor() :_ return nearest integer to smaller than current num.
    ```dart
    myNumber = 2323.232.floor();
  print("Floor : "+myNumber.toString());//Floor : 2323
  ```  

- _ceil() :_ return nearest integer which is greater than current num.
    ```dart
  myNumber = 2323.232.ceil();
  print("Ceil : "+myNumber.toString());  
  ```
  
- _roundToDouble() :_ Returns the double integer value closest to num.
    ```dart
  myDouble = 2323.232.roundToDouble();
  print("Round(Double) : "+myDouble.toString());
  myDouble = 234.982.roundToDouble();
  print("Round(Double) : "+myDouble.toString());
  ```
  
- _floorToDouble() :_ Returns the greatest double integer value no greater than current num.
    ```dart
  myDouble = 2323.232.floorToDouble();
  print("Floor(Double) : "+myDouble.toString());  
  ```
- _ceilToDouble() :_ Returns the least double integer value no smaller than current num.
  ```dart
   myDouble = 2323.232.ceilToDouble();
  print("Ceil(Double) : "+myDouble.toString());
  ```
- _truncateToDouble() :_  Returns the double integer value obtained by discarding any fractional
     digits from the double value of `this`.
  ```dart
  myDouble = 2323.232.truncateToDouble();
  print("Truncate(Double) : "+myDouble.toString());
  ```
- _truncate() :_ Return int by removing fractional part of num.
  ```dart
    myNumber = 2323.232.truncate();
  print("Truncate : "+myNumber.toString());

  ```
   ### Code Example

```dart
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
/*Output :
1: 9
Hi
2: -1
3: 1.0
4: 2.1
5: 1.2
6: 43.0
7: null
Hivv2
8: -1.0
Hi, val of my number is 2
Value of pi : 3.14
New Value of pi : 3.1423242424212123
New Value of myNumber is : 123400.0
myDouble = 2.0
Before : 873
clamp 1: 873
clamp 2: 872
clamp 3: 50
clamp 5: 0
clamp 6: -90
clamp 7: 873
clamp 8: 874
clamp 9: 1212.2323
toInt : 2323
toInt : 2323
Round : 2323
Round : 235.0
Floor : 2323
Ceil : 2324
Truncate : 2323
Floor(Double) : 2323.0
Round(Double) : 2323.0
Round(Double) : 235.0
Ceil(Double) : 2324.0
Truncate(Double) : 2323.0
*/
```



    