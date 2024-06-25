import 'package:b_baria_e_mart/data/source/jonurnalist_data.dart';
import 'package:b_baria_e_mart/ui/screens/journalist/widget/reuse_container.dart';

import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JonurnalistPage extends StatelessWidget {
  const JonurnalistPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () { Get.back();}, // Define what happens when the back button is pressed
      appbarTitle: "সাংবাদিক",
      bodyItem: () {
        return ListView.builder(
          itemCount: jonurlistdatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerJonurnalistPage(
                titleOne: jonurlistdatalist[index].textOne,
                titleTwo: jonurlistdatalist[index].textTwo,
                titleThree: jonurlistdatalist[index].textThree);
          },
        );
      },
    );
  }
}
