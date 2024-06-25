import 'package:b_baria_e_mart/data/source/e_seba_data.dart';

import 'package:b_baria_e_mart/ui/screens/e_seba/widgets/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ESebaPage extends StatelessWidget {
  const ESebaPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "ই-সেবা",
      bodyItem: () {
        return Column(
          children: [
            Expanded(
              child: Padding(
                 padding: EdgeInsets.all(16.0.r),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16.h,
                        crossAxisSpacing: 16.w),
                    itemCount: gridlisteseba.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        // onTap: () => Get.to(screenList[index]),
                        child: ESebaGridContainer(
                          iconPathData: gridlisteseba[index].iconPath,
                          title: gridlisteseba[index].text,
                        ),
                      );
                    })),
              ),
            ),
          ],
        );
        // End
      },
    );
  }
}
