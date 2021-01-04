## Num Class in Dart Programming Language
  
  - num is an _abstract class_ in dart
  - num class can't create objects of its own.
  
  ```dart
    num myNum = new num();//Error: The class 'num' is abstract and can't be instantiated
  ```
  - Well Known SubClasses : 
   **int** , **double**
  - It gives a compile-time error for any type other than [int] or [double]   
  - can hold/represent int or double datatype . 
   
Most its methods are <ins>abstract method</ins> (methods which need to be overridden in subclasses ).

But in the later version of dart sdk, it has the two **static method** named :
    
   **(**imp)**
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
   ### More examples:
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
*/
```



    