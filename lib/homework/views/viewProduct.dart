import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.share,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                    Stack(
                      children: [
                      const  Icon(
                          Icons.local_mall,
                          size: 40,
                        ),
                        Positioned(
                           top: 0,
                           right : 0,
                          child: Container(
                            height: 20, 
                            width: 25,
                             decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              )
                             ),
                             child:const Center(
                               child: Text(
                                '2',
                                 style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),
                               ),
                             ),
                          ),
                        )
                      ]
                    ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.5,
                color:const Color(0xFFE0E1E1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: List.generate(3, (index) {
                          return Container(
                            margin:const EdgeInsets.all(10),
                             height: 60 ,
                             width: 60 ,
                              decoration:const BoxDecoration(
                                color: Color(0xFFDEE6E6),
                               image: DecorationImage(
                                image: AssetImage('images/clothes/shirt1.jpg'),
                              fit: BoxFit.cover
                              )
                              ),                          
                          );
                        })
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.4, 
                      width: MediaQuery.of(context).size.width*0.7,
                       decoration:const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/clothes/shirt1.jpg'),
                          fit: BoxFit.cover
                        )
                       ),
                    )
                  ],
                ),
              ),
              Row(
                children:const [
                  Icon(
                    Icons.storefront,
                    size: 30,
                  ),
                  Text(
                    'Soriya shop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  )
                ],
              ),
             const Text(
                "Shirts For Men - Buy Men's Shirts Online In Bangladesh At Best Price",
                style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
              ),
              Row(
                children:const [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}