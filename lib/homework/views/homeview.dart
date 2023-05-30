import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management/homework/functions/BottomNavigationApp.dart';
import 'package:state_management/homework/functions/MenuIcon.dart';
import 'package:state_management/homework/functions/Seemre.dart';
import 'package:state_management/homework/functions/appbarSearch.dart';
import 'package:state_management/homework/functions/listproduct.dart';
import 'package:state_management/homework/functions/productSeemore.dart';

class Homeview extends StatelessWidget {
   Homeview({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D6D6),
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
         child: Column(
          children: [
            appbarSearch(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('images/clothes/luxury.jpeg'),
                          fit: BoxFit.fill
                          )
                      ),
                      padding:const EdgeInsets.only(left: 20,top: 30),
                      child: Column(  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '#FASHION DAY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                           Text(
                            '80%OFF',
                            style: GoogleFonts.acme(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const Text(
                            '#FASHION DAY',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),       
             menuIcons(),
            seeMore(),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(listproduct.productlist.length, (index) {
                    var pro=listproduct.productlist[index];
                    return productlist(pro);
                  })
                ),
              )
          ],
         ),
       ),
       bottomNavigationBar: BottomNavigationApp(),
      ),
    );
  }

  
  }
