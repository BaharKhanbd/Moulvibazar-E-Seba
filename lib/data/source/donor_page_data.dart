import 'package:b_baria_e_mart/ui/screens/blood_donar/donor_details.dart/donor_details.dart';

class GridItemDonorPage {
  final String text;

  GridItemDonorPage({
    required this.text,
  });
}

final gridlistdonordata = <GridItemDonorPage>[
  GridItemDonorPage(text: "মৌলভীবাজার সদর"),
  GridItemDonorPage(text: "কুলাউড়া"),
  GridItemDonorPage(text: "শ্রীমঙ্গল"),
  GridItemDonorPage(text: "কমলগঞ্জ"),
  GridItemDonorPage(text: "জুড়ি"),
  GridItemDonorPage(text: "বড়লেখা"),
  GridItemDonorPage(text: "রাজনগর"),
];
List<dynamic> screenListDonorDetailsPage = [
  const DonorDetailsPage(),
  const DonorDetailsPage(),
  const DonorDetailsPage(),
  const DonorDetailsPage(),
  const DonorDetailsPage(),
  const DonorDetailsPage(),
  const DonorDetailsPage(),
];
