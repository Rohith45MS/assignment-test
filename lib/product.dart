import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled4/shope.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  int _currentIndex = 0;

  final List<String> productImages = [
    'asset/image/1-800x800.jpg',
    'asset/image/3-800x800.jpg',
    'asset/image/4-800x800.jpg',
    'asset/image/5-800x800.jpg',
    'asset/image/6-800x800.jpg',
    'asset/image/7-800x800.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
              Row(
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Dealoftheday()));
                    },
                    child: Icon(Icons.arrow_back,
               size: 24,
              color: Color(0xFFB8B8B8),
          ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,top: 20,left: 260),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border,
                            size: 24,
                            color: Color(0xFFB8B8B8),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Icon(Icons.shopping_bag,
                              size: 24,
                              color: Color(0xFFB8B8B8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CarouselSlider(
                  items:  productImages.map(
                        (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                              height: 360, width: 360,
                          ),
                        ),
                      ),
                    ),
                  )
                      .toList(),
                  options: CarouselOptions(
                    height: 360.0,
                    initialPage: 0,
                    autoPlay: true,
                    reverse: false,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    onPageChanged: (index, reason) => _currentIndex = index,
                    // pauseAutoPlayOnTouch: Duration(seconds: 10),
                    // scrollDirection: Axis.horizontal,
                  ),
              ),

              Container(
                width: 360,
                height: 300,
                decoration: ShapeDecoration(
                  color: Color(0xFFF6F6F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                Positioned(
                  top:20,
                  left: 20,
                  child: Text(
                  'Bond Street By RedTape Mens Black\n' 'Walking Shoes',
                  style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  height: 0,
              ),
                  ),
                ),
                    Positioned(
                      top: 70,
                      left: 20,
                      child: Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: 'MRP  ₹5,299.00',
                          style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '   ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '₹',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '1,589.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '( 70% OFF )',
                          style: TextStyle(
                            color: Color(0xFFF61502),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' \n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Inclusive of all taxes\n',
                          style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                  ),
                ),
                    ),
                    Positioned(
                      top: 120,
                      left: 20,
                      child: Text(
                        "Select size (UK Size)",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 14,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 20,
                      child: Text(
                        'Size Chart',
                        style: TextStyle(
                            color: Color(0xFFF61502),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                        ),
                      ),
                    ),

                    Positioned(
                      top: 140,
                      left: 20,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("7",
                              style: TextStyle(
                                  color: Colors.black45
                              )
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 100,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("8",
                            style: TextStyle(
                                color: Colors.black45
                            )),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 180,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("9",
                            style: TextStyle(
                                color: Colors.black45
                            )
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 260,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("10",style: TextStyle(
                          color: Colors.black45
                        ),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF6F6F6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 30,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Text("Wishlist",style: TextStyle(
                                color: Colors.black
                            ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE0DFDF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                                minimumSize: Size(160, 56)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text("Add to bag",style: TextStyle(
                                  color: Colors.white
                              ),),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFF61502),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  minimumSize: Size(160, 56)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

