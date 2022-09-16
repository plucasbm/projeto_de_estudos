import 'package:flutter/material.dart';
import 'package:projeto_1/views/details_page.dart';
import 'package:projeto_1/views/home_page.dart';
import 'package:projeto_1/views/login_page.dart';
import 'package:projeto_1/views/splah_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/details': (_) => const DetailsPage(),
      },
      initialRoute: '/splash',
    );
  }
}

