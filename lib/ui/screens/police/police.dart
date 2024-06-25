import 'package:b_baria_e_mart/data/source/police_data.dart';
import 'package:b_baria_e_mart/ui/screens/police/widget/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PolicePage extends StatelessWidget {
  const PolicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () { Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "থানা পুলিশ",
      bodyItem: () {
        return ListView.builder(
          itemCount: policedatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerPolice(
              titleOne: policedatalist[index].textOne,
              titleTwo: policedatalist[index].textTwo,
            );
          },
        );
      },
    );
  }
}
