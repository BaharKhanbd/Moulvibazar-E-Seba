import 'package:b_baria_e_mart/data/source/rent_a_car_data.dart';
import 'package:b_baria_e_mart/ui/screens/rent_a_car/widgets/reuse_contaier.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RentaCarPage extends StatelessWidget {
  const RentaCarPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "রেন্ট-এ-কার",
      bodyItem: () {
        return ListView.builder(
          itemCount: cardatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerRentaCarPage(
                titleOne: cardatalist[index].textOne,
                titleTwo: cardatalist[index].textTwo,
                titleThree: cardatalist[index].textThree);
          },
        );
      },
    );
  }
}
