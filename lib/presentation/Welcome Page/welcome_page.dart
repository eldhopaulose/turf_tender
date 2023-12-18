import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turf_tender/presentation/Welcome%20Page/widget/popup.dart';
import 'package:turf_tender/presentation/Welcome%20Page/widget/social_media.dart';

class MyHome extends StatefulWidget {
  MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _obscureText = true;
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 25).r,
                  child: Container(
                    height: 23.h,
                    width: 100.w,
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Color(0xFF3792C4),
                        fontSize: 19.sp,
                        fontFamily: 'Fira Sans Condensed',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15).r,
              child: Container(
                  height: 350.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/turf wall.jpeg'),
                    fit: BoxFit.fill,
                  ))),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25).r,
                  child: Container(
                    width: 80.w,
                    height: 30.h,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.sp,
                        fontFamily: 'Fira Sans Extra Condensed',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).r,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w400,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z0-9@.]")),
                  ],
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10).w)),
                ),
              ),
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).r,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Fira Sans Condensed',
                    fontWeight: FontWeight.w500,
                  ),
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10).w,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 59.h,
              width: 356.w,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 18).r,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10).w),
                        backgroundColor: Color(0xFF3792C4),
                        foregroundColor: Colors.white),
                    onPressed: () {
                      _showPopup();
                    },
                    child: Text(
                      'LOGIN NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Fira Sans Condensed',
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
            SizedBox(height: 21.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaContainer(
                    imagePath: 'images/facebook-f.png',
                    backgroundColor: Color(0xFF005CB1),
                    onTap: () {
                      print('fb tapped');
                    }),
                SocialMediaContainer(
                    imagePath: 'images/google.png',
                    backgroundColor: Color(0xFFCF3045),
                    onTap: () {
                      print('Google tapped');
                    }),
                SocialMediaContainer(
                    imagePath: 'images/apple.png',
                    backgroundColor: Colors.black,
                    onTap: () {
                      print('apple tappped');
                    }),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ));
  }

  void updatePasswordText() {
    if (_obscureText) {
      _passwordController.text =
          '*'.padRight(_passwordController.text.length, '*');
    }
  }

  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) => PopupContainer(),
    );
  }
}
