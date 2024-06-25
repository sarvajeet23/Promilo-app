import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promiloapp/routes/route_management.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isChecked = false.obs;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    } else if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*[0-9])').hasMatch(value)) {
      return 'Password must contain(alphanumeric,like this Test@1)';
    }
    return null;
  }

  void toggleRememberMe(bool? value) {
    isChecked.value = value ?? false;
  }

  void login() {
    if (formKey.currentState?.validate() ?? false) {
      RouteManagement.goToLoginPage();
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
