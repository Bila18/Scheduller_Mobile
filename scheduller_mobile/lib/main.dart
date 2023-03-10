import 'package:flutter/material.dart';
import 'package:scheduller_mobile/views/on_boarding_view.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scheduller Mobile',
      routes: {
        '/': (context) => const OnBoardingView(),
        '/login': (context) => const LoginView(),
        '/home': (context) => const HomeView(),
      },
    );
  }
}
