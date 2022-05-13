import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              //init: Controller(),
                builder: (_) {
              return Text(
                //'Current value is: ${Get.find<Controller>().x}',
                'Current value is: ${controller.x}',
                style: TextStyle(fontSize: 20, color: Colors.red),
              );
            }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
                //Get.find<Controller>().increment();
              },
              child: Text('Add number'),
            ),
          ],
        ),
      ),
    );
  }
}
