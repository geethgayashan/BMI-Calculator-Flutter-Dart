import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMICRD extends StatelessWidget {
  const BMICRD({
    Key? key,
    required this.title,
    required this.value,
    required this.child,
    required this.lable,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String title;
  final String value;
  final Widget child;
  final String lable;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.sp),
          color: Theme.of(context).primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16.0.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 64.0.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 7.0.sp,
              ),
              Text(
                lable,
                style: TextStyle(
                  fontSize: 16.0.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          child,
        ],
      ),
    );
  }
}
