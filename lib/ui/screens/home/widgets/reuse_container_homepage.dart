import 'package:b_baria_e_mart/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridContainer extends StatefulWidget {
  const GridContainer({
    Key? key,
    required this.iconPathData,
    required this.title,
  }) : super(key: key);

  final String iconPathData;

  final String title;

  @override
  State<GridContainer> createState() => _GridContainerState();
}

class _GridContainerState extends State<GridContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 118.h,
        width: 101.w,
        decoration: BoxDecoration(
          color: AppColors.appBarColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.iconPathData,
              height: 50.h,
              width: 50.w,
              color: const Color(0xFFB1D7CA),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}