import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_tender/presentation/owner_register_page/owner_register.dart';
import 'package:turf_tender/presentation/user_register_page/user_register.dart';

class PopupContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20).w,
      ),
      child: Container(
        height: 176.h,
        width: 359.w,
        padding: EdgeInsets.all(16).w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSection(
              imagePath: 'images/triangle .png',
              text: 'Turf User',
              onTap: () {
                context.router.pushNamed('/userregister');
              },
            ),
            Container(
              height: 90.h,
              width: 1.w,
              color: Colors.grey,
            ),
            _buildSection(
              imagePath: 'images/ball.png',
              text: 'Turf Owner',
              onTap: () {
                context.router.pushNamed('/ownerregister');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String imagePath,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 68.h,
            width: 68.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15).w,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 19.sp,
              fontFamily: 'Fira Sans Condensed',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
