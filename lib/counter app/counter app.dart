import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:state_management/counter%20app/counterAppController.dart';

class CounterApp extends StatelessWidget {
   CounterApp({super.key});
  CounterAppController controller=Get.put(CounterAppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('App Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.Disincrement();
              }, child:const Text('-')
              ),
             Obx(() => Text(
               controller.count.value.toString()
             ),),
              ElevatedButton(
              onPressed: () {
                controller.Increment();
              }, child:const Text('+')
              ),

          ],
        ),
      ),
    );
  }
}