import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseHomePage extends StatefulWidget {
  const ReuseHomePage({
    Key? key,
    required this.onPressed,
    required this.appbarTitle,
    required this.bodyItem,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String appbarTitle;
  final Widget Function() bodyItem;

  @override
  State<ReuseHomePage> createState() => _ReuseHomePageState();
}

class _ReuseHomePageState extends State<ReuseHomePage> {
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
                    //color: const Color(0xFFCEFFDE),
                    // color:const Color(0xFFF8FCF9),
                    color: const Color(0xFFEEF2F7),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: widget.bodyItem(), // Call bodyItem as a function
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
