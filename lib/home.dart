import 'package:flutter/material.dart';
import 'package:untitled4/shope.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
      child: Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  width: 84,
                    height: 21,
                    child: Image.asset('asset/image/logo.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 212.0),
                  child: Icon(Icons.location_on_outlined,
                    size: 24,
                    color: Color(0xFFB8B8B8),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.notifications_none,
                    size: 24,
                    color: Color(0xFFB8B8B8),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            height: 210,
            decoration: BoxDecoration(color: Color(0xFFB8B8B8)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    left: 24,
                    right: 24,
                  ),
                  child: SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF6F6F6),
                        hintText: "Search your needs here...",
                        hintStyle: TextStyle(
                          color: Color(0xFF9B9999),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              child: Image.asset('asset/image/men.png'),
                              radius: 40,
                            ),
                            Text("Men",style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),)
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset('asset/image/women.png'),
                                radius: 40,
                              ),
                              Text("Women",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset('asset/image/kids.png'),
                                radius: 40,
                              ),
                              Text("Kids",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset('asset/image/acess.png'),
                                radius: 40,
                              ),
                              Text("Accessories ",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.wallet_giftcard_outlined,
                                size: 40,),
                                radius: 40,
                                backgroundColor: Colors.white,
                              ),
                              Text("Gift",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 12),
                          child: Column(
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.discount_sharp,
                                  size: 40,),
                                radius: 40,
                                backgroundColor: Colors.white,
                              ),
                              Text("Sale",style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Image.asset('asset/image/banner.png'),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 24),
                child: SizedBox(
                  width: 196,
                  height: 21,
                  child: Text(
                    'Best Seller',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 24.0,right: 20,left: 80),
                child: TextButton(onPressed: (){},
                    child: Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                              child: Image.asset('asset/image/6.png'),
                          ),
                          Positioned(
                            left: 8,
                            top: 170,
                            child: Text(
                              'Red tape men’s blue \n''full sleeves shirt',
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
                              child: Image.asset('asset/image/Rectangle 4.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'Red tape ladies\n' 'black bag ',
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
                                '₹ 499',
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
                              child: Image.asset('asset/image/Group 34.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'Red tape men’s \n' 'running shoes',
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
                              child: Image.asset('asset/image/10.1.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'Red Tape Womens \n' 'Clogs and Mules',
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
                  ),
                  Container(
                    width: 20,
                    height: 240,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 355,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      child: Stack(
                        children: [
                          Image.asset('asset/image/56.png'),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Flat 50% \n''off',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w900,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        child: Stack(
                          children: [
                            Image.asset('asset/image/57.png'),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Under \n''999',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        child: Stack(
                          children: [
                            Image.asset('asset/image/58.png'),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Under \n''1999',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),



          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 24),
                child: SizedBox(
                  width: 196,
                  height: 21,
                  child: Text(
                    'Deal of the day',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 24.0,right: 20,left: 80),
                child: TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Dealoftheday()));
                },
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 14,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                        )
                    ),
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
                              child: Image.asset('asset/image/5.png'),
                            ),
                            Positioned(
                              left: 8,
                              top: 170,
                              child: Text(
                                'Red Tape Womens \n' 'Cloth',
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
                                '₹ 1099',
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
                  Container(
                    width: 20,
                    height: 240,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              width: 410,
              height: 294,
              child: Stack(
                children: [
                  Image.asset('asset/image/Group 37.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 110,
                          height: 40,
                          child: Image.asset('asset/image/last.png')),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'THE REDTAPE SUPERSTARS\n#RedTapeSuperstar\n#ImwithRed\n@Redtape\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 190.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 110,
                          height: 40,
                          child: Image.asset('asset/image/SeekPng 1.png')),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 240.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: OutlinedButton(
                        onPressed: (){},
                          child: Text(
                            'View Gallery ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            width: 400,
            height: 40,
            color: Colors.white,
          ),

              ],
            ),


    )
      )
    );
  }
}
