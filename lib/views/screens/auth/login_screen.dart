import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tiktok_app/constants.dart';
import 'package:tiktok_app/views/screens/auth/signup_screen.dart';
import 'package:tiktok_app/views/widgets/text_input_feild.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              'Tiktok App',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
              colors: const [gradient1, gradient2, gradient3],
            ),
            const SizedBox(height: 25),
            GradientText(
              'Log In',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              colors: const [gradient1, gradient2, gradient3],
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 35, right: 35),
              child: TextInputField(
                  controller: emailController,
                  labelText: 'Email',
                  iconData: Icons.email_rounded),
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: TextInputField(
                controller: passwordController,
                labelText: 'Password',
                iconData: Icons.lock,
                isObscure: true,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              //alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 70,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [gradient1, gradient2, gradient3]),
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.loginUser(
                  emailController.text,
                  passwordController.text,
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?  ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  ),
                  child: GradientText(
                    'Register',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    colors: const [gradient4, gradient5, gradient6],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
