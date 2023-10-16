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
  final List<double> weekly = [
    4.05,
    10.5,
    22.6,
    33.9,
    50.86,
    78.6,
    96.78,
    100.69,
  ];
  String? _selectedLocation; // Option 2
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 45,
                  height: 45,
                  padding: const EdgeInsets.all(10),
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
                  const Text(
                    "Location",
                    style: TextStyle(
                      color: Color(0xFFFC6E2A),
                      fontFamily: "SenRegular",
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 148,
                    height: 30,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        focusColor: Colors.transparent,
                        hint: const Text("Halal Lab office",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
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
            padding: const EdgeInsets.all(18.0),
            child: GestureDetector(
              child: const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/avatar2.png")),
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 156,
                    height: 115,
                    padding: const EdgeInsets.all(12),
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
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("05",
                            style: TextStyle(
                                fontSize: 52,
                                color: Colors.black,
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
              const SizedBox(
                height: 16.8,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                width: 327,
                height: 204,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Revenue",
                        style: TextStyle(
                          fontFamily: "SenRegular",
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        )),
                    Text("\$2,241",
                        style: TextStyle(
                          fontFamily: "SenRegular",
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: 327,
                height: 94.1760025024414,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Reviews",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: "SenRegular",
                            fontWeight: FontWeight.w400,
                          )),
                      TextButton(
                        style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                          Color(0xFFFC6E2A),
                        )),
                        onPressed: () {},
                        child: const Text("See All Reviews",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              fontFamily: "SenRegular",
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFC6E2A),
                        size: 30,
                      ),
                      Text("⭐4.9",
                          style: TextStyle(
                            fontSize: 21.799999237060547,
                            fontFamily: "SenRegular",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFC6E2A),
                          )),
                      Text("Total 20 Reviews",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SenRegular",
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
