import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:state_management/Route%20screen/screen2.dart';
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Screen1')
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigate to a new screen:
            Get.to(const Screen2());
            //To go to the next screen and no option to go back to the
            // previous screen (for use in SplashScreens, login screens, etc.
            //  Get.off(const Screen2());
          },
          child:const Text(
            'Screen1'
          ),
        ),
      ),
    );
  }
}