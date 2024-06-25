import 'package:b_baria_e_mart/data/source/lawyer_data.dart';
import 'package:b_baria_e_mart/ui/screens/Lawyer/widget/reuse_contaienr.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LawyerPage extends StatelessWidget {
  const LawyerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
         Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "আইনজীবী",
      bodyItem: () {
        return ListView.builder(
          itemCount: lawyerdatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerLawyerPage(
                titleOne: lawyerdatalist[index].textOne,
                titleTwo: lawyerdatalist[index].textTwo,
                titleThree: lawyerdatalist[index].textThree);
          },
        );
      },
    );
  }
}
