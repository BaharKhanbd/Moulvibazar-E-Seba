import 'package:b_baria_e_mart/data/source/hotel_data.dart';
import 'package:b_baria_e_mart/ui/screens/hotel/widgets/reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hotelpage extends StatelessWidget {
  const Hotelpage({super.key});

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: (){ Get.back();}, 
      appbarTitle: "হোটেল", 
      bodyItem: (){
        return  ListView.builder(
              itemCount: hoteldatalist.length,
              itemBuilder: (context, index) {
                return ReuseContainerHotelPage(
                    titleOne: hoteldatalist[index].textOne,
                    titleTwo: hoteldatalist[index].textTwo,
                    titleThree: hoteldatalist[index].textThree);
              },
            );
      }
    
    );
        
  }
}
