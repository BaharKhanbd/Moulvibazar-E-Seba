import 'package:b_baria_e_mart/data/source/dental_data.dart';

import 'package:b_baria_e_mart/ui/screens/dental/widget/reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DentalDetailsPage extends StatelessWidget {
  const DentalDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "ডেন্টাল",
      bodyItem: () {
        return ListView.builder(
          itemCount: dentaldatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerDentalPage(
                titleOne: dentaldatalist[index].textOne,
                titleTwo: dentaldatalist[index].textTwo,
                titleThree: dentaldatalist[index].textThree);
          },
        );
      },
    );
  }
}
