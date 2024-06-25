
import 'package:b_baria_e_mart/data/source/eye_data.dart';

import 'package:b_baria_e_mart/ui/screens/doctor/eye/widgets/reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EyePage extends StatelessWidget {
  const EyePage({super.key, });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
        Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "ডাক্তার",
      bodyItem: () {
        return  ListView.builder(
              itemCount: eyedatalist.length,
              itemBuilder: (context, index) {
                return ReuseContainerEyePage(
                  titleOne: eyedatalist[index].textOne,
                  titleTwo: eyedatalist[index].textTwo,
                  titleThree: eyedatalist[index].textThree,
                  titleFour: eyedatalist[index].textFour,
                  titleFive: eyedatalist[index].textFive,
                  titleSix: eyedatalist[index].textSix,
                  titleSeven: eyedatalist[index].textSeven,
                );
              },
            );
      },
    );
  }
}
