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
        }
        ```
   2.



    