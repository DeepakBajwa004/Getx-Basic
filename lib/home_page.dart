


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx/widgets/about_page.dart';
import 'package:getx/widgets/app_controller.dart';
import 'package:getx/widgets/dialog_box.dart';
import 'package:getx/widgets/masoomJaat.dart';
import 'package:getx/widgets/snack_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {

    AppController appController=Get.put(AppController());
    int i=0;
    var masoom = Masoom();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'HomePage',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)
                    ),
                  ),
                ),
                  onPressed: (){
                    MySnackBar();
                  },
                  child: const Text(
                    'Show Snake Bar',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)
                    ),
                  ),
                ),
                onPressed: (){
                  MyDialogBox();
                },
                child: const Text(
                  'Show Dialog Box',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)
                    ),
                  ),
                ),
                onPressed: (){
                  Get.to(AboutPage());
                },
                child: const Text(
                  'Go To New Page',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 IconButton(onPressed: (){
                   appController.removeitem();
                 },
                     icon: Icon(Icons.remove)
                 ),
                  Obx(() => RichText(softWrap: true,text: TextSpan(
                    text: appController.list.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                  )),),
                  IconButton(onPressed: (){
                    appController.additem(i++);
                  },
                      icon: Icon(Icons.add)
                  )
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12,
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 32,
                          alignment: Alignment.center,
                          child: IconButton(
                            padding: EdgeInsets.all(3),
                            onPressed: (){
                              appController.decrease();
                            },
                            color: Colors.black, icon: Icon(Icons.remove),
                          ),
                        ),
                        Obx(() =>
                            DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12, width: 1.5),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Container(
                                width: 50,
                                height: 35,
                                alignment: Alignment.center,
                                child: Text(
                                    appController.counter.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent)),
                              ),
                            ),
                        ),
                        Container(
                          height: 35,
                          width: 32,
                          alignment: Alignment.center,
                          child: IconButton(
                            padding: EdgeInsets.all(3),
                            onPressed: (){
                              appController.increase();
                            },
                            color: Colors.black, icon: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)
                        ),
                      ),
                    ),
                    onPressed: (){
                      masoom.name.value=masoom.name.toUpperCase();
                    },
                    child: const Text(
                      'Upper',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Obx(() =>DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Container(
                      width: 100,
                      height: 43,
                      alignment: Alignment.center,
                      child: Text(
                          masoom.name.value,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blueAccent)),
                    ),
                  ),),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)
                        ),
                      ),
                    ),
                    onPressed: (){
                      masoom.name.value=masoom.name.toLowerCase();
                    },
                    child: const Text(
                      'Lower',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
