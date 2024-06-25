import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BusReuseContainer extends StatefulWidget {
  const BusReuseContainer({
    Key? key,
    required this.imagepathbus,
    required this.titleBusName,
    required this.arrowIcon,
  }) : super(key: key);

  final String imagepathbus;
  final String titleBusName;
  final String arrowIcon;

  @override
  State<BusReuseContainer> createState() => _BusReuseContainerState();
}

class _BusReuseContainerState extends State<BusReuseContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 12.h, ),
        child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h), // Padding for the inner container
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: const Color(0xFFF0F0F0), width: 1),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            image: DecorationImage(
                                image: AssetImage(
                              widget.imagepathbus,
                            ))),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        widget.titleBusName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter', // Apply the Inter font family
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 32.h,
                    width: 32.w,
                    decoration: BoxDecoration(
                        // color: const Color(0xFFCEFFDE),
                        borderRadius: BorderRadius.circular(2.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(
                        widget.arrowIcon,
                        height: 24.h,
                        width: 24.w,
                        color: const Color(0xFFE4E4E4),
                      ),
                    ),
                  ),
                ])));
  }
}
