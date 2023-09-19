import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({
    Key? key,
    this.iconColor = Colors.blueAccent,
    this.icon = Icons.window_rounded,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      width: double.infinity,
      height: 110.h,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Responsive App',
                  style: TextStyle(fontSize: 15.sp, color: Colors.red)),
              SizedBox(height: 10.h),
              Text(
                'Flutter allows you to create apps\nthat self-adapt',
                style: TextStyle(color: Colors.grey, fontSize: 10.sp),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Icon(icon, color: iconColor, size: 11),
                  FittedBox(
                    child: Text(
                      ' Aspect Ratio',
                      style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(flex: 1),
          SvgPicture.asset(
            'assets/report.svg',
            width: 80.h,
            height: 80.w,
          ),
        ],
      ),
    );
  }
}
