import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:state_management/homework/functions/BottomNavigationApp.dart';
import 'package:state_management/homework/functions/MenuIcon.dart';
import 'package:state_management/homework/functions/Seemre.dart';
import 'package:state_management/homework/functions/appbarSearch.dart';
import 'package:state_management/homework/functions/listproduct.dart';
import 'package:state_management/homework/functions/productSeemore.dart';

class PageSeeMore extends StatelessWidget {
  const PageSeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D6D6),
        body: Column(
          children: [
            appbarSearch(),
            seeMore(),
            Expanded(
              child: Center(
                child: GridView.count( 
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  children: List.generate(listproduct.productlist.length, (index) {
                     var pro=listproduct.productlist[index];
                    return productlist(pro);
                  }),
                  ),
              ),
            ),
          ],
        ),
         bottomNavigationBar: BottomNavigationApp(),
      ),  
    );
  }
}