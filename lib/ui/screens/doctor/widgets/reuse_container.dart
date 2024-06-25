

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class DoctorGridContainer extends StatefulWidget {
  const DoctorGridContainer({
    Key? key,
    required this.iconPathData,
    required this.title,
  }) : super(key: key);

  final String iconPathData;

  final String title;

  @override
  State<DoctorGridContainer> createState() => _DoctorGridContainerState();
}

class _DoctorGridContainerState extends State<DoctorGridContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 140.h,
        width: 130.w,
       decoration: BoxDecoration(
          color: const Color(0xFFECFFF2),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 20.r,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SvgPicture.asset(
                widget.iconPathData,
                height: 50.h,
                width: 50.w,
              ),
            // SizedBox(
            //   height: 6.h,
            // ),
            Padding(
              padding:  EdgeInsets.only(left: 16.w,right: 16.w,top: 16),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
