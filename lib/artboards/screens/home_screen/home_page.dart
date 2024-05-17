import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  Widget allNew() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(3),
        width: 1.sw,
        height: 70.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ZoomTapAnimation(
              child: Container(
                width: 0.4.sw,
                height: 65.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(207, 16, 34, 233),
                ),
                child: const Center(
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            ZoomTapAnimation(
              child: Container(
                width: 0.4.sw,
                height: 65.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "New",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: 1.sw,
              height: 150.h,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(50),
                      Row(
                        children: [
                          Text(
                            "Welcome, ",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          Text(
                            "Mangcoding",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Let's schedule your activities",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  ZoomTapAnimation(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Image.asset("assets/icons/bell.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Let's schedule your activities",
                        style: TextStyle(fontSize: 15.sp),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 80.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      children: [
                        ZoomTapAnimation(
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "assets/icons/list2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Gap(5),
                        ZoomTapAnimation(
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            width: 30.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(207, 16, 34, 233),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Image.asset(
                              "assets/icons/list.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/image9.png"),
            ),
            allNew(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/image8.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/image8.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/image8.png"),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Image.asset("assets/images/image8.png"),
            ),
          ],
        ),
      ),
    );
  }
}