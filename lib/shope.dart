import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:untitled4/product.dart';

import 'Home.dart';

class Dealoftheday extends StatefulWidget {
  const Dealoftheday({super.key});

  @override
  State<Dealoftheday> createState() => _DealofthedayState();
}

class _DealofthedayState extends State<Dealoftheday> {

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      if(Platform.isAndroid){
        await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
      }
    });

    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>homepage()));
              },
              child: Icon(Icons.arrow_back,
                size: 24,
                color: Color(0xFFB8B8B8),
              ),
            ),
            title: Text(
              'Deal of the day',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35),
                child: Row(
                  children: [
                    Container(
                        width: 150,
                        height: 240,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset('asset/image/1.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'men’s full sleeves\n' 'check shirt ',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              left: 8,
                              top: 209,
                              child: Text(
                                '₹ 1499',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              top: 212,
                              left: 60,
                              child: Text(
                                '15%off',
                                style: TextStyle(
                                  color: Color(0xFFF8312F),
                                  fontSize: 10,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              right: 10,
                              top: 188,
                              child: Icon(Icons.favorite_border,
                                size: 16,
                                color: Color(0xFFB8B8B8),
                              ),
                            ),

                            Positioned(
                              right: 8,
                              top: 210,
                              child: Icon(Icons.add_shopping_cart,
                                size: 24,
                                color: Color(0xFFB8B8B8),
                              ),
                            ),
                          ],
                        )
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                          width: 150,
                          height: 240,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>Products()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.asset('asset/image/2.png'),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 170,
                                  child: Text(
                                    'RedTape Mens Black \n''Walking Shoes ',
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 8,
                                  top: 209,
                                  child: Text(
                                    '₹ 999',
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 212,
                                  left: 60,
                                  child: Text(
                                    '15%off',
                                    style: TextStyle(
                                      color: Color(0xFFF8312F),
                                      fontSize: 10,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  right: 10,
                                  top: 188,
                                  child: Icon(Icons.favorite_border,
                                    size: 16,
                                    color: Color(0xFFB8B8B8),
                                  ),
                                ),

                                Positioned(
                                  right: 8,
                                  top: 210,
                                  child: Icon(Icons.add_shopping_cart,
                                    size: 24,
                                    color: Color(0xFFB8B8B8),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 35),
                child: Row(
                  children: [
                    Container(
                        width: 150,
                        height: 240,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset('asset/image/Group 34.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'Red tape mens \n' 'running shoes',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              left: 8,
                              top: 209,
                              child: Text(
                                '₹ 1499',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              top: 212,
                              left: 60,
                              child: Text(
                                '15%off',
                                style: TextStyle(
                                  color: Color(0xFFF8312F),
                                  fontSize: 10,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),

                            Positioned(
                              right: 10,
                              top: 188,
                              child: Icon(Icons.favorite_border,
                                size: 16,
                                color: Color(0xFFB8B8B8),
                              ),
                            ),

                            Positioned(
                              right: 8,
                              top: 210,
                              child: Icon(Icons.add_shopping_cart,
                                size: 24,
                                color: Color(0xFFB8B8B8),
                              ),
                            ),
                          ],
                        )
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                          width: 150,
                          height: 240,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset('asset/image/4.png'),
                              ),
                              Positioned(
                                left: 8,
                                top: 170,
                                child: Text(
                                  'Red Tape Womens\n' 'Cloth',
                                  style: TextStyle(
                                    color: Color(0xFF1E1E1E),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),

                              Positioned(
                                left: 8,
                                top: 209,
                                child: Text(
                                  '₹ 999',
                                  style: TextStyle(
                                    color: Color(0xFF1E1E1E),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 212,
                                left: 60,
                                child: Text(
                                  '15%off',
                                  style: TextStyle(
                                    color: Color(0xFFF8312F),
                                    fontSize: 10,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),

                              Positioned(
                                right: 10,
                                top: 188,
                                child: Icon(Icons.favorite_border,
                                  size: 16,
                                  color: Color(0xFFB8B8B8),
                                ),
                              ),

                              Positioned(
                                right: 8,
                                top: 210,
                                child: Icon(Icons.add_shopping_cart,
                                  size: 24,
                                  color: Color(0xFFB8B8B8),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 280),
                child: Container(
                  height: 56.0,
                  width: 56.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      backgroundColor: Color(0xFFF8312F),
                        onPressed: () {},
                      child: Icon(Icons.camera_alt_outlined,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
