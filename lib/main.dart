import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/Route%20screen/Screen1.dart';
import 'package:state_management/show%20Dialog/show%20Dialog.dart';
import 'package:state_management/snackebar/snackebar.dart';
import 'package:state_management/translates/ntil/Login%20translates.dart';
import 'package:state_management/translates/view/logn%20in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LoginTranslation(), // your translations
      locale:const Locale('KH','kh'),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      home: LoginScreen(),
    );
  }
}