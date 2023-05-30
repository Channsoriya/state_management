import 'package:flutter/material.dart';

  Padding appbarSearch() {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30)
                        ),
                        borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0
                        )
                      ),
                      filled: true,
                      fillColor: Color(0xFFF7F3F3)
                    ), 
                  ),
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
                 const SizedBox(
                    width: 20,
                ),
                Stack(
                  children: [
                    const Icon(
                      Icons.comment,
                      size: 40,
                    ),
                    Positioned(
                       top: 0,
                       right: 0,
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
                            '9+',
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
              
            ),
          );
  }

