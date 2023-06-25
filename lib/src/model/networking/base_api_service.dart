void main(){
  String str = "Srijannnnaa" ;
  String temp = "";
  String output = "" ;

  // expected output  = "srijan" ;
  //expected output  = "na" ;

  str.split("").forEach((element) {
    if(temp.contains(element)){
      output = output+ element ;
    }else {
      temp = temp+ element ;
    }
  });

  print(temp) ;
  print(output) ;
 // print(str.split("").toSet().join());
}

// time complexity = worst case  = O(N)*N = O(N)
