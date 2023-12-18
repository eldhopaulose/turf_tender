import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserOwnerAvathar extends StatelessWidget {
  final String imagePath;

  UserOwnerAvathar({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ).w,
      child: Container(
        width: 84.w,
        height: 70.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10).w,
            border: Border.all(
              color: Colors.grey,
              width: 1.w,
            ),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.fill)),
      ),
    );
  }
}
