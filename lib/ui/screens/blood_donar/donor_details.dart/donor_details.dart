
import 'package:b_baria_e_mart/data/source/blood_donor_data.dart';
import 'package:b_baria_e_mart/ui/screens/blood_donar/donor_details.dart/widget/reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DonorDetailsPage extends StatelessWidget {
  const DonorDetailsPage({super.key, });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "রক্তদাতা",
      bodyItem: () {
        return ListView.builder(
          itemCount: donorData.length,
          itemBuilder: (context, index) {
            return DonorDetailsContainer(
              titleOne: donorData[index].textOne,
              titleTwo: donorData[index].textTwo,
              titleThree: donorData[index].textThree,
              titleFlour: donorData[index].textFour,
            );
          },
        );
      },
    );
  }
}
