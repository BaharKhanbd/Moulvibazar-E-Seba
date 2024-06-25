
import 'package:b_baria_e_mart/ui/screens/house/widgets/popup_sreen.dart';
import 'package:b_baria_e_mart/ui/screens/house/widgets/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page_grid_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/source/house_grid_data.dart';

class HousePage extends StatefulWidget {
  const HousePage({super.key});

  @override
  State<HousePage> createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {
  @override
  Widget build(BuildContext context) {
    return ReuseHomePageGridItem(
      onPressed: () {
        Get.back();
      },
      appbarTitle: 'বাসা ভাড়া',
      bodyItem: () {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h),
              itemCount: gridlisthousedata.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () => Get.to(screenListhousedetailspage[index]),
                  child: ReuseContainerHousePage(
                    title: gridlisthousedata[index].text,
                  ),
                );
              })),
        );
      },
      onPressedTwo: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const PopUpHouseSreen(),
        );
      },
    );
  }
}
