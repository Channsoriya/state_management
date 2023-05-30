import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
class SnackeBar extends StatelessWidget {
  const SnackeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:const Text(
            'SnackBar'
          ),
          bottom: const TabBar(
            tabs: [
               Tab(
                 icon: Icon(
                  Icons.home
                  ,
                 ),
               ),
                Tab(
                 icon: Icon(
                  Icons.home
                  ,
                 ),
               ),
                Tab(
                 icon: Icon(
                  Icons.home
                  ,
                 ),
               )
            ]),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar(
                'sfsdf', 
                'fds',
                snackPosition: SnackPosition.TOP,
                backgroundColor: Colors.red,
                // maxWidth: 100
                // animationDuration: Duration(microseconds: 2000)
                );
            },
            child:const Text(
              'SnackBar'
            ),
        ),
        )
      ),
    );
  }
}