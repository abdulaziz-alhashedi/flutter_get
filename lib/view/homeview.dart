import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontreller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
      appBar: AppBar(title: Text("Home MVC")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GetBuilder<Controller>(
            //   builder: (controller) {
            //     return Text("Clicks: ${controller.count}");
            //   },
            // ),
            Obx(() => Text("count: ${c.count}")),
            ElevatedButton(
              child: Text("Go to Other"),
              onPressed: () => Get.to(Other()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(child: Icon(Icons.remove), onPressed: c.decrement),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: c.increment,
      ),
    );
  }
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context) {
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
