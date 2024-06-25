import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promiloapp/modules/auth/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
        child: SingleChildScrollView(
          reverse: true,
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Text(
                  'promilo',
                  style: TextStyle(fontSize: 25),
                )),
                const SizedBox(height: 30),
                const Center(
                  child:
                      Text('Hi, Welcome Back!', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Please Sign in to Continue",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                TextFormField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    hintText: "Email Id & Mob No.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: controller.validateEmail,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text("Sign With OTP")),
                  ],
                ),
                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: controller.validatePassword,
                  obscureText: true,
                ),
                Row(
                  children: [
                    Obx(() => Checkbox(
                          value: controller.isChecked.value,
                          onChanged: controller.toggleRememberMe,
                        )),
                    const Text(
                      "Remember Me",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ),
                    foregroundColor: Theme.of(context).canvasColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: controller.login,
                  child: const Text("Submit"),
                ),
                const SizedBox(height: 50),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(thickness: 1, color: Colors.black12)),
                    Text("  or  "),
                    Expanded(
                        child: Divider(thickness: 1, color: Colors.black12)),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/google.png",
                      scale: 22,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "images/linkdin.png",
                      scale: 15,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "images/ins.png",
                      scale: 22,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      "images/whatapp.png",
                      scale: 14,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "Business User?",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Text(
                            "Don't have an account",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Login Here",
                            style: TextStyle(
                                fontSize: 17, color: Colors.blueAccent),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 17, color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: 240,
                        height: 50,
                        child: RichText(
                          text: const TextSpan(
                            text: 'By continuing, you agree to ',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Promilo\'s ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Use & Privacy Policy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
