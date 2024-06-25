
import 'package:b_baria_e_mart/ui/screens/house/house_details/house_details.dart';

class GridItemHousePage {
  final String text;

  GridItemHousePage({
    required this.text,
  });
}

final gridlisthousedata = <GridItemHousePage>[
  GridItemHousePage(text: "মৌলভীবাজার সদর"),
  GridItemHousePage(text: "কুলাউড়া"),
  GridItemHousePage(text: "শ্রীমঙ্গল"),
  GridItemHousePage(text: "কমলগঞ্জ"),
  GridItemHousePage(text: "জুড়ি"),
  GridItemHousePage(text: "বড়লেখা"),
  GridItemHousePage(text: "রাজনগর"),
];
List<dynamic> screenListhousedetailspage = [
  const HouseDetailsPage(),
  const HouseDetailsPage(),
  const HouseDetailsPage(),
  const HouseDetailsPage(),
  const HouseDetailsPage(),
  const HouseDetailsPage(),
  const HouseDetailsPage(),
];
