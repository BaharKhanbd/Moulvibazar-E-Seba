import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReuseTextFromField extends StatelessWidget {
  final String titleTextfromField;
  
  const ReuseTextFromField(
      {super.key,
      required this.titleTextfromField,
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleTextfromField,
                style: TextStyle(
                  color: const Color(0xFF4E5668),
                  fontFamily: 'Roboto',
                  fontSize: 14.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "তথ্য লিখুন",
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 16.0.h,
                        horizontal: 16.0.w), 
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(8.0.r), 
                      borderSide: BorderSide(
                        color: const Color(0xFF4F8DEB), 
                        width: 1.0.w, 
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(8.0.r), // Border radius of 8px
                      borderSide: BorderSide(
                        color: Colors.green, 
                        width: 1.0.w,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF5F7FA), 
                  ),
                ),
              )
            ],
          ),
         
        ],
      ),
    );
  }
}
