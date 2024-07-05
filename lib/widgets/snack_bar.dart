
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void MySnackBar (){
  Get.snackbar(
    'Snake Bar',
    'This is my snake bar',
    titleText: Text('Snake Bar',
    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
    ),
    messageText:Text('This is my snake bar',
    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
    ),
    colorText: Colors.white,
    snackPosition: SnackPosition.BOTTOM,
    backgroundGradient: LinearGradient(colors: [Colors.red,Colors.green,]),
    animationDuration: Duration(seconds: 2),
    duration: Duration(seconds: 10),
    borderRadius: 10,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(10),
    dismissDirection: DismissDirection.endToStart,
  );
}