import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:state_management/homework/functions/listproduct.dart';
import 'package:state_management/homework/views/pageSeemore.dart';
import 'package:state_management/homework/views/viewProduct.dart';
  Stack productlist(listproduct pro) {
    return Stack(
              children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: InkWell(
                      onTap: () {
                        Get.to(const ViewProduct());
                      },
                      child: Container(
                      height: 310, 
                      width: 200, 
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity, 
                            height: 190,
                           decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(pro.image),
                              fit: BoxFit.cover
                              ),
                            borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),                              
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8,top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:const [
                                Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30,
                              shadows: [
                                Shadow(
                                  blurRadius: 50,
                                  color: Colors.black, 
                                )
                              ],
                            ),
                              ],
                            ),
                          )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      Container(
                                           height: 70, 
                                           width: double.infinity,
                                           color: Colors.white,
                                           child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                             Text(
                                              pro.name,
                                              style:const TextStyle(
                                                fontSize: 15,
                                              ),
                                              ),
                                                Expanded(
                                                  child: Text(
                                                      pro.discretion,
                                                      style:const TextStyle(
                                                        fontSize: 19,
                                                        fontWeight: FontWeight.bold
                                                        ),
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                )
                                            ]
                                           ),
                                      ),
                                      const SizedBox(
                                        height: 0,
                                       ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                         RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                           allowHalfRating: true,
                                           itemCount: 1,
                                           itemPadding:const EdgeInsets.symmetric(horizontal: 1.0),
                                           // ignore: prefer_const_constructors
                                           itemBuilder: (context, _) => Icon(
                                           Icons.star,
                                           color: Colors.amber,
                                             ),
                                            onRatingUpdate: (rating) {
                                           print(rating);
                                         },
                                        ),
                                           Text(
                                            pro.price,
                                            style:const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF1A4FC2)
                                            ),
                                          )
                                    ],
                               )
                              ],
                            ),
                          )
                        ],
                      ),
                      ),
                    ),
                  ),  
              ]
            );
  }