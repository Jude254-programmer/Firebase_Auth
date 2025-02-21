import 'package:firebase_app/pages/auth_controller.dart';
import 'package:firebase_app/pages/login_page.dart';
import 'package:firebase_app/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: "AIzaSyCLfA9t1Y3NuwBrz0p-OgGS-cROa83r1UI",
              appId: "1:173312195592:android:dffeb7407ee4265d64e5bd",
              messagingSenderId: "173312195592",
              projectId: "my-learning-project-14090"))
      .then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
      routes: {
        '/signup_page': (context) => const SignupPage(),
        '/login_page': (context) => const LoginPage()
      },
    );
  }
}
