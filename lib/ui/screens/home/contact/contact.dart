import 'package:b_baria_e_mart/ui/screens/home/contact/widgets/reuse_textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16.h, right: 16.w, left: 16.w),
              child: Text(
                "নিম্নোক্ত তথ্যগুলো এই অ্যাপস এর আপডেটের জন্য চাওয়া হচ্ছে তাই আপনার কাছে যে তথ্য আছে তা দিয়ে আমাদের সাহায্য করুন।",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const ReuseTextFromField(
            titleTextfromField:
                "হাসপাতাল এবং ডেন্টাল ক্লিনিক এর নাম ঠিকানা, ফোন, নাম্বার দিন।",
          ),
          const ReuseTextFromField(
            titleTextfromField:
                "আইনজীবী ও সাংবাদিকের নাম, ঠিকানা, নাম্বার দিন।",
          ),
          const ReuseTextFromField(
            titleTextfromField:
                "অ্যাপ রিলেটেড যে কোন তথ্য অথবা কোন পরামর্শ থাকলে লিখুন।",
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0.h, bottom: 12.0.h),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 93.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF047E55),
                      Color(0xFF46AB67),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white, // Text color white
                        fontFamily: 'Roboto',
                        fontSize: 14.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        height: 1.5, // Line height 150%
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
