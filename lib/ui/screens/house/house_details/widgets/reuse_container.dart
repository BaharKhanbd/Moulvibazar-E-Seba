import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HouseDetailsContainer extends StatefulWidget {
  const HouseDetailsContainer(
      {Key? key,
      required this.titleOne,
      required this.titleTwo,
      required this.titleThree,
      required this.titleFour,
      required this.titleFive,
      required this.titleSix,
      required this.titleSeven,
      required this.titleEight})
      : super(key: key);

  final String titleOne;
  final String titleTwo;
  final String titleThree;
  final String titleFour;
  final String titleFive;
  final String titleSix;
  final String titleSeven;
  final String titleEight;

  @override
  State<HouseDetailsContainer> createState() => _HouseDetailsContainerState();
}

class _HouseDetailsContainerState extends State<HouseDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h, bottom: 12.w),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 8.h), // Padding for the inner container
          height: 260.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  widget.titleOne,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                'বি: দ্র: ${widget.titleTwo}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'তারিখ: ${widget.titleThree}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'বর্ণনা: ${widget.titleFour}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'বি: দ্র: ${widget.titleFive}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'ঠিকানা: ${widget.titleSix}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'বাসা ভাড়া: ${widget.titleSeven}',
                style: TextStyle(
                  color: const Color(0xFF757575),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter', // Apply the Inter font family
                  fontStyle: FontStyle.normal,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.titleEight,
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter', // Apply the Inter font family
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            color: const Color(0xFFEFFFCE),
                            borderRadius: BorderRadius.circular(2.r)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            "assets/icons/message.svg",
                            height: 24.h,
                            width: 24.w,
                            color: const Color(0xFF46AB67),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Container(
                          height: 32.h,
                          width: 32.w,
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
            ],
          ),
        ));
  }
}
