import 'package:b_baria_e_mart/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpSreenBloodDonorPage extends StatefulWidget {
  const PopUpSreenBloodDonorPage({super.key});

  @override
  State<PopUpSreenBloodDonorPage> createState() => _PopUpSreenBloodDonorPageState();
}

class _PopUpSreenBloodDonorPageState extends State<PopUpSreenBloodDonorPage> {
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
                  "রক্তদাতার তালিকায় যুক্ত হতে ফরমটি পূরণ করুন",
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
                  labelText: 'আপনার থানা কোথায়?',
                  prefixIcon: const Icon(Icons.policy),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              SizedBox(height: 10.h),
              // TextFormField(
              //   decoration: InputDecoration(
              //     labelText: 'আপনার রক্তের গ্রুপ কি?',
              //     prefixIcon: const Icon(Icons.location_city),
              //     border: const OutlineInputBorder(),
              //     fillColor: Colors.grey[200],
              //     filled: true,
              //   ),
              // ),
              //start
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                          child: Text("আপনার রক্তের গ্রুপ কি",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                              ))),
                      DropdownButton<String>(
                        value: selectedBloodType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedBloodType = newValue!;
                          });
                        },
                        items: [
                          'সিলেক্ট করুন',
                          'A+',
                          'B+',
                          'AB+',
                          'A-',
                          'B-',
                          'O+',
                          'O-',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
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
                  labelText: 'সর্বশেষ কখন রক্ত দিয়েছেন?',
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
