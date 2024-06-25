import 'package:b_baria_e_mart/data/source/doctor_griddata_item.dart';
import 'package:b_baria_e_mart/ui/screens/doctor/widgets/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
       Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "ডাক্তার",
      bodyItem: () {
        return Padding(
            padding: EdgeInsets.all(16.0.r),
            child: GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: doctorgridlist.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () => Get.to(doctorscreenList[index]),
                    child: DoctorGridContainer(
                      iconPathData: doctorgridlist[index].iconPath,
                      title: doctorgridlist[index].text,
                    ),
                  );
                })));
        // End
      },
    );
  }
}
