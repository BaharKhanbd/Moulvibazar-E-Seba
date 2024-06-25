import 'package:b_baria_e_mart/ui/screens/tutor/tutor_details/tutor_details.dart';

class GridItemTuotPage {
  final String text;

  GridItemTuotPage({
    required this.text,
  });
}

final gridlisttutodata = <GridItemTuotPage>[
  GridItemTuotPage(text: "মৌলভীবাজার সদর"),
  GridItemTuotPage(text: "কুলাউড়া"),
  GridItemTuotPage(text: "শ্রীমঙ্গল"),
  GridItemTuotPage(text: "কমলগঞ্জ"),
  GridItemTuotPage(text: "জুড়ি"),
  GridItemTuotPage(text: "বড়লেখা"),
  GridItemTuotPage(text: "রাজনগর"),
];
List<dynamic> screenListtutordetailspage = [
  const TutorDetailsPage(),
  const TutorDetailsPage(),
  const TutorDetailsPage(),
  const TutorDetailsPage(),
  const TutorDetailsPage(),
  const TutorDetailsPage(),
  const TutorDetailsPage(),
];
