import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseContainerHousePage extends StatelessWidget {
  const ReuseContainerHousePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
       
        width: 360.w,
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
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
