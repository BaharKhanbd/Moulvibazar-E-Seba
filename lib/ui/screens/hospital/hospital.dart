import 'package:b_baria_e_mart/data/source/hospital_data.dart';
import 'package:b_baria_e_mart/ui/screens/hospital/widgets/reuse_container_hospital_page.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
       Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "হাসপাতাল",
      bodyItem: () {
        return ListView.builder(
          itemCount: hospitaldatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerHospitalPage(
                titleOne: hospitaldatalist[index].textOne,
                titleTwo: hospitaldatalist[index].textTwo,
                titleThree: hospitaldatalist[index].textThree,
                titleFour: hospitaldatalist[index].textFour,
                );
          },
        );
      },
    );
  }
}
