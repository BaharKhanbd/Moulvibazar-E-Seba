import 'package:b_baria_e_mart/data/source/london_express_data.dart';
import 'package:b_baria_e_mart/ui/screens/bus/london_express/widgets/reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LondonExpressPage extends StatelessWidget {
  const LondonExpressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () { Get.back();  }, 
      appbarTitle: 'লন্ডন এক্সপ্রেস', 
      bodyItem: () { 
        return  ListView.builder(
          itemCount: londonexpressbusdatalist.length,
          itemBuilder: (context, index) {
            return ReuseContainerLondonExpress(
          titleOne:londonexpressbusdatalist[index].textOne, 
          titleTwo: londonexpressbusdatalist[index].textTwo,);
          },
        );
       },);
  }
}