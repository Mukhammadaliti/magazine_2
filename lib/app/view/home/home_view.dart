import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magazine_2/app/utils/app_colors/app_color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // double _currentSliderValue = 20;
  final List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  int currentPageIndex = 0;
  String? _selectedLocation; // Option 2
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 45,
                  height: 45,
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: const Color(0xffECF0F4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg/menu.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Location"),
                  SizedBox(
                    width: 135,
                    height: 30,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        focusColor: Colors.transparent,
                        hint: const Text(
                            'Halal Lab office'), // Not necessary for Option 1
                        value: _selectedLocation,
                        items: _locations
                            .map((String item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                ))
                            .toList(),
                        onChanged: (String? v) {
                          setState(() {
                            _selectedLocation = v;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/images/avatar2.png")),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,

        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 156,
                      height: 115,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("20",
                              style: TextStyle(
                                color: AppColors.color12,
                                fontSize: 52,
                                fontFamily: "SenRegular",
                                fontWeight: FontWeight.w700,
                              )),
                          Text("Running Orders",
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColors.colorA0,
                                fontFamily: "SenRegular",
                                fontWeight: FontWeight.w700,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 13.4,
                    ),
                    Container(
                      width: 157,
                      height: 115,
                      padding: const EdgeInsets.all(16), //THANK YOU EBRAHIM
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("05",
                              style: TextStyle(
                                  fontSize: 52,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "SenRegular")),
                          Text("Order Request",
                              style: TextStyle(
                                color: AppColors.colorA0,
                                fontFamily: "SenRegular",
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.8,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  width: 327,
                  height: 204,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total Revenue",
                          style: TextStyle(
                            fontFamily: "SenRegular",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("\$2,241",
                          style: TextStyle(
                            fontFamily: "SenRegular",
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 327,
                  height: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Reviews",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "SenRegular",
                                  fontWeight: FontWeight.w400,
                                )),
                            SizedBox(
                              width: 127,
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Color(0xffFB6D3A),
                              ),
                              child: Text("See All Reviews",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    fontFamily: "SenRegular",
                                    fontWeight: FontWeight.w400,
                                  )),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xffFB6D3A),
                            ),
                            Text("4.9",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffFB6D3A),
                                  fontFamily: "SenRegular",
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Total 20 Reviews",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "SenRegular",
                                  fontWeight: FontWeight.w400,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 375,
        height: 89,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.black)),
        child: BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          currentIndex: _bottomNavIndex,
          // unselectedItemColor: Colors.red,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Stores',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ),
      ),
    );
  }
}
