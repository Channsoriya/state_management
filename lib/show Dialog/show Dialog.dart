import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get.dart';

class ShowDialogwithGetX extends StatefulWidget {
  const ShowDialogwithGetX({super.key});

  @override
  State<ShowDialogwithGetX> createState() => _ShowDialogwithGetXState();
}

class _ShowDialogwithGetXState extends State<ShowDialogwithGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: ElevatedButton(
        onPressed: () {
          Get.defaultDialog(
            title: 'Show dialoh',
            middleText: 'this is middleText',
            // content: Row(
            //   children:const [
            //     CircularProgressIndicator(

            //     )
            //   ],
            // ),
           //default cancel and confirm action
           textCancel: 'Cancel',
           cancelTextColor: Colors.black,
           onCancel: () {
             
           },
           textConfirm: 'Confirm',
           confirmTextColor: Colors.white,
           onConfirm: () {
            //close dialog
             Get.back();
            //use with have not getx
            //navigator.pop(context);
           },
           //ចុចក្រៅពី cancel and comfirm វាមិនបិទ dialog
           barrierDismissible: false,
           //color for defual cancel and confirm
           buttonColor: Colors.red,
          );
        },
        child:const Text('Show Dialog'),
       ),
      ),
    );
  }
}