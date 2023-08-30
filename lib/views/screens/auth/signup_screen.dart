import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tiktok_app/controllers/auth_controller.dart';
import 'package:tiktok_app/views/screens/auth/login_screen.dart';

import '../../../colors.dart';
import '../../../constants.dart';
import '../../widgets/text_input_feild.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
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
              colors: const [gradient4, gradient5, gradient6],
            ),
            const SizedBox(height: 25),
            GradientText(
              'Register',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              colors: const [gradient4, gradient5, gradient6],
            ),
            const SizedBox(height: 25),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                    'assets/images/PngItem.png',
                  ),
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () => authController.pickImage(),
                    icon: const Icon(Icons.add_a_photo),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 45, right: 45),
              child: TextInputField(
                  controller: usernameController,
                  labelText: 'Username',
                  iconData: Icons.person),
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 45, right: 45),
              child: TextInputField(
                  controller: emailController,
                  labelText: 'Email',
                  iconData: Icons.email_rounded),
            ),
            const SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 45),
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
              width: MediaQuery.of(context).size.width - 90,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [gradient4, gradient5, gradient6]),
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.registerUser(
                  usernameController.text,
                  emailController.text,
                  passwordController.text,
                  authController.profilePhoto,
                ),
                child: const Center(
                  child: Text(
                    'Register',
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
                  'Already have an account?  ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  ),
                  child: GradientText(
                    'Log in',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    colors: const [gradient1, gradient2, gradient3],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
