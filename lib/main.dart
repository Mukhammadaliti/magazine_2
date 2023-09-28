import 'package:flutter/material.dart';
import 'package:magazine_2/app/view/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xffE8EAED),
        appBarTheme:
            const AppBarTheme(backgroundColor: Color(0xff0C222F), elevation: 0),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
//
