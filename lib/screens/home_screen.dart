import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
          padding: EdgeInsets.fromLTRB(39, 0.8 * kToolbarHeight, 39, 20),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,

            //* BACKGROUND COLORING USING STACK
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(4, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-4, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -1.4),
                  child: Container(
                    height: 220,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent
                    ),
                  ),
                ),
                BackdropFilter(filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                ),
                ),

                //!MAIN CONTENT 
                SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('📍 California Ax Svg',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                      ),
                      ),
                      SizedBox(height: 5),
                      Text('Good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                      ),

                      // Image 1
                      Center(child: Image.asset('assets/1.png', width:280)),

                      // Temperature
                      Center(
                        child: Text('21ºC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ),

                      //Weather condition
                      Center(
                        child: Text('THUNDERSTORM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21.5,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ),

                      //Date
                      SizedBox(height: 5),
                      Center(
                        child: Text('Friday 23 • 09:43am',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.5,
                        ),
                        ),
                      ),

                      SizedBox(height: 25),

                      //! first bottom elements
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Sunrise
                          Row(
                            children: [
                              Image.asset('assets/11.png', scale: 9),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Text('Sunrise',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('5:34 am',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                  )
                                ],
                              )
                            ],
                          ),

                          //Sunset
                          Row(
                            children: [
                              Image.asset('assets/12.png', scale: 9),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Text('Sunset',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('6:45 pm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),

                       // Divider
                          Divider(color: Colors.grey, thickness: 0.6),
                          
                      //! Second bottom elements
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Max Temp
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset('assets/13.png', width: 35),
                              ),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Text('Temp Max',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('12ºC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                  )
                                ],
                              )
                            ],
                          ),

                          //Min Temp
                          Row(
                            children: [
                              Image.asset('assets/14.png', width: 35),
                              SizedBox(width: 5),
                              Column(
                                children: [
                                  Text('Temp Min',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                  ),
                                  SizedBox(height: 3,),
                                  Text('8ºC',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),



                    ],
                  ),
                )

              ],
            ),
          ),
          ),
    );
  }
}
