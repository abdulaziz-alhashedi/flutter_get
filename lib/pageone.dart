import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pagethree.dart';
import 'package:getx/pagetwo.dart';


class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.offAll(PageTwo());
              },
              child: Text("Page Two"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/pageTwo");
              },
              child: Text("Page Two offAllNamed"),
            ),
            // - Get.off(PageTwo());
             ElevatedButton(
              onPressed: () {
                Get.off(PageThree());
              },
              child: Text("page three off"),
            ),
            // - Get.offAll(PageTwo());
             ElevatedButton(
              onPressed: () {
                Get.offAll(PageTwo());
              },
              child: Text("page three offAll"),
            ),
            // - Get.back();
            ElevatedButton(
              onPressed: () {
                Get.offAll(PageThree());
              },
              child: Text("off all page three"),
            ),
            // - Get.offAllNamed("/pageTwo");
             ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/home");
              },
              child: Text("page three off all named"),
            ),

            // - Get.toNamed("/pageTwo");
             ElevatedButton(
              onPressed: () {
                Get.toNamed("/pageName");
              },
              child: Text("to named"),
            ),
            // - Get.offNamedUntil(PageTwo(), (route) => false);
            //  ElevatedButton(
            //   onPressed: () {
            //     Get.offNamedUntil(PageTwo(), (route) => false);
            //   },
            //   child: Text("back"),
            // ),
            // - Get.toNamedUntil(PageTwo(), (route) => false);



             ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("back"),
            ),
          ],
        ),
      ),
    );
  } 
}