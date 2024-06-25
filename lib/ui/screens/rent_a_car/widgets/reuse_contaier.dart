import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReuseContainerRentaCarPage extends StatefulWidget {
  const ReuseContainerRentaCarPage(
      {Key? key,
      required this.titleOne,
      required this.titleTwo,
      required this.titleThree})
      : super(key: key);

  final String titleOne;
  final String titleTwo;
  final String titleThree;

  @override
  State<ReuseContainerRentaCarPage> createState() =>
      _ReuseContainerRentaCarPageState();
}

class _ReuseContainerRentaCarPageState extends State<ReuseContainerRentaCarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h, bottom: 12.w),
        child: Container(
           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h), // Padding for the inner container
            height: 100.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.titleOne,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    widget.titleTwo,
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
                        widget.titleThree,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
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
                ])));
  }
}
