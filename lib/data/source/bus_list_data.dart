import 'package:b_baria_e_mart/ui/screens/bus/london_express/london_express_page.dart';


class BusListData {
  final String iconPathBus;
  final String text;
  final String arrowIcon;

  BusListData({
    required this.iconPathBus,
    required this.text,
    required this.arrowIcon
  });
}

final buslistdata = <BusListData>[
  BusListData(
    iconPathBus: 'assets/images/london.png',
     text: "লন্ডন এক্সপ্রেস",
     arrowIcon: "assets/icons/arrowback.svg",
     ),
  BusListData(
    iconPathBus: 'assets/images/ena.png', 
    text: "এনা পরিবহন",
    arrowIcon: "assets/icons/arrowback.svg"
    ),
  BusListData(
    iconPathBus: 'assets/images/shohagh.png', 
    text: "সোহাগ পরিবহন",
    arrowIcon: "assets/icons/arrowback.svg"
    ),
  BusListData(
      iconPathBus: 'assets/images/shyamoli.png',
       text: "শ্যামলী এক্সপ্রেস",
       arrowIcon: "assets/icons/arrowback.svg"
       ),
  BusListData(
      iconPathBus: 'assets/images/greenline.png', 
      text: "গ্রীন লাইন পরিবহন",
      arrowIcon: "assets/icons/arrowback.svg"
      ),
];

List<dynamic> screenListbus = [
  const LondonExpressPage(),
  const LondonExpressPage(),
  const LondonExpressPage(),
  const LondonExpressPage(),
  const LondonExpressPage(),
  const LondonExpressPage(),
];
