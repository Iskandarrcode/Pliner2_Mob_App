import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:may17/artboards/screens/home_screen/home_page.dart';
import 'package:may17/artboards/screens/register_screen/register_page.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  String errorMessageEmail = "";

  final passwordController = TextEditingController();
  String errorMessagePassword = "";
  String errorPassword = "";
  Color colorErrorPasword = Colors.grey.shade600;

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
                "Welcome back",
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Let's Login to Connect your email",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey.shade500,
                ),
              ),
              const Gap(20),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
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
                    "name@example.com",
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
              Text(
                errorPassword,
                style: TextStyle(
                  color: colorErrorPasword,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RegisterScreen();
                          },
                        ));
                      });
                    },
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Sign up here",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(150),
              ZoomTapAnimation(
                onTap: () {
                  if (emailController.text.isEmpty) {
                    errorMessageEmail = "Iltimos Emailni kiriting!";
                  }
                  if (passwordController.text.isEmpty) {
                    errorMessagePassword = "Iltimos Passwordni kiriting!";
                  } else {
                    errorMessageEmail = "";
                    errorMessagePassword = "";
                  }
                  bool isUserFound = false;
                  bool isPasswordTrue = false;
                  for (var i in dataBase) {
                    if (i["email"] == emailController.text) {
                      isUserFound = true;
                      if (i["password"] == passwordController.text) {
                        isPasswordTrue = true;
                      }
                    }
                  }

                  if (!isUserFound) {
                    errorMessageEmail = "Bunday foydalanuvchi topilmadi!";
                    colorErrorPasword = Colors.red;
                  } else if (!isPasswordTrue) {
                    errorMessagePassword = "Parol noto'g'ri";
                    colorErrorPasword = Colors.red;
                  }
                  if (isUserFound == true && isPasswordTrue == true) {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const HomePageScreen();
                        },
                      ));
                    });
                  }
                  setState(() {});
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
                      "Log in",
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ZoomTapAnimation(
                    child: Container(
                      width: 0.4.sw,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(88, 190, 190, 190),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/icon2.png",
                            height: 30.h,
                            width: 30.w,
                          ),
                          const Gap(10),
                          Text(
                            "Apple",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ZoomTapAnimation(
                    child: Container(
                      width: 0.4.sw,
                      height: 60.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(88, 190, 190, 190),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/icon1.png",
                            height: 30.h,
                            width: 30.w,
                          ),
                          const Gap(10),
                          Text(
                            "Google",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(15),
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
                            "Terms of Use",
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
