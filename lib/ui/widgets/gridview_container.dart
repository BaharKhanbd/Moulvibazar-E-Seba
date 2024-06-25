// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:islamer_alo/ui/widgets/text_style.dart';

// import '../../config/colors.dart';

// class GridCountContainer extends StatelessWidget {
//   const GridCountContainer(
//       {super.key,
//       required this.onTap,
//       required this.imageUrl,
//       required this.subHeadings});
//   final VoidCallback onTap;
//   final String imageUrl;
//   final String subHeadings;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Center(
//         child: Container(
//           height: 118.h,
//           width: 101.w,
//           decoration: BoxDecoration(
//               color: AppColors.deepGreen,
//               borderRadius: BorderRadius.circular(8.r)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(imageUrl),
//               SizedBox(
//                 height: 7.h,
//               ),
//               Text(
//                 subHeadings,
//                 style: subHeading,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
