import 'package:b_baria_e_mart/data/source/fireservice_data.dart';

import 'package:b_baria_e_mart/ui/screens/fire_service/widget/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FireServicePage extends StatelessWidget {
  const FireServicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () { Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "ফায়ার সার্ভিস",
      bodyItem: () {
        return ListView.builder(
          itemCount: fireservicedatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerFireService(
              titleOne: fireservicedatalist[index].textOne,
              titleTwo: fireservicedatalist[index].textTwo,
            );
          },
        );
      },
    );
  }
}
