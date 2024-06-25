
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../data/source/ambulance_data.dart';
import 'widget/reuse_container_ambulancepage.dart';

class AmbulancePage extends StatelessWidget {
  const AmbulancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ReuseHomePage(
      onPressed: () {Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "এম্বুলেন্স",
      bodyItem: () {
        return ListView.builder(
              itemCount: ambulancedatalist.length,
              itemBuilder: (context, index) {
                return ReuseContainerAmbulancePage(
                    titleOne: ambulancedatalist[index].textOne,
                    titleTwo: ambulancedatalist[index].textTwo,
                    titleThree: ambulancedatalist[index].textThree,
                    
                    );
              },
            );
      },
    );
  }
}
