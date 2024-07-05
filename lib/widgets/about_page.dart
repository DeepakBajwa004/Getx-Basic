


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'AboutPage',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ),
        ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)
              ),
            ),
          ),
          onPressed: (){
            Get.to(HomePage());
          },
          child: const Text(
            'Go To Home Page',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}
