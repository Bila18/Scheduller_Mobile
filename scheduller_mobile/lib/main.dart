import 'package:flutter/material.dart';
import 'package:scheduller_mobile/views/main_screen.dart';
import 'package:scheduller_mobile/views/on_boarding_view.dart';
import 'views/home_view.dart';
import 'views/login_view.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/': (context) => const MainScreen(),
        '/onBoarding': (context) => const OnBoardingView(),
        '/login': (context) => const LoginView(),
        '/home': (context) => const HomeView(),
      },
    );
  }
}
