import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: Image.asset("assets/images/logo.png",
        height: 220.h,width: 180.w,)),
         Center(child: Text("Version: 1.2.6(+8)",style: TextStyle(fontSize: 12.sp,),)),
        Padding(
          padding:  EdgeInsets.only(left: 20.w,right: 10.w ,top: 10.h  ),
          child: Text("আপনার প্রয়োজনীয় জরুরি সেবার কথা মাথায় রেখে 'মৌলভীবাজার ই-সেবা' নামে এই অ্যাপটি তৈরি করা হয়েছে এবং এই অ্যাপ থেকে আপনারা জরুরী সেবা পাবেন..... ইনশাআল্লাহ",style: TextStyle(fontSize: 18.sp,),),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 32.w,top: 50.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Icon(Icons.facebook,size: 25.sp,color: Colors.blue,),
            SizedBox(width: 10.w,),
            Text("http://facebook.com/bondhusoft",style: TextStyle(color: Colors.blue,fontSize: 16.sp),)
          ],),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 32.w,top: 50.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Icon(Icons.public,size: 25.sp,color: Colors.blue,),
            SizedBox(width: 10.w,),
            Text("http://bondhusoft.com",style: TextStyle(color: Colors.blue,fontSize: 16.sp),)
          ],),
        )
      ],),
    );
  }
}