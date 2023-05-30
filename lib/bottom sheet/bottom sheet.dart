import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class BottomSheetwidget extends StatelessWidget {
  const BottomSheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: ElevatedButton(
        onPressed: () {
         Get.bottomSheet(
           Container(
             child: Wrap(
              children: [
                 ListTile(
                  leading: const Icon(Icons.wb_sunny_outlined),
                  title: const Text(
                    'Light theme',
                    style: TextStyle(
                      color: Colors.black
                    ),
                   ),
                   onTap: () {
                     return Get.changeTheme(ThemeData.light());
                   },
                ),
                ListTile(
                  leading: const Icon(Icons.dark_mode),
                  title: const Text(
                    'Dart theme',
                    style: TextStyle(
                      color: Colors.black
                    ),
                   ),
                   onTap: () {
                     return Get.changeTheme(ThemeData.dark());
                   },
                )
              ],
             ),
          )
         );
        },
        child: const Text(
          'bottom sheet'
        ),
      ),
     ),
    );
  }
}