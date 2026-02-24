

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/main.dart';
import 'package:getx/pageone.dart';
import 'package:getx/pagethree.dart';
import 'package:getx/view/homeview.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  void back(MyHomePage myHomePage){
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Center(
        child: Column(
          children: [
          




            ElevatedButton(
              onPressed: () {
                Get.to(PageThree());
              },
              child: Text("Page three"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(PageOne());
              },
              child: Text(" Page One"),
            ),

             ElevatedButton(
              onPressed: () {
                Get.to(Home());
              },
              child: Text(" Home MVC"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                
              ),
              onPressed: () {
                back(MyHomePage(title: 'GetX',));
              },
              child: Text("Back"),
            ),

          ],
        ),
      ),
    );
  } 
}