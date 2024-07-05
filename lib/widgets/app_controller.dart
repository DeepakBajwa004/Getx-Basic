

import 'package:get/get.dart';

class AppController extends GetxController{
  var counter=0.obs;
  List<dynamic> list =[].obs;

  void increase(){
    counter++;
  }

  void decrease(){
    if(counter==0){
      counter;
    }else{
      counter--;
    }
  }

  void additem(int item){
    list.add(item);
  }

  void removeitem(){
    list.removeLast();
  }
  // RxBool isset = true.obs;
  // RxDouble result =0.0.obs;
  // RxString name ="".obs;
}