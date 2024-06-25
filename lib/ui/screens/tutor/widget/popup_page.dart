import 'package:b_baria_e_mart/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TutorPopUpPage extends StatefulWidget {
  const TutorPopUpPage({super.key});

  @override
  State<TutorPopUpPage> createState() => _TutorPopUpPageState();
}

class _TutorPopUpPageState extends State<TutorPopUpPage> {
  String selectedBloodType = 'সিলেক্ট করুন';
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
                  "টিউটর তালিকায় যুক্ত হতে ফরমটি পূরণ করুন",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনার নাম কি?',
                  prefixIcon: const Icon(Icons.person),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনার শিক্ষাগত যোগ্যতা কি?',
                  prefixIcon: const Icon(Icons.book),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনি কোন কোন বিষয়ে পড়াতে ইচ্ছুক?',
                  prefixIcon: const Icon(Icons.book),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনি কোন কোন শ্রেণীকে পড়াতে চান?',
                  prefixIcon: const Icon(Icons.lock_clock),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'সপ্তাহে কতদিন আপনি পড়াতে চান?',
                  prefixIcon: const Icon(Icons.lock_clock),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'আপনি কত ঘন্টা পড়াতে চান?',
                  prefixIcon: const Icon(Icons.lock_clock),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),

              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Center(
              //             child: Text("আপনি কত ঘন্টা পড়াতে চান?",
              //                 style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 16.sp,
              //                 ))),
              //         DropdownButton<String>(
              //           value: selectedBloodType,
              //           onChanged: (String? newValue) {
              //             setState(() {
              //               selectedBloodType = newValue!;
              //             });
              //           },
              //           items: [
              //             'সিলেক্ট করুন',
              //             '৩০ মিনিট',
              //             '৪৫ মিনিট',
              //             '১ ঘন্টা ৩০ মিনিট ',
              //             '২ ঘন্টা ৩০ মিনিট',
              //             '৩ ঘন্টা ৩০ মিনিট',
              //             'Custom',
              //           ].map<DropdownMenuItem<String>>((String value) {
              //             return DropdownMenuItem<String>(
              //               value: value,
              //               child: Text(value),
              //             );
              //           }).toList(),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // //end
              SizedBox(height: 10.h),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 12.w, right: 12.w, top: 8.h, bottom: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("আপনার থানা কোথায়?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          )),
                      SizedBox(width: 8.0.w),
                      DropdownButton<String>(
                        value: selectedBloodType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedBloodType = newValue!;
                          });
                        },
                        items: [
                          'সিলেক্ট করুন',
                          'মৌলভীবাজার সদর',
                          'কুলাউড়া',
                          'শ্রীমঙ্গল',
                          'কমলগঞ্জ',
                          'জুড়ি',
                          'বড়লেখা',
                          'রাজনগর',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              //end

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
