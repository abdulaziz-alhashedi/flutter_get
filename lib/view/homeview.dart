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
            ElevatedButton(
              child: Text("Go to Other"),
              onPressed: () => Get.to(Other()),
            ),

            const SizedBox(height: 16),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: c.increment,
                child: Icon(Icons.add),
              ),
            ),
            Obx(() => Text("count: ${c.count}")),

            ElevatedButton(onPressed: c.decrement, child: Icon(Icons.remove)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: Icon(Icons.add),
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
