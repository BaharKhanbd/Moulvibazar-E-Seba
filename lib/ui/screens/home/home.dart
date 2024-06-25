import 'package:b_baria_e_mart/config/colors.dart';
import 'package:b_baria_e_mart/data/source/griddata.dart';

import 'package:b_baria_e_mart/ui/screens/home/Developer/developer.dart';
import 'package:b_baria_e_mart/ui/screens/home/about/about.dart';
import 'package:b_baria_e_mart/ui/screens/home/contact/contact.dart';
import 'package:b_baria_e_mart/ui/screens/home/widgets/reuse_container_homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/1.jpg'},
    {"id": 2, "image_path": 'assets/images/2.jpg'},
    {"id": 3, "image_path": 'assets/images/3.jpg'},
    {"id": 4, "image_path": 'assets/images/4.jpg'},
    {"id": 5, "image_path": 'assets/images/5.jpg'},
    {"id": 6, "image_path": 'assets/images/6.jpg'},
    {"id": 7, "image_path": 'assets/images/7.jpg'},
    {"id": 8, "image_path": 'assets/images/8.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            height: 60.0.h,
            items: <Widget>[
              SvgPicture.asset(
                "assets/icons/home.svg",
                height: 32.h,
                width: 32.w,
                color: AppColors.appBarColor,
              ),
              SvgPicture.asset(
                "assets/icons/contact.svg",
                height: 32.h,
                width: 32.w,
                color: Colors.grey,
              ),
              SvgPicture.asset(
                "assets/icons/districric.svg",
                height: 32.h,
                width: 32.w,
                color: Colors.grey,
              ),
              SvgPicture.asset(
                "assets/icons/developer.svg",
                height: 32.h,
                width: 32.w,
                color: Colors.grey,
              ),
            ],
            color: AppColors.white,
            buttonBackgroundColor: AppColors.white,
            backgroundColor: const Color.fromARGB(255, 221, 223, 226),
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
          body: Column(
            children: [
              Container(
                height: 100.h,
                width: 360.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xFF46AB67),
                      Color(0xFF047E55),
                    ],
                   // stops: [0.0, 1.0],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16.w, right: 16.w, top: 16.h, bottom: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "মৌলভীবাজার ই-সেবা",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "জরুরী সেবায় নিয়োজিত",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "জরুরী সেবা",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "৯৯৯",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.w,
                            ),
                            child: Container(
                              height: 36.h,
                              width: 36.w,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFCEFFDE),
                                  borderRadius: BorderRadius.circular(2.r)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SvgPicture.asset(
                                  "assets/icons/call.svg",
                                  height: 24.h,
                                  width: 24.w,
                                  color: const Color(0xFF46AB67),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //end container
              Expanded(
                child: IndexedStack(
                  index: _page,
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CarouselSlider(
                                items: imageList
                                    .map(
                                      (item) => Image.asset(
                                        item['image_path'],
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    )
                                    .toList(),
                                carouselController: carouselController,
                                options: CarouselOptions(
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  autoPlay: true,
                                  aspectRatio: 2,
                                  viewportFraction: 2.0.h,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20.h,
                              left: 0.w,
                              right: 0.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    imageList.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () => carouselController
                                        .animateToPage(entry.key),
                                    child: Container(
                                      width: currentIndex == entry.key
                                          ? 17.w
                                          : 7.w,
                                      height: 7.0.h,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 3.0.w,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          color: currentIndex == entry.key
                                              ? Colors.green
                                              : Colors.grey),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        //end stack
                        Expanded(
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: gridlist.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () => Get.to(screenList[index]),
                                  child: GridContainer(
                                    iconPathData: gridlist[index].iconPath,
                                    title: gridlist[index].text,
                                  ),
                                );
                              })),
                        ),
                      ],
                    ),
                    // End
                    const ContactPage(),
                    // Widget for the Home Work page
                    const AboutPage(),
                    // Widget for the Person page
                    const DeveloperPage(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
