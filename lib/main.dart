import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text('FirstPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${c.count}')),
            Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.increment();
                  },
                  child: Text('+'),
                ),
                Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                  onPressed: () {
                    c.decrement();
                  },
                  child: Text('-'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondPage());
              },
              child: Text('Go to SecondPage'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('${c.count}'),
      ),
    );
  }
}
