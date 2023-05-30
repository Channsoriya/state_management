import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:state_management/important/HomeScreenController.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  List<String> listTitle=[
  'Home',
  'Search',
  'Profile',
  'Explore',
  'Piblic'
  ];
    List<IconData> listIcons=[
      Icons.home,
      Icons.search,
      Icons.person,
      Icons.explore,
      Icons.public,
  ];
  //object of home screen controller
  HomeScreenController controller=Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    final mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
      centerTitle: true, 
      backgroundColor: Colors.red,
      title:const Text(
        'Tabbar custom'
      ),
      ),
      body: GetBuilder( //function update
      init: HomeScreenController(),
      builder: (controller) {
        return Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(listTitle.length,(index) {
                  return InkWell(
                    onTap: () {
                      controller.setCurrenIndex(index);
                    },
                    child: Container(
                      margin:const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20, 
                        vertical: 10
                      ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10)
                          ),
                          color: controller.currentIndex==index? Colors.orange:Colors.white,
                        ),
                        child: Text(
                          listTitle[index],
                          style:const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                  );
                },)
              ),
            ),
           Expanded(
             child: Container(
              height: mediaQuery.height,
              width: mediaQuery.width,
              color: Colors.red,
              child: Icon(
               listIcons[controller.currentIndex],
               color: Colors.white,
               size: 300,
              ),
             ),
           )
          ],
        );
      },
      ),
    );
  }
}