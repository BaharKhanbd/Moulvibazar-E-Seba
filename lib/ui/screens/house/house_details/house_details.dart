import 'package:b_baria_e_mart/data/source/house_data.dart';

import 'package:b_baria_e_mart/ui/screens/house/house_details/widgets/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HouseDetailsPage extends StatelessWidget {
  const HouseDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
         Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "বাসা ভাড়া",
      bodyItem: () {
        return ListView.builder(
          itemCount: housedatalist.length,
          itemBuilder: (context, index) {
            return HouseDetailsContainer(
              titleOne: housedatalist[index].textOne,
              titleTwo: housedatalist[index].textTwo,
              titleThree: housedatalist[index].textThree,
              titleFour: housedatalist[index].textFour,
              titleFive: housedatalist[index].textFive,
              titleSix: housedatalist[index].textSix,
              titleSeven: housedatalist[index].textSeven,
              titleEight: housedatalist[index].textEight,
            );
          },
        );
      },
    );
  }
}
