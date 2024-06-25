// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ReusebleContainer extends StatelessWidget {
//   const ReusebleContainer(
//       {super.key,
//       required this.text,
//       this.dateTime,
//       this.title,
//       this.count,
//       this.tasbih,
//       this.picker,
//       required this.color,
//       required this.height,
//       required this.width,
//       required this.textStyle,
//       required this.titleStyle});

//   final String text;
//   final String? title;
//   final String? tasbih;
//   final int? count;
//   final DateTime? dateTime;
//   final Widget? picker;
//   final Color color;
//   final double height;
//   final double width;
//   final TextStyle textStyle;
//   final TextStyle titleStyle;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       width: width,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(10.r),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             text,
//             style: textStyle,
//           ),
//           Text(
//             title.toString(),
//             style: titleStyle,
//           ),
//         ],
//       ),
//     );
//   }
// }
