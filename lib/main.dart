import 'package:flutter/material.dart';
import 'package:news_app_ui/pages/details_page.dart';
import 'package:news_app_ui/pages/home_page.dart';
import 'package:news_app_ui/pages/main_page.dart';
import 'package:news_app_ui/pages/trending_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
     initialRoute: "main",
     routes: {
      MainPage.main: (_) => MainPage(),
      'home': (_) => const HomePage(),
      'details': (_) => const DetailsPage()
     },
    );
  }
}

