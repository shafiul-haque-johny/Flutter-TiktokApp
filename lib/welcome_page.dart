import 'package:flutter/material.dart';

import 'views/screens/auth/login_screen.dart';
import 'views/screens/auth/signup_screen.dart';
import 'views/widgets/gradient_button.dart';

import 'colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Image.asset('assets/images/signin_balls.png'),
              const SizedBox(height: 85),
              const Icon(
                Icons.tiktok_outlined,
                size: 60,
                color: gradient8,
              ),
              const SizedBox(height: 25),
              RichText(
                text: const TextSpan(
                  text: "T",
                  style: TextStyle(fontSize: 50, color: t1Color),
                  children: [
                    TextSpan(
                      text: 'I',
                      style: TextStyle(fontSize: 50, color: t2Color),
                    ),
                    TextSpan(
                      text: 'K',
                      style: TextStyle(fontSize: 50, color: t3Color),
                    ),
                    TextSpan(
                      text: 'T',
                      style: TextStyle(fontSize: 50, color: t4Color),
                    ),
                    TextSpan(
                      text: 'O',
                      style: TextStyle(fontSize: 50, color: t5Color),
                    ),
                    TextSpan(
                      text: 'K  ',
                      style: TextStyle(fontSize: 50, color: t6Color),
                    ),
                    TextSpan(
                      text: 'A',
                      style: TextStyle(fontSize: 50, color: t7Color),
                    ),
                    TextSpan(
                      text: 'P',
                      style: TextStyle(fontSize: 50, color: t8Color),
                    ),
                    TextSpan(
                      text: 'P',
                      style: TextStyle(fontSize: 50, color: t9Color),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Welcome to your favorite tiktok app. Have a nice day!',
                style: TextStyle(
                  fontSize: 17,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 45),
              GradientButton(
                text: 'Sign In',
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LogInScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              GradientButton(
                text: 'Register',
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
