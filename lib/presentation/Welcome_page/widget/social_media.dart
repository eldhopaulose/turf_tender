import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaContainer extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final VoidCallback onTap;

  SocialMediaContainer({
    required this.imagePath,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10).w,
        child: Container(
          height: 47.h,
          width: 47.w,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50).w,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(width: 17.w, height: 17.h),
              ),
              Positioned(
                left: 8,
                top: 7,
                right: 7,
                bottom: 7,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
