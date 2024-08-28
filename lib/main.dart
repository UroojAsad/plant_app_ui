import 'package:flutter/material.dart';
import 'package:our_plants/screen/home/home_screen.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme:  ThemeData(

        scaffoldBackgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
      //   secondary: KprimaryColor,
      //   inversePrimary: KprimaryColor,
      // ),
      textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),

    home: HomeScreen(),
    );
  }
}

