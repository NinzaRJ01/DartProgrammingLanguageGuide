void main() {
  //Insertion sort
  List myList = [2323,323.23,2334,34,-34,-34,223,432,67,76];
  
  print(">>"+myList[0].toString());
  for(int i=1;i<myList.length;i++){
    var key = myList[i];
    int j=i-1;
    while(j>=0 && myList[j]>key){
      myList[j+1]=myList[j];
      j--;
    }
    myList[j+1]=key;
  }
  print(myList);
  
}

