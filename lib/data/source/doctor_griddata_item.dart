import 'package:b_baria_e_mart/ui/screens/doctor/eye/eye.dart';

class DoctorGridItem {
  final String iconPath;
  final String text;

  DoctorGridItem({
    required this.iconPath,
    required this.text,
  });
}

final doctorgridlist = <DoctorGridItem>[
  DoctorGridItem(
      iconPath: 'assets/icons/medicine.svg', text: "মেডিসিন বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/gynecologist.svg', text: "গাইনী বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/heart care.svg', text: "হৃদরোগ বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/orthopedic specialist.svg',
      text: "অর্থোপেডিক বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/mother.svg', text: "মা ও শিশু রোগ বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/dermatology.svg', text: "যৌন ও চর্ম বিশেষজ্ঞ"),
  DoctorGridItem(
      iconPath: 'assets/icons/ears.svg', text: "নাক, কান, গলা বিশেষজ্ঞ"),
  DoctorGridItem(iconPath: 'assets/icons/eye.svg', text: "চক্ষু বিশেষজ্ঞ"),
];

List<dynamic> doctorscreenList = [
  const EyePage(),
  const EyePage(),
  const EyePage(),
  const EyePage(),
  const EyePage(),
  const EyePage(),
  const EyePage(),
  const EyePage(),
];
