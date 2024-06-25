import 'package:b_baria_e_mart/data/source/bus_list_data.dart';
import 'package:b_baria_e_mart/ui/screens/bus/widgets/bus_reuse_container.dart';
import 'package:b_baria_e_mart/utlis/reuse_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusPage extends StatelessWidget {
  const BusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ReuseHomePage(
      onPressed: () {  Get.back();},
       appbarTitle: 'বাস সেবা', 
       bodyItem: () {  
return ListView.builder(
          itemCount: buslistdata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () => Get.to(screenListbus[index]),
              child: BusReuseContainer(
                imagepathbus: buslistdata[index].iconPathBus, 
                titleBusName:buslistdata[index].text, 
                arrowIcon: buslistdata[index].arrowIcon,
                
              ),
            );
          },
        );
       },);
  }
}