

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void MyDialogBox (){
  Get.defaultDialog(
    title: 'Dialog Box',
    middleText: 'Do you want to exit',
    titleStyle: TextStyle(
      fontWeight: FontWeight.bold
    ),
    middleTextStyle: TextStyle(
      color: Colors.deepPurple
    ),
    actions: [
      OutlinedButton(
        style: ElevatedButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2),
            ),
              side: BorderSide(color: Colors.black)
          ),
        ),
        onPressed: (){
          Get.back();
        },
          child: Text(
            'No',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
      ),
      OutlinedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)
            ),
              side: BorderSide(color: Colors.black)
          ),
        ),
        onPressed: (){
          print('Done');
          Get.back();
        },
        child: Text(
            'Yes',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      ),
    ],
    backgroundColor: Colors.white,
  );
}