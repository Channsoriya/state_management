import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management/homework/functions/iconslist.dart';


  SingleChildScrollView menuIcons() {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
               children: List.generate(listicons.iconslist.length, (index) {
                var data=listicons.iconslist[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 30,bottom: 10),
                  child: Column(
                     children: [
                      Container(
                        height: 50, 
                        width: 50, 
                        decoration: BoxDecoration(
                          color:const Color(0xFFC7C2C2).withOpacity(0.5),
                          borderRadius:const BorderRadius.all(
                            Radius.circular(10)
                          )
                        ),
                        child: Icon(
                          data.icon,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                     
                      Text(
                         data.title,
                         style: GoogleFonts.alef(
                          fontSize: 15
                         ),
                      )
                     ],
                   ),
                );
               })
            ),
          ),
        );
  }
  