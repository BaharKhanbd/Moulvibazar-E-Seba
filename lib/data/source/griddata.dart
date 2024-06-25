import 'package:b_baria_e_mart/ui/screens/Lawyer/lawyer.dart';
import 'package:b_baria_e_mart/ui/screens/ambulance/ambulance.dart';
import 'package:b_baria_e_mart/ui/screens/blood_donar/blood_doner.dart';
import 'package:b_baria_e_mart/ui/screens/bus/bus.dart';
import 'package:b_baria_e_mart/ui/screens/dental/dental.dart';


import 'package:b_baria_e_mart/ui/screens/doctor/doctor.dart';
import 'package:b_baria_e_mart/ui/screens/e_seba/e_seba.dart';
import 'package:b_baria_e_mart/ui/screens/fire_service/fire_service.dart';
import 'package:b_baria_e_mart/ui/screens/hospital/hospital.dart';
import 'package:b_baria_e_mart/ui/screens/hotel/hotel.dart';
import 'package:b_baria_e_mart/ui/screens/house/house.dart';
import 'package:b_baria_e_mart/ui/screens/journalist/journalist.dart';
import 'package:b_baria_e_mart/ui/screens/news/news.dart';
import 'package:b_baria_e_mart/ui/screens/police/police.dart';
import 'package:b_baria_e_mart/ui/screens/rent_a_car/rent_a_car.dart';
import 'package:b_baria_e_mart/ui/screens/tutor/tutor.dart';

class GridItem {
  final String iconPath;
  final String text;

  GridItem({
    required this.iconPath,
    required this.text,
  });
}

final gridlist = <GridItem>[
  GridItem(iconPath: 'assets/icons/blood.svg', text: "রক্তদাতা"),
  GridItem(iconPath: 'assets/icons/e-seba.svg', text: "ই-সেবা"),
  GridItem(iconPath: 'assets/icons/news.svg', text: "টিউটর"),
  GridItem(iconPath: 'assets/icons/hospital.svg', text: "হাসপাতাল"),
  GridItem(iconPath: 'assets/icons/ambulance.svg', text: "এম্বুলেন্স"),
  GridItem(iconPath: 'assets/icons/firefighter.svg', text: "ফায়ার সার্ভিস"),
  GridItem(iconPath: 'assets/icons/police.svg', text: "থানা পুলিশ"),
  GridItem(iconPath: 'assets/icons/doctor.svg', text: "ডাক্তার"),
  GridItem(iconPath: 'assets/icons/dental.svg', text: "ডেন্টাল"),
  GridItem(iconPath: 'assets/icons/lawyer.svg', text: "আইনজীবী"),
  GridItem(iconPath: 'assets/icons/journalist.svg', text: "সাংবাদিক"),
  GridItem(iconPath: 'assets/icons/bus.svg', text: "বাস সেবা"),
  GridItem(iconPath: 'assets/icons/house.svg', text: "বাসা ভাড়া"),
  GridItem(iconPath: 'assets/icons/hotel.svg', text: "হোটেল"),
  GridItem(iconPath: 'assets/icons/car.svg', text: "রেন্ট-এ-কার"),
  GridItem(iconPath: 'assets/icons/rail.svg', text: "রেল সেবা"),
  GridItem(iconPath: 'assets/icons/news.svg', text: "পত্রিকা"),
];

List<dynamic> screenList = [
  const BloodDonerPage(),
  const ESebaPage(),
  const TutorPage(),
  const HospitalPage(),
  const AmbulancePage(),
  const FireServicePage(),
  const PolicePage(),
  const DoctorPage(),
  const DentalDetailsPage(),
  const LawyerPage(),
  const JonurnalistPage(),
  const BusPage(),
  const HousePage(),
  const Hotelpage(),
  const RentaCarPage(),
  const TutorPage(),
  const NewsPage(),
];
