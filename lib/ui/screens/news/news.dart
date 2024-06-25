
import 'package:b_baria_e_mart/data/source/news_data.dart';

import 'package:b_baria_e_mart/ui/screens/news/widgets/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {
       Get.back();
      }, // Define what happens when the back button is pressed
      appbarTitle: "পত্রিকা",
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
                    itemCount: gridlistnewsdata.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        // onTap: () => Get.to(screenList[index]),
                        child: NewsGridContainer(
                          iconPathData: gridlistnewsdata[index].iconPath,
                          title: gridlistnewsdata[index].text,
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
