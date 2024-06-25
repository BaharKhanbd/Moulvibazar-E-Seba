import 'package:b_baria_e_mart/data/source/donor_page_data.dart';
import 'package:b_baria_e_mart/data/source/tutor_grid_data.dart';

import 'package:b_baria_e_mart/ui/screens/tutor/widget/popup_page.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page_grid_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'widget/reuse_container.dart';

class TutorPage extends StatefulWidget {
  const TutorPage({super.key});

  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  @override
  Widget build(BuildContext context) {
    return ReuseHomePageGridItem(
      onPressed: () {
       Get.back();
      },
      appbarTitle: 'টিউটর',
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
                  onTap: () => Get.to(screenListtutordetailspage[index]),
                  child: ReuseContainerTutorPage(
                    title: gridlisttutodata[index].text,
                  ),
                );
              })),
        );
      },
      onPressedTwo: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const TutorPopUpPage(),
        );
      },
    );
  }
}
