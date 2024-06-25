import 'package:b_baria_e_mart/data/source/donor_page_data.dart';
import 'package:b_baria_e_mart/ui/screens/blood_donar/widget/popup_sreen.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page_grid_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'widget/reuse_container.dart';

class BloodDonerPage extends StatefulWidget {
  const BloodDonerPage({super.key});

  @override
  State<BloodDonerPage> createState() => _BloodDonerPageState();
}

class _BloodDonerPageState extends State<BloodDonerPage> {
  @override
  Widget build(BuildContext context) {
    return ReuseHomePageGridItem(
      onPressed: () { Get.back();},
      appbarTitle: 'রক্তদাতা',
      bodyItem: () {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h),
              itemCount: gridlistdonordata.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () => Get.to(screenListDonorDetailsPage[index]),
                  child: ReuseContainerDonerPage(
                    title: gridlistdonordata[index].text,
                  ),
                );
              })),
        );
      },
      onPressedTwo: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const PopUpSreenBloodDonorPage(),
        );
      },
    );
  }
}
