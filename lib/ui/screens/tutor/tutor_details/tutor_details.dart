import 'package:b_baria_e_mart/data/source/tutor_data.dart';

import 'package:b_baria_e_mart/ui/screens/tutor/tutor_details/widget/reuse_contianer.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TutorDetailsPage extends StatelessWidget {
  const TutorDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
          Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "টিউটর",
      bodyItem: () {
        return ListView.builder(
          itemCount: tutordatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerTutorDetailsPage(
              titleOne: tutordatalist[index].textOne,
              titleTwo: tutordatalist[index].textTwo,
              titleThree: tutordatalist[index].textThree,
              titleFour: tutordatalist[index].textFour,
              titleFive: tutordatalist[index].textFive,
              titleSix: tutordatalist[index].textSix,
              titleSeven: tutordatalist[index].textSeven,
            );
          },
        );
      },
    );
  }
}
