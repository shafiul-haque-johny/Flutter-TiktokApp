import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_app/controllers/auth_controller.dart';
import 'package:tiktok_app/web_config.dart';
import 'package:tiktok_app/welcome_page.dart';

import 'colors.dart';

final configurations = Configurations();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: configurations.apiKey,
      authDomain: configurations.authDomain,
      projectId: configurations.projectId,
      storageBucket: configurations.storageBucket,
      messagingSenderId: configurations.messagingSenderId,
      appId: configurations.appId,
    ),
  ).then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiktok App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const WelcomeScreen(),
    );
  }
}
