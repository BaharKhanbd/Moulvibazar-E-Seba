import 'package:b_baria_e_mart/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpHouseSreen extends StatefulWidget {
  const PopUpHouseSreen({super.key});

  @override
  State<PopUpHouseSreen> createState() => _PopUpHouseSreenState();
}

class _PopUpHouseSreenState extends State<PopUpHouseSreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.r),
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Text(
                  "বাসা ভাড়া দেওয়ার জন্য প্রয়োজনীয় তথ্যাবলী দিয়ে ফরমটি পূরণ করুন",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনি কি ধরনের বাসা / ঘর ভাড়া দিতে চান?',
                  prefixIcon: const Icon(Icons.person),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনার বাসা কোন ধরনের ফ্যামিলির জন্য',
                  prefixIcon: const Icon(Icons.policy),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: ' আপনার বাসার/ঘরের বিবরন দেন',
                  prefixIcon: const Icon(Icons.location_city),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'বিদ্যুৎ, গ্যাস বিল কি আপনি বহন করবেন',
                  prefixIcon: const Icon(Icons.location_city),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'ঠিকানা লিখুন',
                  prefixIcon: const Icon(Icons.location_city),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),

              //end
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'বাসা ভাড়া কত টাকা হলে আপনার সুবিধা ।',
                  prefixIcon: const Icon(Icons.bloodtype),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনার ফোন নাম্বার দিন',
                  prefixIcon: const Icon(Icons.phone),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                keyboardType: TextInputType.phone,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: 193.w,
                      height: 53.h,
                      decoration: BoxDecoration(
                          color: AppColors.appBarColor,
                          borderRadius: BorderRadius.circular(26.5.r)),
                      child: Center(
                          child: Text("Submit",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              )))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
