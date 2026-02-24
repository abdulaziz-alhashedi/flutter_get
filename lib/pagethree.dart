

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pageone.dart';


class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Three"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(PageOne());
          },
          child: Text("Page One"),
        ),
      ),
    );
  } 
}