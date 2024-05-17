import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may17/artboards/screens/welcome_screen/welcome_page.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

List<Map<String, dynamic>> dataBase = [];

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  String errorMessageName = "";

  final emailController = TextEditingController();
  String errorMessageEmail = "";

  final passwordController = TextEditingController();
  String errorMessagePassword = "";

  final passwordController2 = TextEditingController();
  String errorMessagePassword2 = "";

  void showMessage() async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  width: 100.w,
                  height: 108.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Icon(
                    Icons.check,
                    color: const Color.fromARGB(255, 19, 108, 216),
                    size: 40.sp,
                  ),
                ),
                const Gap(30),
                Text(
                  "Your account has active",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Text(
                  "Congratulation you are succes to change",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14.sp,
                  ),
                ),
                const Gap(10),
                Center(
                  child: Text(
                    "your profile",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                const Gap(30),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: ZoomTapAnimation(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ));
                    });
                  },
                  child: Container(
                    width: 1.sw,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 108, 216),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Create your account for your schedule",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey.shade500,
                ),
              ),
              const Gap(20),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorStyle: const TextStyle(color: Colors.red),
                  prefixIcon: Icon(
                    Icons.perm_identity,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Your name",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  errorText: errorMessageName.isEmpty ? null : errorMessageName,
                ),
              ),
              const Gap(20),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorStyle: const TextStyle(color: Colors.red),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Your Email",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  errorText:
                      errorMessageEmail.isEmpty ? null : errorMessageEmail,
                ),
              ),
              const Gap(20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // hintText: "Email Address",
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  errorText: errorMessagePassword.isEmpty
                      ? null
                      : errorMessagePassword,
                ),
              ),
              const Gap(20),
              TextField(
                controller: passwordController2,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // hintText: "Email Address",
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.grey.shade500,
                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  errorText: errorMessagePassword2.isEmpty
                      ? null
                      : errorMessagePassword2,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You have an account? ",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {});
                    },
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Sign in here",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(100),
              ZoomTapAnimation(
                onTap: () {
                  if (emailController.text.isEmpty) {
                    setState(() {
                      errorMessageEmail = "Iltimos Emailni kiriting!";
                    });
                  }
                  if (passwordController.text.isEmpty) {
                    setState(() {
                      errorMessagePassword = "Iltimos Passwordni kiriting!";
                    });
                  }
                  if (nameController.text.isEmpty) {
                    setState(() {
                      errorMessageName = "Iltimos Name kiriting!";
                    });
                  }
                  if (passwordController2.text.isEmpty) {
                    setState(() {
                      errorMessagePassword2 = "Iltimos Password 2 ni kiriting!";
                    });
                  }
                  if (emailController.text.contains("@") &&
                      emailController.text.length > 10 &&
                      passwordController.text.length > 8) {
                    if (errorMessageEmail.isEmpty &&
                        errorMessagePassword.isEmpty) {
                      dataBase.add({"email": emailController.text, "password": passwordController.text});
                      setState(() {
                        showMessage();
                      });
                    }
                  }

                  if (!emailController.text.contains("@")) {
                    setState(() {
                      errorMessageEmail = "Emailni to'g'ri kiriting!";
                    });
                  }
                  if (passwordController.text.length < 8) {
                    setState(() {
                      errorMessagePassword =
                          "Paro'l 8 ta belgidan ko'p bo'lishi shart";
                    });
                  } else {
                    errorMessageEmail = "";
                    errorMessagePassword = "";
                  }
                },
                child: Container(
                  width: 1.sw,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 108, 216),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Center(
                child: Column(
                  children: [
                    Text(
                      "By continuing.You agree to Loana's ",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16.sp,
                      ),
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ZoomTapAnimation(
                          child: Text(
                            "Terms of Use",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Text(
                          "  &  ",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        ZoomTapAnimation(
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
