import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/pages/first_page.dart';

import 'controller/TapController.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Expanded(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<TapController>(builder: (_) {
                return Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF000000)),
                    child: Center(
                      child: Text(
                        "X value " + controller.x.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ));
              }),
           
              GestureDetector(
                onTap: () {
                  controller.increaseX();
                },
                child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                      child: Text(
                        "Increase X",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => FirstPage());
                },
                child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                      child: Text(
                        "Go To FirstPage",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  controller.increaseY();
                },
                child: Container(
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0)),
                    child: Center(
                      child: Text(
                        "Increase Y",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                    child: Text(
                      "Tap",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
