import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final double top;
  final double height;
  final double width;
  final double radius;
  final Color color;
  final Widget widget;

  const Button(
      {Key? key,
      required this.top,
      required this.height,
      required this.width,
      required this.radius,
      required this.color,
      required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, top, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF5ED5A8).withOpacity(0.2),
                blurRadius: 16.r),
          ],
        ),
        height: height,
        width: width,
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}
