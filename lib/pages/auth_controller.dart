import 'package:firebase_app/pages/login_page.dart';
import 'package:firebase_app/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //AuthController.instance...
  static AuthController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user will be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print('login page');
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage(email:user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User message",
        backgroundColor: Colors.blue,
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(
          Icons.close_rounded,
          color: Colors.red,
        ),
        titleText: Text(
          "Account creation failed",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User message",
        backgroundColor: Colors.blue,
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(
          Icons.close_rounded,
          color: Colors.red,
        ),
        titleText: Text(
          "login failed",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  void logOut() async{
    await auth.signOut();
  }
}
