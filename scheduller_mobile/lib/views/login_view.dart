import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Ini Ceritanya Login',
            style: TextStyle(height: 10, fontSize: 30),
          )
        ],
      ),
    );
  }
}
