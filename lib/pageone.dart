import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(PageTwo());
          },
          child: Text("Go to Page Two"),
        ),
      ),
    );
  } 
}