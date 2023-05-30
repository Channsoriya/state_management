import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/homework/views/pageSeemore.dart';

  Padding seeMore() {
    return Padding(
            padding: const EdgeInsets.only(right: 8,left: 8,bottom: 15,top: 15),
            child: Row(
              children: [
                const Text(
                  'Best sale Product',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
               const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(const PageSeeMore(),);
                  },
                  child: const Text(
                    'See more',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFDB1D56),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          );
  }