import 'package:b_baria_e_mart/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseHomePageGridItem extends StatefulWidget {
  const ReuseHomePageGridItem({
    Key? key,
    required this.onPressed,
    required this.appbarTitle,
    required this.bodyItem,
    required this.onPressedTwo, // Add a floatingActionButton parameter
  }) : super(key: key);

  final VoidCallback onPressed;
  final String appbarTitle;
  final Widget Function() bodyItem;
  final VoidCallback?
      onPressedTwo; // Make the floatingActionButton parameter nullable

  @override
  State<ReuseHomePageGridItem> createState() => _ReuseHomePageGridItemState();
}

class _ReuseHomePageGridItemState extends State<ReuseHomePageGridItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF047E55),
                      Color(0xFF46AB67),
                    ],
                  ),
                ),
              ),
              title: Text(
                widget.appbarTitle,
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: widget.onPressed,
              ),
              toolbarHeight: 70.h,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 16.h,
                      left: 16.w,
                      right: 16.w,
                      bottom: 16.h,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            const Color(0xFFEEF2F7), // Using the desired color
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: widget.bodyItem(), // Call bodyItem as a function
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton: Padding(
              padding:  EdgeInsets.only(bottom: 16.h,right: 16.w),
              child: FloatingActionButton(
                backgroundColor: AppColors.appBarColor,
                onPressed: widget.onPressedTwo,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            )));
  }
}
