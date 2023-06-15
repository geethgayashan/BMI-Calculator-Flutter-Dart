import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMICRD extends StatelessWidget {
  const BMICRD({
    Key? key,
    required this.title,
    required this.value,
    required this.child,
  }) : super(key: key);

  final String title;
  final String value;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.0.w,
      height: 180.0.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0.sp),
          color: Theme.of(context).primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16.0.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 64.0.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
