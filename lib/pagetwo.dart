

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pageone.dart';
import 'package:getx/pagethree.dart';
import 'package:getx/view/homeview.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
              child: Text("Go to Page three"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(PageOne());
              },
              child: Text("Go to Page One"),
            ),

             ElevatedButton(
              onPressed: () {
                Get.to(Home());
              },
              child: Text("Go to Home"),
            ),


          ],
        ),
      ),
    );
  } 
}